<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UsefulLinks extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'url',
        'img',
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
