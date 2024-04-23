<?php

namespace App\Http\Controllers\api;

use DateTime;
use PDF;
use App\Models\Duepayment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Meneses\LaravelMpdf\Facades\LaravelMpdf;
use Rakibhstu\Banglanumber\NumberToBangla;

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
            ->where('orders.due', '>', 0)
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

        $totalpay = $pay + $payamount;
        $totalDue = $due - $payamount;

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

        DB::table('orders')->where('id', $order_id)->update($data);
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


    public function custom_order_details($id)
    {
        $details = DB::table('custom_order_details')
            ->where('custom_order_details.order_id', $id)
            ->select('custom_order_details.*')
            ->get();
        return response()->json($details);
    }




    public function orderduepay($id)
    {

        $datacount = DB::table('duepayments')->where('order_id', $id)->count();
        if ($datacount > 0) {
            $details = DB::table('duepayments')
                ->join('orders', 'duepayments.order_id', 'orders.id')
                ->join('customers', 'duepayments.customer_id', 'customers.id')
                ->where('duepayments.order_id', $id)
                ->select('customers.*', 'orders.*', 'duepayments.*')
                ->get();
        } else {
            $details = 0;
        }


        return response()->json($details);
    }

    public function searchOrder(Request $request)
    {
        $orderdate = $request->date;
        $newdate = new DateTime($orderdate);
        $done = $newdate->format('d/m/Y');

        $order = DB::table('orders')
            ->join('customers', 'orders.customer_id', 'customers.id')
            ->select('customers.name', 'orders.*')
            ->where('orders.order_date', $done)
            ->get();

        return response()->json($orderdate);
    }





    public function invoice(Request $request, $id)
    {


        $orders = $this->orders($id);
        $orders = $orders->getContent();
        $orders = json_decode($orders);




        $orderDetails = $this->orderDetails($id);
        $orderDetails = $orderDetails->getContent();
        $orderDetails = json_decode($orderDetails);



        $custom_order_details = $this->custom_order_details($id);
        $custom_order_details = $custom_order_details->getContent();
        $custom_order_details = json_decode($custom_order_details);


        $duepaymets = $this->orderduepay($id);
        $duepaymets = $duepaymets->getContent();
        $duepaymets = json_decode($duepaymets);

        $numto = new NumberToBangla();
        $amount = $numto->bnMoney($orders->sub_total);
        $fileName = 'Invoice-' . date('Y-m-d H:m:s').'.pdf';
        $data['fileName'] = $fileName;
        $memo = $orders->memo;
         $logo =  base64('m.png');



         $customer_id = $orders->customer_id;

          $allOrders = DB::table('orders')
         ->where('customer_id', $customer_id)
         ->select('due')
         ->get();
         $totalDue = 0;
         foreach ($allOrders as $value) {
            $totalDue += $value->due;
         }

      

      $allDuePayments = DB::table('duepayments')
         ->where('customer_id', $customer_id)
         ->select('payment_amount','pay_date')
         ->get();

         $todayPay = 0;
         $totalDuePay = 0;
         foreach ($allDuePayments as $value) {
            $totalDuePay += $value->payment_amount;

            $order_date = strtotime($orders->order_date);
            $pay_date = strtotime($value->pay_date);

            if($order_date==$pay_date){
                $todayPay = $value->payment_amount;
            }

         }

     
         $nowCustomerDue = $totalDue;




        $datas = [
            'orders'=>$orders,
            'orderDetails'=>$orderDetails,
            'duepaymets'=>$duepaymets,
            'amount'=>$amount,
            'custom_order_details'=>$custom_order_details,
            'logo'=>$logo,
            'nowCustomerDue'=>$nowCustomerDue,
            'todayPay'=>$todayPay,
        ];


        if ($memo == 'memo1') {
            $html = invoice1($datas, 'right');
            return  PdfMaker('A4-L', $html, $fileName);
        } else if ($memo == 'memo2') {

            $html = invoice2($datas, 'right');
            // return  PdfMaker('A4-L', $html, $fileName);

            $header = header3($datas);
            $html = invoice3($datas, 'right');
            $footer = footer3($datas);

            // $html = '<h1>body</h1>';

            return  PdfMakerwithHeader('A4', $html,$header,$footer, $fileName);
        }




    }





}
