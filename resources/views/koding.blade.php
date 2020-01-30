@extends('layouts.app')

@section('title','laravel odo')

@section('content')

  <div class="container-fluid">
  <h1 class="h3 mb-4 text-gray-800">DAFTAR LAPORAN</h1>

  <div id="tag_wrapper">
  <div id="add_tag" style="font-size: 20px">Status</div>



  <form method="get" action="/admin">
      <select class="form-control" name="tag" id="tag_select" style="width: 20%; font-size: 20px">
          <option value=""> -pilih- </option>
          <option value="diterima">Diterima</option>
          <option value="diproses">Diproses</option>
          <option value="selesai">Selesai</option>
      </select>
        <script src="{{ asset('js/tag.js') }}" charset="utf-8"></script>
        <button type="submit" class="btn btn-primary" name="submit" style="margin-top: 10px">Filter</button>    
      </form>
    </div>
<br>

  {{$blogs -> links()}}

<?php foreach ($blogs as $blog ): ?>
  <div style="width:40%">
  <div class="card shadow mb-4" style="font-size: 120%">
  
    <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary" style="font-size: 110%">Subjek: <a href="/{{ $blog -> id}}"> {{ $blog -> title }}</a></h6>
    </div>
    <div class="card-body">
    <table>
        <tr><td><b>[Status: </td><td>{{ $blog -> tag}}]</b></td></tr>
        <tr><td><p> </p></td></tr>
        <tr><td><b>Tanggal: </b></td><td>{{ $blog -> created_at}}</td></tr>
        <tr><td><b>SI: </b></td><td>{{ $blog -> sistem}}</td></tr>
        <tr><td><b>Oleh: </b></td><td>{{ $blog -> nama}}</td></tr>
    </table>
    </div>
  </div>
  </div>

<?php endforeach; ?>
</div>
<div style="padding-left: 25px; padding-bottom: 80px">

{{$blogs -> links()}}

</div>
@endsection
