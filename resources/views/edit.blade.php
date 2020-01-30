@extends('layouts.app')

@section('title','laravel odo')

@section('content')

	<div class="container-fluid">
		
		<h1 class="h3 mb-4 text-gray-800">TANGGAPAN</h1>
		
		<div class="card shadow mb-4" style="font-size: 120%">
		
			<div class="card-header py-3">
	            <h6 class="m-0 font-weight-bold text-primary" style="font-size: 110%">Subjek: {{ $blog -> title}}</h6>
	        </div>

	        <div class="card-body">

		        <form action="/{{$blog ->id}}" method="post">

					<table>
						<tr><td><b>Status: </b></td><td>{{ $blog -> tag}}</td></tr>
						<tr><td><b>Code: </b></td><td>{{ $blog -> kodeunik}}</td></tr>
						<tr><td><b>SI: </b></td><td>{{ $blog -> sistem}}</td></tr>
						<tr><td><b>Nama: </b></td><td>{{ $blog -> nama}}</td></tr>
						<tr><td><b>Bagian: </b></td><td>{{ $blog -> bagian}}</td></tr>
						<tr><td><b>Telp/Ext: </b></td><td>{{ $blog -> telp}}</td></tr>
						<tr><td><b>Email: </b></td><td>{{ $blog ->email}}</td></tr>
						<tr><td><b>Deskripsi: </b></td></tr>
					  </table>

					<p>
						{{ $blog -> description }}
					</p>

					<div class="form-group">
			          <label for="tanggapan"><b>Tanggapan : </b></label>
			          <textarea class="form-control" name="tanggapan" rows="5" cols="70">{{ $blog -> tanggapan }}</textarea>
			          <?php if ($errors->has('tanggapan')): ?>
			          <p>{{$errors -> first('tanggapan')}}</p>
			          <?php endif; ?>
			        </div>

					<div id="tag_wrapper">
						<div id="add_tag">Status</div>
								<select name="tag" id="tag_select">
									<option value="{{ $blog -> tag }}"> -pilih- </option>
									<option value="Diproses">Diproses</option>
									<option value="Selesai">Selesai</option>
								</select>
			        </div>
					
					<button type="submit" class="btn btn-primary" name="submit" style="margin-bottom: 18px; margin-top: 18px">Tanggapi</button>
						{{csrf_field()}}
					<input type="hidden" name="_method" value="PUT">
					
				</form>
			</div>
		</div>
	</div>
@endsection