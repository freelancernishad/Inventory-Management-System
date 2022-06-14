<?php

namespace App\Http\Controllers\Api;

use DateTime;
use App\Models\Duepayment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Meneses\LaravelMpdf\Facades\LaravelMpdf;


class OrderController extends Controller
{
    public function all_order()
    {
    	$orders = DB::table('orders')
    				->join('customers', 'orders.customer_id', 'customers.id')

    				->select('customers.name', 'orders.*')
    				->orderBy('orders.id', 'desc')
    				->get();
    	return response()->json($orders);
    }

    public function todayOrder()
    {
    	$orders = DB::table('orders')
    				->join('customers', 'orders.customer_id', 'customers.id')
    				->where('orders.order_date', date('d/m/Y'))
    				->select('customers.name', 'orders.*')
    				->orderBy('orders.id', 'desc')
    				->get();
    	return response()->json($orders);
    }

    public function DueOrder($id)
    {
    	$orders = DB::table('orders')
    				->join('customers', 'orders.customer_id', 'customers.id')
    				->where('orders.customer_id', $id)
    				->where('orders.due','>', 0)
    				->select('customers.name', 'orders.*')
    				->orderBy('orders.id', 'desc')
    				->get();
    	return response()->json($orders);
    }

    public function DueOrderupdate(Request $request, $id)
    {
// dd($request->all());


        $order_id = $request->id;
        $customer_id = $request->customer_id;
        $pay = $request->pay;
        $due = $request->due;
        $payamount = $request->payamount;

        $totalpay = $pay+$payamount;
        $totalDue = $due-$payamount;

        $data = [
            'pay' => $totalpay,
            'due' => $totalDue,
            ];

        $duepaylist = [
            'customer_id' => $customer_id,
            'order_id' => $order_id,
            'payment_amount' => $payamount,
            'payBy' => $request->payBy,
            'pay_date' => date('d/m/Y'),
            'pay_month' => date('F'),
            'pay_year' => date('Y'),
            ];

        DB::table('orders')->where('id',$order_id)->update($data);
        Duepayment::create($duepaylist);
        return response()->json($customer_id);
    }

    public function monthOrder()
    {
    	$orders = DB::table('orders')
    				->join('customers', 'orders.customer_id', 'customers.id')
    				->where('orders.order_month', date('F'))
    				->select('customers.name', 'orders.*')
    				->orderBy('orders.id', 'desc')
    				->get();
    	return response()->json($orders);
    }
    public function yearOrder()
    {
    	$orders = DB::table('orders')
    				->join('customers', 'orders.customer_id', 'customers.id')
    				->where('orders.order_year', date('Y'))
    				->select('customers.name', 'orders.*')
    				->orderBy('orders.id', 'desc')
    				->get();
    	return response()->json($orders);
    }

    public function orders($id)
    {
    	$orders = DB::table('orders')
    				->join('customers', 'orders.customer_id', 'customers.id')
    				->where('orders.id', $id)
    				->select('customers.name', 'customers.phone', 'customers.address', 'orders.*')
    				->first();

    	return response()->json($orders);
    }

    public function orderDetails($id)
    {
    	$details = DB::table('order_details')
    				->join('products', 'order_details.product_id', 'products.id')
    				->where('order_details.order_id', $id)
    				->select('products.product_name', 'products.product_code', 'products.image', 'order_details.*')
    				->get();
    	return response()->json($details);
    }

    public function searchOrder(Request $request){
    	$orderdate = $request->date;
    	$newdate = new DateTime($orderdate);
    	$done = $newdate->format('d/m/Y');

    	$order = DB::table('orders')
    	->join('customers','orders.customer_id','customers.id')
    	->select('customers.name','orders.*')
    	->where('orders.order_date',$done)
    	->get();

    	return response()->json($orderdate);

    }





    public function invoice(Request $request,$id)
    {


        $orders = $this->orders($id);
        $orders = $orders->getContent();
        $orders = json_decode($orders);




        $orderDetails = $this->orderDetails($id);
        $orderDetails = $orderDetails->getContent();
        $orderDetails = json_decode($orderDetails);

//         print_r($orderDetails);
//  die();







        $fileName = 'Invoice-'.date('Y-m-d H:m:s');

        $data['fileName'] = $fileName;

        $pdf = LaravelMpdf::loadView('invoice',$data,compact('orders','orderDetails'));
        return $pdf->stream("$fileName.pdf");
        # code...
    }






}
