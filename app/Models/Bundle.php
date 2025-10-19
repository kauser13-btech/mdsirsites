<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bundle extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'status',
        'is_display',
        'dependent_id',
        'dependent_text',
        'lang',
        'created_by',
        'updated_by'
    ];

    public function scopeActive($query){
        return $query->where('status',1);
    }

    public function posts(){
        return $this->hasMany(Post::class, 'bundle_id','id');
    }

    public function createdBy(){
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }

    public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }
}
