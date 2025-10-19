<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Source extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'name',
        'base_url',
        'status',
        'is_eng',
        'is_major',
        'created_by',
        'updated_by'
    ];

    public function scopeActive($query){
        return $query->where('status',1);
    }

    public function createdBy(){
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }

    public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }
}
