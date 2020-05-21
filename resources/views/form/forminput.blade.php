@extends('welcome')
@section('content')
<div class="form-demo">
	<br>

	@if(count($errors)>0)
	<div class="alert alert-danger">
		@foreach($errors->all() as $err)
		{{$err}}
		<br>
		@endforeach
	</div>
	@endif
	<form action="form/forminput" method="POST" class="form-input">
		{{ csrf_field() }}
		<div class="title">
			<label>Title Form Demo</label>
		</div>
		<div class="form-group">
			<div class="form-item">
				<label class="title-item">Type_id</label>
				<input type="text" name="templates_type_id" class="form-content" placeholder="Input...">
			</div>
			<div class="form-item">
				<label class="title-item">url_image</label>
				<input type="text" name="image_front_url" class="form-content" placeholder="Input...">
			</div>
			<div class="form-item">
				<label class="title-item">url_temp</label>
				<input type="text" name="tenplate_border_url" class="form-content" placeholder="Input...">
			</div>
			<div class="form-item {{ $errors->has('name') }}">
				<label class="title-item">Name</label>
				<input type="text" name="name" class="form-content" placeholder="Input..." value="{{ old('name') }}">
			</div>
			<div class="form-item">
				<label class="title-item">Thumbnail</label>
				<input type="text" name="thumbnail" class="form-content" placeholder="Input...">
			</div>
			<div class="form-item">
				<label class="title-item">Description</label>
				<input type="text" name="description" class="form-content" placeholder="Input...">
			</div>
			<div class="form-item">
				<label class="title-item">Price</label>
				<input type="text" name="price" class="form-content" placeholder="Input..." value="{{ old('price') }}">
			</div>
			<div class="form-item">
				<label class="title-item">Height</label>
				<input type="text" name="height" class="form-content" placeholder="Input...">
			</div>
			<div class="form-item">
				<label class="title-item">Width</label>
				<input type="text" name="width" class="form-content" placeholder="Input...">
			</div>
			<div class="form-item">
				<label class="title-item">Comment</label>
				<input type="text" name="comment_text" class="form-content" placeholder="Input...">
			</div>
		</div>
		<button type="submit">Submit</button>
	</form>
</div>
@endsection