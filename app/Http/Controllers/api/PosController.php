<?php
namespace App\Http\Controllers\api;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Exception;
class PosController extends Controller
{
    public function categoryProducts($id)
    {
        $categoryProducts = DB::table('products')->where('category_id', $id)->paginate(10);
        return response()->json($categoryProducts);
    }
    public function order(Request $request)
    {


        $request->validate([
            'customer_id' => 'required',
            'payBy' => 'required',
            'memo' => 'required'
        ]);




         $sms =  $request->sms;





         $customInvoice = $request->customInvoice;


         $last = DB::table('orders')->latest('id')->count();
         if($last==0){
             $orderId = str_pad(1, 5, '0', STR_PAD_LEFT);
         }else{
              $last = DB::table('orders')->latest('id')->first();
              $orderIdold = $last->orderId;
            $orderId =  $orderIdold+1;
         }


        $data = [];
        $data['orderId'] = $orderId;
        $data['customer_id'] = $request->customer_id;
        $data['qty'] = $request->qty;
        $data['sub_total'] = $request->sub_total;
        $data['discount'] = $request->discount;
        $data['vat'] = $request->vat;
        $data['total'] = $request->sub_total+$request->discount;
        $data['pay'] = $request->pay;
        $data['due'] = $request->due;
        $data['payBy'] = $request->payBy;
        $data['memo'] = $request->memo;
        $data['order_date'] = date('d/m/Y');
        $data['order_month'] = date('F');
        $data['order_year'] = date('Y');
        $order_id = DB::table('orders')->insertGetId($data);
        $cartContents = DB::table('pos')->get();
        $cartData = [];
        foreach ($cartContents as $content) {
            $cartData['order_id'] = $order_id;
            $cartData['product_id'] = $content->product_id;
            $cartData['product_quantity'] = $content->product_quantity;
            $cartData['product_price'] = $content->product_price;
            $cartData['buying_price'] = $content->buying_price;
            $cartData['sub_total'] = $content->sub_total;
            DB::table('order_details')->insert($cartData);
            DB::table('products')
                ->where('id', $content->product_id)
                ->update(['product_quantity' => DB::raw('product_quantity - ' . $content->product_quantity)]);
        }
        foreach ($customInvoice as $value) {

            $weight_quantity =  $value['weight_quantity'];
            // print_r($value['name']);
            $customdata['order_id'] = $order_id;

            $customdata['product_name'] = $value['name'];
            $customdata['product_quantity'] = $weight_quantity;
            $customdata['product_quantity_type'] = $value['weight_type'];
            $customdata['buying_price'] = $value['buyprice'];
            $customdata['product_price'] = $value['price'];
            $customdata['sub_total'] = $value['weight_quantity']*$value['price'];

            $customProductId = $value['id'];

            $customProduct = Product::find($customProductId);

            $product_quantity = $customProduct->product_quantity;



            if($weight_quantity>$product_quantity){
                return 'Custom Product Not Available';
            }
            if($product_quantity<1){
                return 'Custom Product Not Available';
            }


            $newqt = $product_quantity-$weight_quantity;

            $customProduct->update(['product_quantity'=>$newqt]);



            DB::table('custom_order_details')->insert($customdata);


            // print_r($customdata);
        }



        DB::table('pos')->delete();



        if($sms){
             $customer =  Customer::find($request->customer_id);
             $phone = $customer->phone;
             $deccription ='description';
             $messages = array();
                     array_push(
                         $messages,
                         [
                             "number" => '88' . int_bn_to_en($phone),
                             "message" => "$deccription"
                         ]
                     );
     $responsemessege = [];
             try {
                 $msgs = sendMessages($messages);
                 array_push($responsemessege,$msgs);

             } catch (Exception $e) {
                 array_push($responsemessege,$e->getMessage());
             }
         }


// return $responsemessege;

        dueCreate($order_id,$request->customer_id,$request->due);


        return response()->json($order_id);
    }
    public function todaySell(Request $request)
    {
        $date = $request->date;
        if($date){
            $date =date('d/m/Y', strtotime($request->date));
        }else{
            $date = date("d/m/Y");
        }


        $todaySell = DB::table('orders')->where('order_date', $date)->sum('sub_total');
        return response()->json($todaySell);
    }
    public function todayIncome(Request $request)
    {
        $date = $request->date;
        if($date){
            $date =date('d/m/Y', strtotime($request->date));
        }else{
            $date = date("d/m/Y");
        }

         $orders = DB::table('orders')->where('order_date', $date)->get();
$buying_price = 0;
$product_price = 0;
     foreach ($orders as $key => $value) {
        // print_r($value->id);


        $buy = DB::table('order_details')->where('order_id', $value->id)->get();
        foreach ($buy as $buying_prices) {
        // print_r($buying_prices);
        $buying_price += $buying_prices->buying_price*$buying_prices->product_quantity;
        $product_price += $buying_prices->product_price*$buying_prices->product_quantity;
        }

        // $product_price += DB::table('order_details')->where('order_id', $value->id)->sum('product_price');

     }
    //  return $product_price;
$todayIncome =  $product_price-$buying_price;

        return response()->json($todayIncome);
    }


    public function todayDue(Request $request)
    {
        $date = $request->date;
        if($date){
            $date =date('d/m/Y', strtotime($request->date));
        }else{
            $date = date("d/m/Y");
        }

        $todayDue = DB::table('orders')->where('order_date', $date)->sum('due');
        return response()->json($todayDue);
    }


    public function expenses(Request $request)
    {

        $date = $request->date;
        if($date){
            $date =date('Y-m-d', strtotime($request->date));
        }else{
            $date = date("Y-m-d");
        }


        $expenses = DB::table('expenses')->where('expense_date', $date)->sum('amount');
        return response()->json($expenses);
    }


    public function totalStock(Request $request)
    {
        $product_type = $request->product_type;
        $products = DB::table('products')->where('product_type',$product_type)->sum('product_quantity');
        return response()->json($products);
    }


    public function totalStockAmount(Request $request)
    {

        $product_type = $request->product_type;
        $products = DB::table('products')->where('product_type',$product_type)->get();
$total = 0;
foreach ($products as $key => $value) {
    $total += $value->buying_price*$value->product_quantity;
}


        return response()->json($total);
    }



    public function getAllData(Request $request)
    {
        $date = $request->date ? date('d/m/Y', strtotime($request->date)) : date("d/m/Y");
        $productType = $request->product_type ? $request->product_type : 'normal';

        // Today Sell
        $todaySell = DB::table('orders')->where('order_date', $date)->sum('sub_total');

        // Today Income
        $orders = DB::table('orders')->where('order_date', $date)->get();

        $buyingPrice = 0;
        $productPrice = 0;
        foreach ($orders as $value) {
            $buy = DB::table('order_details')->where('order_id', $value->id)->get();
            foreach ($buy as $buyingPrices) {
                $buyingPrice += $buyingPrices->buying_price * $buyingPrices->product_quantity;
                $productPrice += $buyingPrices->product_price * $buyingPrices->product_quantity;
            }
        }

        foreach ($orders as $value) {
            $buy2 = DB::table('custom_order_details')->where('order_id', $value->id)->get();
            foreach ($buy2 as $buyingPrices) {
                $buyingPrice += $buyingPrices->buying_price * $buyingPrices->product_quantity;
                $productPrice += $buyingPrices->product_price * $buyingPrices->product_quantity;
            }
        }


        $todayIncome = $productPrice - $buyingPrice;








        // Today Due
        $todayDue = DB::table('orders')->where('order_date', $date)->sum('due');

        // Total Dues
        $totalDues = DB::table('orders')->sum('due');

        // Expenses
        $expenseDate = $request->date ? date('Y-m-d', strtotime($request->date)) : date("Y-m-d");
        $expenses = DB::table('expenses')->where('expense_date', $expenseDate)->sum('amount');

        // Total Stock
        $totalStock = DB::table('products')->where('product_type', $productType)->sum('product_quantity');

        // Total Stock Amount
        $products = DB::table('products')->where('product_type', $productType)->get();
        $totalStockAmount = 0;
        foreach ($products as $value) {
            $totalStockAmount += $value->buying_price * $value->product_quantity;
        }

        // Custom Total Stock
        $customTotalStock = DB::table('products')->where('product_type', 'custom')->sum('product_quantity');

        // Custom Total Stock Amount
        $customProducts = DB::table('products')->where('product_type', 'custom')->get();
        $customTotalStockAmount = 0;
        foreach ($customProducts as $value) {
            $customTotalStockAmount += $value->buying_price * $value->product_quantity;
        }

        return response()->json([
            'todaySell' => $todaySell,
            'todayIncome' => $todayIncome,
            'todayDue' => $todayDue,
            'totalDues' => $totalDues,
            'expenses' => $expenses,
            'totalStock' => $totalStock,
            'totalStockAmount' => $totalStockAmount,
            'customTotalStock' => $customTotalStock,
            'customTotalStockAmount' => $customTotalStockAmount,
        ]);
    }






    public function stockOut(Request $request)
    {
        $stockOut = DB::table('products')->where('product_quantity', '<', 1)->get();
        return response()->json($stockOut);
    }
    function random_color_part()
    {
        return str_pad(dechex(mt_rand(0, 255)), 2, '0', STR_PAD_LEFT);
    }
    function random_color()
    {
        return $this->random_color_part() . $this->random_color_part() . $this->random_color_part();
    }
    public function monthlybar(Request $request)
    {
        $start = $request->start;
        $end = $request->end;
        $year = $request->year;
        $start = $month = strtotime("$start");
        $end = strtotime("$end");
        $data = [];
        $allmonth = [];
        $borderColor = [];
        $backgroundColor = [];
        $datas = [];
        while ($month < $end) {
            $months =  date('F', $month);
            $total = DB::table('orders')->where(['order_month' => $months, 'order_year' => $year])->sum('sub_total');
            // array_push($allmonth,"$months");
            array_push($data, "$total");
            // array_push($borderColor,"#".$this->random_color());
            // array_push($backgroundColor,"#".$this->random_color());
            $allmonth[$months] = $total;
            $month = strtotime("+1 month", $month);
        }
        $data2 = [];
        $allmonth2 = [];
        $borderColor2 = [];
        $backgroundColor2 = [];
        $yearold = $year - 1;
        $start2 = $request->start;
        $start2 = $month2 = strtotime("$start2");
        while ($month2 < $end) {
            $months2 =  date('F', $month2);

            $total2 = DB::table('orders')->where(['order_month' => $months2, 'order_year' => $yearold])->sum('sub_total');

            array_push($data2, "$total2");
            // print_r($total2);

            $month2 = strtotime("+1 month", $month2);

        }
        // dd($data2);
        array_push($borderColor, "#" . $this->random_color());
        array_push($backgroundColor, "#" . $this->random_color());
        array_push($borderColor2, "#" . $this->random_color());
        array_push($backgroundColor2, "#" . $this->random_color());
        $datas['allmonth'] = $allmonth;
        $arr = [
            'label' => $year,
            'backgroundColor' => $backgroundColor,
            'data' => $data,
            'borderColor' => $borderColor,
            'borderWidth' => 1
        ];
        $arr2 = [
            'label' => $year - 1,
            'backgroundColor' => $backgroundColor2,
            'data' => $data2,
            'borderColor' => $borderColor2,
            'borderWidth' => 1
        ];
        $datas['reports'] = (object)$arr;
        $datas['reports2'] = (object)$arr2;
        return response()->json($datas);
    }



    public function dailybar(Request $request)
    {
        $start = $request->start;
        $end = $request->end;
        $year = $request->year;
        $start = $month = strtotime("$start");
        $end = strtotime("$end");
        $data = [];
        $allmonth = [];
        $borderColor = [];
        $backgroundColor = [];
        $datas = [];

        while ($month <= $end) {

            $monthname =  date('F', $month);

             $months =  date('d/m/Y', $month);


            $total = DB::table('orders')->where(['order_date' => $months, 'order_year' => $year])->sum('sub_total');
            // array_push($allmonth,"$months");
            array_push($data, "$total");
            // array_push($borderColor,"#".$this->random_color());
            // array_push($backgroundColor,"#".$this->random_color());
            // $allmonth[$months] = $total;
            array_push($allmonth, $months);
            $month = strtotime("+1 day", $month);

        }
        array_push($borderColor, "#" . $this->random_color());
        array_push($backgroundColor, "#" . $this->random_color());


        // $datas['allmonth'] = $allmonth;
        $arr = [
            'label' => $monthname,
            'backgroundColor' => $backgroundColor,
            'data' => $data,
            'borderColor' => $borderColor,
            'borderWidth' => 1
        ];

        $datas['reports'] = (object)$arr;
        $datas['allmonth'] = $allmonth;
        return response()->json($datas);
    }
    public function yearslist(Request $request)
    {
        $type = $request->type;
        if($type=='year'){


       //year list
     $data = [];
        $cerrentYear = date('Y');
      $first = $cerrentYear+1-1;
        array_push($data,$first);
     for ($i=0; $i < 25; $i++) {
         $cerrentYear = $cerrentYear-1;
          array_push($data,$cerrentYear);
        //  echo $cerrentYear;
        //  echo "<br>";
     }
     return response()->json($data);
    }else if($type=='month'){
        $data = ["January","February","March","April","May","June","July","August","September","October","November","December"];
        return response()->json($data);
    }


    }
}
