<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class InputFormRequest extends FormRequest
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
            //
            'name' => 'required|min:3|max:100',
            'price' => 'required',
        ];
    }
    public function messages(){
        return [
            'name.required'=>'name có 3 đến 100 kí tự',
            'name.min'=>'name có 3 đến 100 kí tự',
            'name.max'=>'name có 3 đến 100 kí tự',
            'price.required'=>'price từ 100 đến 1000000',
        ];
    }
}
