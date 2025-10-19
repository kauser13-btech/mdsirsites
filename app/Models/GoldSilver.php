<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GoldSilver extends Model
{
    use HasFactory;

    protected $fillable = [
        'karat',
        'text',
        'price',
        'img',
        'type',
        'g_order',
        'created_by',
        'updated_by'
    ];
    
    public function createdBy(){
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }

    public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }
}
