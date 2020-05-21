<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Request\InputFormRequest;
use App\templates;
use Illuminate\Support\Facades\DB;
class FormdemoController extends Controller
{
    //
	public function getoutput(){
		$templates=templates::all();
		$templates = DB::table('templates')->paginate(10);
		return view('form.formoutput',['templates'=>$templates]);
	}

	public function getinput(){
		return view('form.forminput');
	}
	public function postinput(Request  $request){
		$validatedData = $request->validate([
			'templates_type_id'=>'required',
			'name' => 'required|min:3|max:100',
            'price' => 'required|numeric|min:100|max:1000000',
            'height'=>'required|numeric|min:10',
            'width'=>'required|numeric|min:10',
		]);
		$templates = new templates;
		$templates->templates_type_id=$request->templates_type_id;
		$templates->image_front_url=$request->image_front_url;
		$templates->tenplate_border_url=$request->tenplate_border_url;
		$templates->name=$request->name;
		$templates->thumbnail=$request->thumbnail;
		$templates->description=$request->description;
		$templates->price=$request->price;
		$templates->height=$request->height;
		$templates->width=$request->width;
		$templates->comment_text=$request->comment_text;
		$templates->save();
		return redirect('form/formoutput');
	}
}
