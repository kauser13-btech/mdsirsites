<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stall extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'f_name',
        'l_name',
        'mobile',
        'organization',
        'address',
        'divisions',
        'district',
        'thana',
        'stalls_number',
        'tin_number',
        'nid_number',
        'email',
        's_year',
        's_status',
        'send_at',
        'edit_at',
        'updated_by',
    ];

    public function updatedBy(){
        return $this->belongsTo(User::class, 'updated_by')->withDefault();
    }
}
