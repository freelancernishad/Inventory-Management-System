<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Duepayment extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'order_id',
        'payment_amount',
        'payBy',
        'pay_date',
        'pay_month',
        'pay_year',

    ];

        /**
     * Get the order that owns the due.
     */
    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    /**
     * Get the customer that owns the due.
     */
    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

}
