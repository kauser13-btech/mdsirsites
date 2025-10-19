<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Award extends Model
{
	use HasFactory;

	protected $fillable = [
		'name',
		'name_bangla',
		'type',
		'cover_photo',
		'description',
		'order_by',
		'received_date',
		'received_from',
		'edit_at',
		'status',
		'created_by',
		'updated_by',
	];

	public function scopeIsActive($query)
	{
		return $query->where('status', 1);
	}

	public function createdBy()
	{
		return $this->belongsTo(User::class, 'created_by')->withDefault();
	}

	public function updatedBy()
	{
		return $this->belongsTo(User::class, 'updated_by')->withDefault();
	}
}
