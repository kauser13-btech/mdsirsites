<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'text',
        'link',
        'img',
        'start_date',
        's_status',
        'created_by',
        'updated_by'
    ];

    public function scopeActive($query){
        return $query->where('s_status',1)->where('start_date', '<=', date('Y-m-d H:i:s'));
    }

    public function createdBy(){
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }

    public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }
}
