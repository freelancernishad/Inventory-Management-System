<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddBuyingPriceToCustomOrderDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('custom_order_details', function (Blueprint $table) {
            $table->decimal('buying_price', 8, 2)->after('product_quantity_type')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('custom_order_details', function (Blueprint $table) {
            $table->dropColumn('buying_price');
        });
    }
}
