<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\templates;
use Illuminate\Support\Facades\DB;
class FormdemoController extends Controller
{
    //
	public function getoutput(){
		$templates=templates::all();
		$templates = DB::table('templates')->paginate(5);
		return view('form.formoutput',['templates'=>$templates]);
	}

	public function getinput(){
		$templates = new templates();
		return view('form.forminput');
	}
	public function postinput(Request $request){
		$validatedData = $request->validate([
			'name' => 'required|min:3|max:100',
			'price' => 'required',
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
		return view('form/formoutput');
	}
}
