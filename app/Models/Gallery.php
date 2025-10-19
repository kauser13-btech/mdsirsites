<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use HasFactory;

    protected $fillable = [
    	'id',
    	'name',
    	'name_bangla',
	    'caption',
	    'cover_photo',
	    'keywords',
	    'description',
	    'order_by',
	    'event_date',
	    'edit_at',
	    'status',
	    'created_by',
	    'updated_by',
	];

	public function scopeIsActive($query){
        return $query->where('status',1);
    }

    public function photo(){
        return $this->hasMany(Photo::class, 'gallery_id','id')->orderBy('photo_order','desc');
    }

	public function createdBy(){
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }

	public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }
}
