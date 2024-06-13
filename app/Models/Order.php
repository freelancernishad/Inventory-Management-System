<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'orderId',
        'customer_id',
        'qty',
        'sub_total',
        'discount',
        'vat',
        'total',
        'pay',
        'due',
        'payBy',
        'memo',
        'order_date',
        'order_month',
        'order_year',
    ];

    public function dues()
    {
        return $this->hasMany(Due::class);
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
}
