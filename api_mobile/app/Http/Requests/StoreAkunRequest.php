<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreAkunRequest extends FormRequest
{

    public function authorize()
    {
        return false;
    }

    public function rules()
    {
        return [
            'nama_lengkap' => ['required'],
            'email' => ['required'],
            'no_hp' => ['required'],
            'password' => ['required'],
        ];
    }
}
