<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StallRequest extends FormRequest
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
            'f_name' => 'required',
            'l_name' => 'required',
            'mobile' => 'required',
            'organization' => 'required',
            'address' => 'required',
            'divisions' => 'required',
            'district' => 'required',
            'thana' => 'required',
            'stalls_number' => 'required',
            'tin_number' => 'required',
            'nid_number' => 'required',
            'email' => 'required|email',
        ];
    }
}
