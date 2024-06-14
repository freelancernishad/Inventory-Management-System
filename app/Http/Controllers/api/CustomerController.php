<?php

namespace App\Http\Controllers\api;

use Carbon\Carbon;
use App\Models\Due;
use App\Models\Customer;
use App\Models\Duepayment;
use Illuminate\Http\Request;
use App\Services\DateService;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class CustomerController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $type = $request->type;
if($type==''){
    $customers = Customer::orderBy('id','DESC')->get();
}else{
    $customers = Customer::where('email',$type)->orderBy('id','DESC')->get();
}

        return response()->json($customers);
    }

    public function CustomerDue(Request $request,$id)
    {

        $order = DB::table('orders')->where(['customer_id'=>$id])->sum('due');
        return response()->json($order);
    }
    public function DueCuatomer(Request $request)
    {
        $type = $request->type;

         $row = DB::table('customers')

        // ->join('orders', 'customers.id', '=', 'orders.customer_id')
        ->join ('orders', function ($query) {
            $query->on('customers.id', '=', 'orders.customer_id')
             ->limit(1);
        })

        ->select('customers.*', 'customers.id')
        ->distinct('customers.id')
        ->where(['email' => $type])
        ->where('orders.due','>',0)
        ->get();
        // $order = DB::table('orders')->where('customer_id',$id)->sum('due');



         return response()->json($row);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:80',
            // 'email' => 'required',
            'phone' => 'required|unique:customers',
        ]);

        if ($request->photo) {
            $position = strpos($request->photo, ';');
            $sub = substr($request->photo, 0, $position);
            $ext = explode('/', $sub)[1];

            $name = time().'.'.$ext;
            $img = Image::make($request->photo)->resize(240, 200);

            $upload_path = 'backend/customer/';
            $image_url = $upload_path.$name;
            $img->save($image_url);

            $customer = new Customer;
            $customer->name = $request->name;
            $customer->email = $request->email;
            $customer->phone = $request->phone;
            $customer->address = $request->address;
            $customer->photo = $image_url;
            $customer->save();
        } else {
            $customer = new Customer;
            $customer->name = $request->name;
            $customer->email = $request->email;
            $customer->phone = $request->phone;
            $customer->address = $request->address;
            $customer->save();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $customer = Customer::findOrFail($id);
        return response()->json($customer);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|max:80',
            // 'email' => 'required',
            'phone' => 'required',
        ]);

        $customer = Customer::findOrFail($id);
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->address = $request->address;

        if ($image = $request->newPhoto) {
            $position = strpos($image, ';');
            $sub = substr($image, 0, $position);
            $ext = explode('/', $sub)[1];

            $name = time().'.'.$ext;
            $img = Image::make($image)->resize(240, 200);

            $upload_path = 'backend/customer/';
            $image_url = $upload_path.$name;
            $img->save($image_url);

            if ($customer->photo) {
                unlink($customer->photo);

                $customer->photo = $image_url;
                $customer->save();
            } else {
                $customer->photo = $image_url;
                $customer->save();
            }

        } else {
            $customer->save();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $customer = Customer::findOrFail($id);
        $photo = $customer->photo;

        if ($photo) {
            unlink($photo);
            $customer->delete();
        }else{
            $customer->delete();
        }
    }





    public function search(Request $request)
    {

        $data = $request->data;


        $columns = ['name','phone'];
        $result =  Customer::select('*');
                foreach($columns as $column)
                {
                  $result->orWhere($column, 'like','%'.$data.'%');
                }
       $data = $result->get();

        return response()->json($data);
    }


    public function getDues(Request $request)
    {
        $query = Due::query()
            ->with(['order', 'customer']);

        if ($request->has('date')) {
            $date = $request->input('date');
            $query->whereDate('due_date', $date);
        }

        // Paginate the results
        $dues = $query->orderBy('id','desc')->paginate(20);

        // Use DateService to format due_date
         $formattedDues = DateService::formatDueDates($dues->items());

        // Replace the items in the paginated result with formatted ones
        $dues->setCollection(collect($formattedDues));
        $totalDue = $dues->getCollection()->sum('due_amount');

        return response()->json(['dues'=>$dues,'total_due'=>$totalDue]);
    }

    public function getPaidList(Request $request)
    {
        $query = Duepayment::query()
            ->with(['order', 'customer']);

        if ($request->has('date')) {

            $date = date('d/m/Y',strtotime($request->input('date')));
            $query->where('pay_date', $date);
        }

        // Paginate the results
        $paid = $query->orderBy('id','desc')->paginate(20);

        // Calculate total paid amount
        $totalPaid = $paid->sum('payment_amount');

        // Return response with paginated results and total paid amount
        return response()->json(['paid' => $paid, 'total_Paid' => $totalPaid]);
    }




}

