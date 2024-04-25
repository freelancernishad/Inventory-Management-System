<?php

function invoice1($datas, $float)
{
    $orders = $datas->orders;
    $orderDetails = $datas->orderDetails;
    $duepaymets = $datas->duepaymets;
    $amount = $datas->amount;
    $custom_order_details = $datas->custom_order_details;
    $logo = $datas->logo;


    $html = "

    <style>
    @page {
        margin: 10px;
       }

    .memoborder{
        width: 49%;
    }

    .memobg {

        padding: 10px;
        position: relative;
        background: linear-gradient(42deg, rgba(163, 92, 33, 1) 0%, rgba(147, 61, 83, 1) 11%, rgba(67, 120, 108, 1) 24%, rgba(28, 140, 194, 1) 33%, rgba(88, 132, 157, 1) 42%, rgba(135, 119, 143, 1) 51%, rgba(162, 87, 145, 1) 61%, rgba(180, 126, 20, 1) 71%, rgba(190, 155, 49, 1) 80%, rgba(195, 113, 90, 1) 89%, rgba(111, 137, 52, 1) 98%);
        /* padding: 3px; */

    }
    .memo {
    //    width: 500px;
    //    margin:0 auto;
    //    padding:20px;
        background: white;

    }



    .memoHead {
        text-align: center;
        color:#444B8F
    }
    h1.companiname {
        transform: scaleX(2);
        margin:0;
    }
    p {

        color:#444B8F;
        margin:0;

    }div {

        color:#444B8F;
        margin:0;

    }
    p.defalttext.address {
        background:#444B8F;
        width: 269px;
        margin: 0 auto;
        color: white;
        border-radius: 50px;
        padding: 2px 0px;
    }
    p.defalttext {
        font-weight: 600;
        font-size: 16px;
        margin: 0;
        /* transform: scaleX(1.2); */

    }


    thead tr {
        background: #444B8F;
    }
    thead tr th {
        color: white;
    }

    tr {
        border: 1px solid #444B8F;
    }

    th {
        border: 1px solid #444B8F;
        border-right: 1px solid white;
    }

    td {
        border: 1px solid #444B8F;
    }
    table,  td {
      border: 1px solid #444B8F;
      border-collapse: collapse;
      text-align: center;
      color:#444B8F;
    }th, {
      border: 1px solid white;
      border-collapse: collapse;
    }

    td {
        height: 18.5px;

    }
    .slNo{
        float: right;
        width: 300px;
    }
    </style>


<div id='body'>

<div class='memoborder' style='float:$float' >
<div class='memobg memobg1'>
        <div class='memo'>
        <div class='memoHead'>
        <h1 class='companiname'>মেসার্স এলাহী ট্রেডার্স</h1>
        <p class='defalttext'>প্রোঃ শাহ্‌ আলম</p>
        <p class='defalttext'>বি. সি. আই. সি. অনুমদিত সার দিলার</p>
        <p class='defalttext address'>কালীগঞ্জ বাজার, দেবিগঞ্জ, পঞ্চগড় </p>
        <p class='defalttext'>মোবাইল নং : ০১৭৪০৯২৯৩০২ </p>

        <div style='display:flex; margin-top:20px'>

        </div>

    </div>

            <div class='memobody' style='position: relative;'>
                <table width='100%' style='border: 1px solid #2F77A5;margin-bottom:20px' cellspacing='0'>
                    <tr>
                        <td style='background:#2F77A5;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;border-bottom:1px solid #2F77A5;text-align:left'
                            class='defaltfont'>নাম</td>
                        <td style='border-bottom:1px solid #2F77A5;padding-left:6px;color:#2F77A5;text-align:left'
                            class='defaltfont'>$orders->name</td>
                        <td width='10%'
                            style='background:#2F77A5;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;border-bottom:1px solid #2F77A5;text-align:left'
                            class='defaltfont'>ক্রমিক নং</td>
                        <td width='20%' style='border-bottom:1px solid #2F77A5;padding-left:6px;color:#2F77A5;text-align:left'
                            class='defaltfont'> $orders->orderId</td>
                    </tr>
                    <tr>
                        <td style='background:#935E6C;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;text-align:left'
                            class='defaltfont'>ঠিকানা</td>
                        <td class='defaltfont' style='padding-left:6px;color:#2F77A5;text-align:left'> $orders->address</td>
                        <td style='background:#935E6C;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;text-align:left'
                            class='defaltfont'>তারিখ</td>
                        <td class='defaltfont' style='padding-left:6px;color:#2F77A5;text-align:left'>$orders->order_date
                        </td>
                    </tr>
                </table>
                <div class='productDetails'>
                    <table class='table' style='border:1px solid #444B8F;width:100%' cellspacing='0'>
                        <thead class='thead'>
                            <tr class='tr'>
                                <th class='th defaltfont' width='10%'>সংখ্যা</th>
                                <th class='th defaltfont' width='45%'>বিবরন</th>
                                <th class='th defaltfont' width='15%'>পরিমান</th>
                                <th class='th defaltfont' width='15%'>দর</th>
                                <th class='th defaltfont' width='15%'>টাকা</th>
                            </tr>
                        </thead>
                        <tbody class='tbody'>";


    $subtotal = $orders->sub_total;
    $totalpay = $orders->pay;
    $totaldue = $orders->due;
    $index = 1;

    foreach ($orderDetails as $product) {
        $html .= "  <tr class='tr'>
                                    <td class='td defaltfont'>" . int_en_to_bn($index) . "</td>
                                    <td class='td defaltfont'>$product->product_name</td>
                                    <td class='td defaltfont'>$product->product_quantity</td>
                                    <td class='td defaltfont'>$product->product_price</td>
                                    <td class='td defaltfont'>$product->sub_total</td>
                                </tr>";

        $index++;
        // $subtotal += $product->pay;

    }
    foreach ($custom_order_details as $productCustom) {
        $html .= " <tr class='tr'>
                                    <td class='td defaltfont'>" . int_en_to_bn($index) . "</td>
                                    <td class='td defaltfont'>$productCustom->product_name</td>
                                    <td class='td defaltfont'>$productCustom->product_quantity
                                        $productCustom->product_quantity_type</td>
                                    <td class='td defaltfont'>$productCustom->product_price</td>
                                    <td class='td defaltfont'>$productCustom->sub_total</td>
                                </tr>";

        $index++;
        // $subtotal += $productCustom->pay;

    };

    $totalrow = 16 - $index;
    for ($i = 0; $i < $totalrow; $i++) {
        $html .= " <tr class='tr'>
                                    <td class='td defaltfont'>" . int_en_to_bn($i + $index) . "</td>
                                    <td class='td defaltfont'></td>
                                    <td class='td defaltfont'></td>
                                    <td class='td defaltfont'></td>
                                    <td class='td defaltfont'></td>
                                </tr>";
    }



    $html .= " </tbody>
                        <tfoot class='tfoot'>";

    if ($duepaymets == 0) {



        $html .= "
                        <tr class='tr'>
                        <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> মোট </p></td>
                        <td class='td defaltfont'>$subtotal</td>
                        </tr>
                        <tr class='tr'>
                                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> জমা </p></td>
                                <td class='td defaltfont'>$totalpay</td>
                        </tr>
                        <tr class='tr'>
                                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> বাকি </p></td>
                                <td class='td defaltfont'>$totaldue</td>
                        </tr>

                        ";
    } else {


        $previousDue = 0;

        foreach ($duepaymets as $duepaymet) {
            $previousDue += $duepaymet->payment_amount;
        }
        $payable = $orders->pay - $previousDue;

        $html .= "
                        <tr class='tr'>
                        <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> মোট </p></td>
                        <td class='td defaltfont'>$subtotal</td>
                </tr>
                        <tr class='tr'>
                                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> $orders->order_date </p></td>
                                <td class='td defaltfont'>$payable</td>
                        </tr>";
        foreach ($duepaymets as $duepaymet) {
            $html .= " <tr class='tr'>
                            <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> $duepaymet->pay_date </p></td>
                            <td class='td defaltfont'>$duepaymet->payment_amount</td>
                             </tr>";
        }



        $html .= " <tr class='tr'>
                                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> বাকি </p></td>
                                <td class='td defaltfont'>$totaldue</td>
                        </tr>


                        ";
    };







    $html .= " </tfoot>
                    </table>
                    <p style='margin-top:15px;padding:0 15px' class='defaltfont'>কথাই : $amount</p>
                </div>
            </div>
            <div class='memofooter' style='margin-top:25px'>
                <p style='float:left;width:30%;padding:10px 15px' class='defaltfont'>ক্রেতার সাক্ষর</p>
                <p style='float:right;width:30%;text-align:right;padding:10px 15px' class='defaltfont'>বিক্রেতার
                    সাক্ষর</p>
            </div>
        </div>
    </div>
    </div>
    </div>



    ";


    return $html;
}



function invoice2($datas, $float)
{


    $orders = $datas['orders'];
    $orderDetails = $datas['orderDetails'];
    $duepaymets = $datas['duepaymets'];
    $amount = $datas['amount'];
    $custom_order_details = $datas['custom_order_details'];
     $logo = $datas['logo'];

    $html = "

    <style>
    @page {
     margin: 12px;
    }
    .memoborder{
        width: 49%;
    }


        .memobg {

            padding: 10px;
            position: relative;
            background: linear-gradient(42deg, rgba(163, 92, 33, 1) 0%, rgba(147, 61, 83, 1) 11%, rgba(67, 120, 108, 1) 24%, rgba(28, 140, 194, 1) 33%, rgba(88, 132, 157, 1) 42%, rgba(135, 119, 143, 1) 51%, rgba(162, 87, 145, 1) 61%, rgba(180, 126, 20, 1) 71%, rgba(190, 155, 49, 1) 80%, rgba(195, 113, 90, 1) 89%, rgba(111, 137, 52, 1) 98%);
            /* padding: 3px; */

        }
        .memo {
            /* width: 500px; */
            /* margin: 0 auto; */
            /* padding:20px; */
            background: white;
        }
        .memoHead {
            text-align: center;
            color: #444B8F
        }
        h1.companiname {
            transform: scaleX(2);
            margin: 0;
            color: #C7554D;
        }
        p {
            color: #2F77A5;
            margin: 0;
        }
        div {
            color: #2F77A5;
            margin: 0;
        }
        p.defalttext.name {
            background: #6A4B5A;
            width: 269px;
            margin: 0 auto;
            color: white;
            border-radius: 50px;
            padding: 2px 0px;
        }
        p.defalttext.address {
            background: #D25664;
            width: 100%;
            margin: 0 auto;
            color: white;
            padding: 2px 0px;
        }
        p.defalttext {
            font-weight: 600;
            font-size: 13px;
            margin: 0;
            /* transform: scaleX(1.2); */
        }
        .thead .tr {
            background: #3F6D49;
        }
        .thead .tr .th {
            color: white;
        }
        .tr {
            border: 1px solid #2F77A5;
        }
        .th {
            border: 1px solid #444B8F;
            border-right: 1px solid white;
        }
        .td {
            border: 1px solid #2F77A5;
        }
        .table,
        .td {
            border: 1px solid #2F77A5;
            border-collapse: collapse;
            text-align: center;
            color: #2F77A5;
        }
        .th,
            {
            border: 1px solid white;
            border-collapse: collapse;
        }
        .td {
            height: 18.5px;
        }
        .slNo {
            float: right;
            width: 300px;
        }
        .addLebel {
            position: fixed;
            left: 2em;
        }
        .defaltfont {
            font-size: 12px;
        }
        /* .posisionfixed{
    position: fixed;
    top: 50px;
    left:0;
} */
    </style>
<div id='body'>


    <div class='memoborder' style='float:$float' >
    <div class='memobg memobg1'>
        <div class='memo'>
            <div class='memoHead'>
            <p class='defalttext'>বিসমিল্লাহির রাহমানির রাহিম</p>
            <table>
                <tr>
                    <td width='170px'><img style='position:fixed;width:50px;top:0px;left:0px' src='" . $logo . "'></td>
                    <td><h1 class='companiname'> মেসার্স &nbsp;রনি &nbsp;ট্রেডার্স</h1></td>
                </tr>
            </table>



                <p class='defalttext name'>প্রোঃ মোঃ হাছেন আলী </p>
                <p class='defalttext'>এখানে রাসায়নিক সার কীটনাশক ও বীজ বিক্রিয় করা হয়</p>
                <p class='defalttext address'>কালীগঞ্জ বাজার, দেবিগঞ্জ, পঞ্চগড় </p>
                <p class='defalttext' style='color:#6A4B5A'>মোবাইল নং : ০১৭৪০৯২৯৩০২, ০১৭৮৫৪৯৪২১৬ </p>
            </div>
            <div class='memobody' style='position: relative;'>
                <table width='100%' style='border: 1px solid #2F77A5;margin-bottom:20px' cellspacing='0'>
                    <tr>
                        <td style='background:#2F77A5;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;position: fixed;top:0px;border-bottom:1px solid #2F77A5;'
                            class='defaltfont'>নাম</td>
                        <td style='border-bottom:1px solid #2F77A5;padding-left:6px;color:#2F77A5'
                            class='defaltfont'>$orders->name</td>
                        <td width='10%'
                            style='background:#2F77A5;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;position: fixed;top:0px;border-bottom:1px solid #2F77A5'
                            class='defaltfont'>ক্রমিক নং</td>
                        <td width='20%' style='border-bottom:1px solid #2F77A5;padding-left:6px;color:#2F77A5'
                            class='defaltfont'> $orders->orderId</td>
                    </tr>
                    <tr>
                        <td style='background:#935E6C;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;position: fixed;top:0px'
                            class='defaltfont'>ঠিকানা</td>
                        <td class='defaltfont' style='padding-left:6px;color:#2F77A5'> $orders->address</td>
                        <td style='background:#935E6C;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;position: fixed;top:0px'
                            class='defaltfont'>তারিখ</td>
                        <td class='defaltfont' style='padding-left:6px;color:#2F77A5'>$orders->order_date
                        </td>
                    </tr>
                </table>
                <div class='productDetails'>
                    <table class='table' style='border:1px solid #444B8F;width:100%' cellspacing='0'>
                        <thead class='thead'>
                            <tr class='tr'>
                                <th class='th defaltfont' width='10%'>সংখ্যা</th>
                                <th class='th defaltfont' width='45%'>বিবরন</th>
                                <th class='th defaltfont' width='15%'>পরিমান</th>
                                <th class='th defaltfont' width='15%'>দর</th>
                                <th class='th defaltfont' width='15%'>টাকা</th>
                            </tr>
                        </thead>
                        <tbody class='tbody'>";


    $subtotal = $orders->sub_total;
    $totalpay = $orders->pay;
    $totaldue = $orders->due;
    $index = 1;

    foreach ($orderDetails as $product) {
        $html .= "  <tr class='tr'>
                                    <td class='td defaltfont'>" . int_en_to_bn($index) . "</td>
                                    <td class='td defaltfont'>$product->product_name</td>
                                    <td class='td defaltfont'>$product->product_quantity</td>
                                    <td class='td defaltfont'>$product->product_price</td>
                                    <td class='td defaltfont'>$product->sub_total</td>
                                </tr>";
        $index++;
        // $subtotal += $product->sub_total;
    }

    foreach ($custom_order_details as $productCustom) {
        $html .= " <tr class='tr'>
                                    <td class='td defaltfont'>" . int_en_to_bn($index) . "</td>
                                    <td class='td defaltfont'>$productCustom->product_name</td>
                                    <td class='td defaltfont'>$productCustom->product_quantity
                                        $productCustom->product_quantity_type</td>
                                    <td class='td defaltfont'>$productCustom->product_price</td>
                                    <td class='td defaltfont'>$productCustom->sub_total</td>
                                </tr>";

        $index++;
        // $subtotal += $productCustom->sub_total;
    };

    $totalrow = 19 - $index;
    for ($i = 0; $i < $totalrow; $i++) {
        $html .= " <tr class='tr'>
                                <td class='td defaltfont'>" . int_en_to_bn($i + $index) . "</td>
                                <td class='td defaltfont'></td>
                                <td class='td defaltfont'></td>
                                <td class='td defaltfont'></td>
                                <td class='td defaltfont'></td>
                            </tr>";
    }





    $html .= " </tbody>
                        <tfoot class='tfoot'>";

    if ($duepaymets == 0) {



        $html .= "
                        <tr class='tr'>
                        <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> মোট </p></td>
                        <td class='td defaltfont'>$subtotal</td>
                         </tr>
                        <tr class='tr'>
                                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> জমা </p></td>
                                <td class='td defaltfont'>$totalpay</td>
                        </tr>
                        <tr class='tr'>
                                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> বাকি </p></td>
                                <td class='td defaltfont'>$totaldue</td>
                        </tr>

                        ";
    } else {


        $previousDue = 0;

        foreach ($duepaymets as $duepaymet) {
            $previousDue += $duepaymet->payment_amount;
        }
        $payable = $orders->pay - $previousDue;

        //         $html .="
        //         <tr class='tr'>
        //         <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> মোট </p></td>
        //         <td class='td defaltfont'>$subtotal</td>
        // </tr>

        //     <tr class='tr'>

        //   <td>জমা</td>
        // <td  colspan='4' class='td defaltfont'>

        //     <b> $orders->order_date :</b> $payable টাকা";
        //     foreach($duepaymets as $duepaymet){
        //         $html .=" <b> $duepaymet->pay_date :</b> $duepaymet->payment_amount টাকা";

        //       };

        //     $html .=" </td></td>";





        $html .= "
                    <tr class='tr'>
                    <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> মোট </p></td>
                    <td class='td defaltfont'>$subtotal</td>
            </tr>
                    <tr class='tr'>
                            <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> $orders->order_date </p></td>
                            <td class='td defaltfont'>$payable</td>
                    </tr>";
        foreach ($duepaymets as $duepaymet) {
            $html .= " <tr class='tr'>
                        <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> $duepaymet->pay_date </p></td>
                        <td class='td defaltfont'>$duepaymet->payment_amount</td>
                         </tr>";
        }










        $html .= " <tr class='tr'>
                                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> বাকি </p></td>
                                <td class='td defaltfont'>$totaldue</td>
                        </tr>


                        ";
    };
    $html .= " </tfoot>
                    </table>
                    <p style='margin-top:20px;padding:0 15px' class='defaltfont'>কথাই : $amount</p>
                </div>
            </div>
            <div class='memofooter' style='margin-top:25px'>
                <p style='float:left;width:30%;padding:10px 15px' class='defaltfont'>ক্রেতার সাক্ষর</p>
                <p style='float:right;width:30%;text-align:right;padding:10px 15px' class='defaltfont'>বিক্রেতার
                    সাক্ষর</p>
            </div>
        </div>
    </div>
    </div>

</div>


    ";








    return $html;
}
function header3($datas){
    $logo = $datas['logo'];
    $orders = $datas['orders'];

    $html = "



    <div class='memoHead' style='text-align: center;color: #444B8F;line-height:22px'>
        <p class='defalttext' style='margin:0'>বিসমিল্লাহির রাহমানির রাহিম</p>
        <table>
            <tr>
                <td width='240px'><img style='position:fixed;width:50px;top:0px;left:0px' src='" . $logo . "'></td>
                <td><h1 class='companiname' style='color:#955564'> মেসার্স &nbsp;রনি &nbsp;ট্রেডার্স</h1></td>
            </tr>
        </table>



        <p class='defalttext name' style='background: #6A4B5A;width: 269px;margin: 0 auto;color: white;border-radius: 50px;padding: 3px 0px 3px 0px;'>প্রোঃ মোঃ হাছেন আলী </p>
        <p class='defalttext' style='margin:0'>এখানে রাসায়নিক সার কীটনাশক ও বীজ বিক্রিয় করা হয়</p>
        <p class='defalttext address' style='background: #D25664;width: 100%;margin: 0 auto;color: white;padding: 3px 0px 3px 0px;'>কালীগঞ্জ বাজার, দেবিগঞ্জ, পঞ্চগড় </p>
        <p class='defalttext' style='color:#6A4B5A;margin:0'>মোবাইল নং : ০১৭৪০৯২৯৩০২, ০১৭৮৫৪৯৪২১৬ </p>
    </div>





    <table width='100%' style='border: 1px solid #2F77A5;margin-bottom:20px' cellspacing='0'>
    <tr style='border-bottom:1px solid black'>

        <td style='background:#2F77A5;padding:10px 5px;color:white;width:15%;float:left;border-bottom:1px solid #2F77A5  !important;'>নাম</td>

        <td style='border-bottom:1px solid #2F77A5 !important;padding-left:6px;color:#2F77A5;font-size:13px'>$orders->name</td>

        <td width='10%' style='background:#2F77A5;padding:10px 5px;color:white;width:15%;float:left;border-bottom:1px solid #2F77A5 !important'>ক্রমিক নং</td>

        <td width='20%' style='border-bottom:1px solid #2F77A5 !important;padding-left:6px;color:#2F77A5;font-size:13px' > $orders->orderId</td>
    </tr>
    <tr>
        <td style='background:#935E6C;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;position: fixed;top:0px'
            >ঠিকানা</td>
        <td  style='padding-left:6px;color:#2F77A5;font-size:13px'> $orders->address</td>
        <td style='background:#935E6C;padding:10px 5px;color:white;padding:5px 5px;width:15%;float:left;position: fixed;top:0px'
            >তারিখ</td>
        <td  style='padding-left:6px;color:#2F77A5;font-size:13px'>$orders->order_date
        </td>
    </tr>
</table>

<table width='100%'>
    <tr>
        <td width='25%'></td>
        <td width='50%' style='color:white;background:#955564;width:20px;margin:0 auto;text-align:center'><h6 >Page - {PAGENO}/{nb}</h6> </td>
        <td width='25%'></td>
    </tr>
</table>






    ";
    return $html;


}function footer3($datas){

    $orders = $datas['orders'];
    $orderDetails = $datas['orderDetails'];
    $duepaymets = $datas['duepaymets'];
    $amount = $datas['amount'];
    $custom_order_details = $datas['custom_order_details'];
     $logo = $datas['logo'];
     $nowCustomerDue = $datas['nowCustomerDue'];
     $todayPay = $datas['todayPay'];

     $subtotal = $orders->sub_total;
     $totalpay = $orders->pay;
     $totaldue = $orders->due;

    $html ="
    <div>
    <table width='100%'>
        <tr>
            <td style='text-align:center;background:red;color:white;'><h2>বাকী, জমা এবং মোট</h2></td>
        </tr>
    </table>


    <table width='100%'>";


$html .= " <tr class='tr'>
        <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> মোট </p></td>
        <td class='td defaltfont'>" . int_en_to_bn($subtotal) . "</td>
         </tr>


        <tr class='tr'>
                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> কথায় </p></td>
                <td class='td defaltfont'>$amount</td>
        </tr>



        <tr class='tr'>
                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p>  জমা </p></td>
                <td class='td defaltfont'>" . int_en_to_bn($totalpay) . "</td>
        </tr>







        <tr class='tr'>
                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> বাকি </p></td>
                <td class='td defaltfont'>" . int_en_to_bn($totaldue) . "</td>
        </tr>

        <tr class='tr'>
                <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> $orders->name এর মোট বাকী </p></td>
                <td class='td defaltfont'>" . int_en_to_bn($nowCustomerDue) . "</td>
        </tr>

        ";

//         <tr class='tr'>
//         <td colspan='4' class='defalttext td defaltfont'style='text-align:right;    padding: 0 13px;'><p> আজকে পূর্বের বাকী জমা </p></td>
//         <td class='td defaltfont'>" . int_en_to_bn($todayPay) . "</td>
// </tr>

$html .= "</table>

</div>
";









    $html .= "           <div  style='padding-top:50px'>
    <p style='float:left;width:30%;padding:10px 15px' class='defaltfont'>ক্রেতার সাক্ষর</p>
    <p style='float:right;width:30%;text-align:right;padding:10px 15px' class='defaltfont'>বিক্রেতার
        সাক্ষর</p>
</div>";
return $html;

}
function invoice3($datas, $float)
{


    $orders = $datas['orders'];
    $orderDetails = $datas['orderDetails'];
    $duepaymets = $datas['duepaymets'];
    $amount = $datas['amount'];
    $custom_order_details = $datas['custom_order_details'];
     $logo = $datas['logo'];
     $nowCustomerDue = $datas['nowCustomerDue'];
     $todayPay = $datas['todayPay'];

    $html = "

    <style>






        p {
            color: #2F77A5;
            margin: 0;
        }

        div {
            color: #2F77A5;
            margin: 0;
        }



        p.defalttext {
            font-weight: 600;
            font-size: 16px;
            margin: 0;
            /* transform: scaleX(1.2); */
        }

        .thead .tr {
            background: #3F6D49;
        }

        .thead .tr .th {
            color: white;
        }
        .tr {
            border: 1px solid #2F77A5;
        }
        .th {
            border: 1px solid #444B8F;
            border-right: 1px solid white;
        }
        .td {
            border: 1px solid #2F77A5;
        }
        .table,
        .td {
            border: 1px solid #2F77A5;
            border-collapse: collapse;
            text-align: center;
            color: #2F77A5;
        }
        .th,
            {
            border: 1px solid white;
            border-collapse: collapse;
        }
        .td {
            height: 18.5px;

        }
        .slNo {
            float: right;
            width: 300px;
        }
        .addLebel {
            position: fixed;
            left: 2em;
        }
        .defaltfont {
            font-size: 14px;
        }
        /* .posisionfixed{
    position: fixed;
    top: 50px;
    left:0;
} */
    </style>

    

                <div class='productDetails' >
                    <table class='table' style='border:1px solid #444B8F;width:100%' cellspacing='0'>
                        <thead class='thead'>
                            <tr class='tr'>
                                <th class='th defaltfont' width='10%'>সংখ্যা</th>
                                <th class='th defaltfont' width='45%'>বিবরন</th>
                                <th class='th defaltfont' width='15%'>পরিমান</th>
                                <th class='th defaltfont' width='15%'>দর</th>
                                <th class='th defaltfont' width='15%'>টাকা</th>
                            </tr>
                        </thead>
                        <tbody class='tbody'>";


    $subtotal = $orders->sub_total;
    $totalpay = $orders->pay;
    $totaldue = $orders->due;
    $index = 1;

    foreach ($orderDetails as $product) {
        $html .= "  <tr class='tr'>
                                    <td class='td defaltfont'>" . int_en_to_bn($index) . "</td>
                                    <td class='td defaltfont'>$product->product_name</td>
                                    <td class='td defaltfont'>" . int_en_to_bn($product->product_quantity) . "</td>
                                    <td class='td defaltfont'>" . int_en_to_bn($product->product_price) . "</td>
                                    <td class='td defaltfont'>" . int_en_to_bn($product->sub_total) . "</td>
                                </tr>";
        $index++;
        // $subtotal += $product->sub_total;
    }

    foreach ($custom_order_details as $productCustom) {
        $html .= " <tr class='tr'>
                                    <td class='td defaltfont'>" . int_en_to_bn($index) . "</td>
                                    <td class='td defaltfont'>$productCustom->product_name</td>
                                    <td class='td defaltfont'>" . int_en_to_bn($productCustom->product_quantity) . "
                                        $productCustom->product_quantity_type</td>
                                    <td class='td defaltfont'>" . int_en_to_bn($productCustom->product_price) . "</td>
                                    <td class='td defaltfont'>" . int_en_to_bn($productCustom->sub_total) . "</td>
                                </tr>";

        $index++;
        // $subtotal += $productCustom->sub_total;
    };


    if($index<=20){
        $totalrow = 21 - $index;
    }elseif($index<=40){
        $totalrow = 41 - $index;
    }elseif($index<=60){
        $totalrow = 61 - $index;
    }elseif($index<=80){
        $totalrow = 81 - $index;
    }elseif($index<=100){
        $totalrow = 101 - $index;
    }elseif($index<=120){
        $totalrow = 121 - $index;
    }elseif($index<=140){
        $totalrow = 141 - $index;
    }elseif($index<=160){
        $totalrow = 161 - $index;
    }elseif($index<=180){
        $totalrow = 181 - $index;
    }else{
        $totalrow = 201 - $index;
    }


    for ($i = 0; $i < $totalrow; $i++) {
        $html .= " <tr class='tr'>
                                <td class='td defaltfont'>" . int_en_to_bn($i + $index) . "</td>
                                <td class='td defaltfont'></td>
                                <td class='td defaltfont'></td>
                                <td class='td defaltfont'></td>
                                <td class='td defaltfont'></td>
                            </tr>";
    }





    $html .= " </tbody>
                        <tfoot class='tfoot'>";

    $html .= " </tfoot>
                    </table>


                </div>";
    return $html;
}
