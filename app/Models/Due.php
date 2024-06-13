<?php
namespace App\Models;
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Due extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'order_id',
        'customer_id',
        'due_amount',
        'status',
        'due_date',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'due_date' => 'datetime',
    ];

    /**
     * Set default values for attributes.
     *
     * @var array
     */


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
