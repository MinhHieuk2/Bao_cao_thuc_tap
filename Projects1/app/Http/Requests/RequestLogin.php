<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RequestLogin extends FormRequest
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

    public function rules()
    {
        return [
            'email'     => 'required|email',
            'password'  => 'required',
        ];
    }

    public function messages()
    {
        return [
            'email.required'         => 'Vui lòng nhập email',
            'email.email'            => 'Email không đúng định dạng',
            'password.required'      => 'Vui lòng nhập mật khẩu',
        ];
    }
}
