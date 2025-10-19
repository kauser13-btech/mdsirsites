<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

use Auth;

class BundleRequest extends FormRequest
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
                    'name'    =>'required',
                ];
                break;
            case 'PUT':
            case 'PATCH':
                return [
                    'name'    =>'required',
                ];
                break;
            case 'DELETE':
                return [];
                break;
            default:break;
        }

    }
}
