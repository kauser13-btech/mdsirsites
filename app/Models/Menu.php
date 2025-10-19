<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

	protected $primaryKey = 'm_id';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
		'm_name',
		'slug',
		'm_edition',
		'm_title',
		'm_keywords',
		'm_desc',
		'm_parent',
		'm_order',
		'm_status',
		'm_visible',
		'm_color',
		'm_bg',
		'created_by',
		'updated_by',
		'is_deleted',
		'deleted_by',
		'deleted_at',
    ];

	public function scopeIsDeleted($query){
		return $query->where('is_deleted', 0);
	}

	public function createdBy(){
        return $this->belongsTo(User::class, 'created_by');
    }

	public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by');
    }

    public function parentName(){
        return $this->hasOne(Menu::class, 'm_parent');
    }
}
