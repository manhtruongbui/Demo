@extends('welcome')
@section('content')

<div class="table-content">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>Name</th>
				<th>type_id</th>
				<th>Price</th>
				<th>Height</th>
				<th>Width</th>
			</tr>
		</thead>
		<tbody>
			@foreach($templates as $tem) 
			<tr class="gradeX">
				<td>{{$tem->name}}</td>
				<td>{{$tem->templates_type_id}}</td>
				<td>{{$tem->price}}</td> 
				<td>{{$tem->height}}</td> 
				<td>{{$tem->width}}</td> 
			</tr>
			@endforeach 
		</tbody>
	</table>
	{!! $templates->links() !!}
</div>



@endsection

