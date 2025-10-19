<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BecomeAMember extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'bn_f_name',
        'bn_l_name',
        'en_f_name',
        'en_l_name',
        'divisions',
        'district',
        'thana',
        'guardian',
        'organization',
        'mobile',
        'telephone',
        'address',
        'vat_number',
        'tin_number',
        'nid',
        'email',
        'trade_license',
        'tin_file',
        'image',
        'vat_file',
        'visiting_card_file',
        'nid_file',
        'company_file',
        'm_status'
    ];
}
