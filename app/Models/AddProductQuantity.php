<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AddProductQuantity extends Model
{
    use HasFactory;
    protected $fillable = ['product_id', 'date', 'quantity', 'pre_quantity', 'current_quantity'];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
