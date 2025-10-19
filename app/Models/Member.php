<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;

    protected $fillable = [
        'number_id',
        'member_since',
        'central_committee_post',
        'central_committee_order',
        'district_committee_post',
        'divisions',
        'district',
        'inst_name',
        'inst_name_bn',
        'inst_address',
        'inst_address_bn',
        'inst_trade_license',
        'inst_bin',
        'inst_tin',
        'inst_telephone',
        'inst_mobile',
        'inst_img',
        'img',
        'name',
        'email',
        'blood_group',
        'name_bn',
        'gender',
        'contact',
        'home_address',
        'standing_committee',
        'm_status',
        'created_by',
        'updated_by'
    ];

    public function scopeActive($query){
        return $query->where('m_status',1);
    }

    public function createdBy(){
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }

    public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }
}
