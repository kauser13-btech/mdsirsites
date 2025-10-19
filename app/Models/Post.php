<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $primaryKey = 'nid';

    protected $fillable = [
        'n_solder',
        'n_head',
        'n_subhead',
        'title_info',
        'slug',
        'tags',
        'source_id',
        'news_link',
        'bundle_id',
        'gallery_id',
        'is_primary',
        'category',
        'meta_keyword',
        'meta_description',
        'home_lead',
        'n_details',
        'main_image',
        'details_main_image',
        'n_caption',
        'main_video',
        'embedded_code',
        'n_date',
        'start_at',
        'n_status',
        'order_by',
        'most_read',
        'created_by',
        'updated_by',
        'is_deleted',
        'deleted_by',
        'deleted_at',
        'restore_by'
    ];

    public function scopeIsPrimary($query){
        return $query->where('is_primary',1);
    }

    public function scopeIsActive($query){
        return $query->where('n_status',3);
    }

    public function scopeIsDeleted($query){
        return $query->where('is_deleted', 0);
    }

    public function deletedBy(){
        return $this->belongsTo(User::class, 'deleted_by');
    }

    public function createdBy(){
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }

    public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }

    public function bundle(){
        return $this->belongsTo(Bundle::class, 'bundle_id')->withDefault();
    }

    public function source(){
        return $this->belongsTo(Source::class, 'source_id')->withDefault();
    }

    public function gallery(){
        return $this->belongsTo(Gallery::class, 'gallery_id')->withDefault();
    }

}
