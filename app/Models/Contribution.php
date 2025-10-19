<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contribution extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'name_bangla',
        'source_id',
        'cover_photo',
        'type',
        'order_by',
        'status',
        'created_by',
        'updated_by'
    ];

    public function scopeActive($query){
        return $query->where('status',1);
    }

    public function source(){
        if ($this->type == 1)
            return $this->hasMany(Post::class, 'id','source_id');
        elseif ($this->type == 2)
            return $this->hasMany(Gallery::class, 'id','source_id');
        else
            return $this->hasMany(Gallery::class, 'id','source_id');

    }
//
//    public function gallery(){
//        return $this->hasMany(Gallery::class, 'id','source_id')->where('type', 3);
//    }
//
//    public function bundle(){
//        return $this->hasMany(Bundle::class, 'id','source_id')->where('type', 3);
//    }

    public function createdBy(){
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }

    public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }
}
