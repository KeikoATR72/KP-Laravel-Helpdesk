@extends('layouts.master')

@section('title','laravel odo')

@section('content')
	<div class="container-fluid">
		<h1 class="h3 mb-4 text-gray-800">DETAIL LAPORAN</h1>
		
		<div class="row">
			<div class="col-lg-6">
				<div class="card shadow mb-4" style="font-size: 120%">
					<div class="card-header py-3">
			            <h6 class="m-0 font-weight-bold text-primary" style="font-size: 110%">Subjek: {{ $blog -> title}}</h6>
			        </div>
			        <div class="card-body">
				          <table>
							<tr style="font-size: 120%"><td><b>[Status: </td><td>{{ $blog -> tag}}]</b></td></tr>
							<tr><td><p> </p></td></tr>
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
					<b>Tanggapan: </b>
					<p>
						{{ $blog -> tanggapan }}
					</p>
					</div>
				</div>
			</div>
			@if ($blog->file)
			<div class="col-lg-6">
				<div class="card shadow mb-4" style="font-size: 120%">
					<div class="card-header py-3">
				        <h6 class="m-0 font-weight-bold text-primary" style="font-size: 110%">Lampiran : </h6>
				    </div>

			        <div class="card-body">
						<img id="lampiran" width="300px" src="{{ asset($blog->file) }}">
						</br>
						<a href="{{ asset($blog->file) }}" target="_blank">Tampilkan gambar ukuran penuh</a>
					</div>
				</div>
			</div>
			@endif
		</div>
		{{-- <input type="hidden" name="_method" value="GET"> --}}
	</div>
@endsection

