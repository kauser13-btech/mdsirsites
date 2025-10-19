<?php

namespace App\Http\Requests;

use Auth;
use Illuminate\Foundation\Http\FormRequest;

class MemberRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        if (Auth::user()->role == 'subscriber') {
            return false;
        }
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch($this->method()){
            case 'POST':
                return [
                    'number_id' => 'required|unique:members',
                ];
                break;
            case 'PUT':
            case 'PATCH':
                return [
                    'number_id' => 'required|unique:members,number_id,'.$this->segment(3),
                ];
                break;
            case 'DELETE':
                return [];
                break;
            default:break;
        }
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'number_id.unique' => 'The Member id has already been taken.',
        ];
    }
}
