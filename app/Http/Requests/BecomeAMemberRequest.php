<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BecomeAMemberRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'bn_f_name' => 'required',
//            'bn_l_name' => 'required',
            'en_f_name' => 'required',
//            'en_l_name' => 'required',
            'divisions' => 'required',
            'district' => 'required',
            'thana' => 'required',
            'organization' => 'required',
            'mobile' => 'required',
//            'vat_number' => 'required',
//            'tin_number' => 'required',
            'nid' => 'required',
//            'email' => 'email',
            'trade_license'      => 'required|mimes:jpg,jpeg,png,pdf',
//            'tin_file'           => 'required|mimes:jpg,jpeg,png,pdf',
            'image'              => 'required|mimes:jpg,jpeg,png',
//            'vat_file'           => 'required|mimes:jpg,jpeg,png,pdf',
//            'visiting_card_file' => 'required|mimes:jpg,jpeg,png,pdf',
            'nid_file'           => 'required|mimes:jpg,jpeg,png,pdf',
//            'company_file'       => 'required|mimes:jpg,jpeg,png,pdf',
        ];
    }

    public function messages()
    {
        return [
            // 'name.required' => 'Display Name is required',
        ];
    }
}
