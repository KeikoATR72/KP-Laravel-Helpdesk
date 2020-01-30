@extends('layouts.master')

@section('title','laravel odo')

@section('content')

<!-- Begin Page Content -->
  <div class="container-fluid">

  @if ($message = Session::get('success'))   
    <div class="alert alert-success alert-block">
        <button type="button" class="close" data-dismiss="alert">×</button>
      <strong>{{ $message }}</strong>
      <p> Kode unik ini berguna untuk memantau progress laporan anda.</p>
    </div>
  @endif

  <!-- Page Heading -->
  <h1 class="h3 mb-4 text-gray-800">INPUT LAPORAN</h1>

<form action="/" method="post" style="padding: 0px  30px; width: 50%;" enctype="multipart/form-data">
{{csrf_field()}}
  <div>
    <div class="form-group" id="tag_wrapper">
      <label for="sistem">Aplikasi</label>
      <select class="form-control" name="sistem" id="tag_select">
                  <option value=""> -Pilih Salah Satu Aplikasi-</option>
                  @foreach ($sistems as $sistem)
                      <option value="{{$sistem->nama}}"> {{$sistem->nama}}</option>
                  @endforeach
              </select>
      <script src="{{ asset('js/tag.js') }}" charset="utf-8"></script>
      <?php if ($errors->has('sistem')): ?>
        <p>{{$errors -> first('sistem')}}</p>
      <?php endif; ?>
    </div>

        <div class="form-group">
          <label for="nama">Nama</label>
          <input type="text" class="form-control" name="nama" value="{{ old('nama')}}">
          <?php if ($errors->has('nama')): ?>
            <p>{{$errors -> first('nama')}}</p>
          <?php endif; ?>
        </div>
        <div class="form-group">
          <label for="bagian">Bagian</label>
          <input type="text" class="form-control" name="bagian" value="{{ old('bagian')}}">
          <?php if ($errors->has('bagian')): ?>
            <p>{{$errors -> first('bagian')}}</p>
          <?php endif; ?>
        </div>
        <div class="form-group row">
          <div class="col-sm-6">
            <label for="telp">Telp./Ext.</label>
            <input type="text" class="form-control" name="telp" value="{{ old('telp')}}">
            <?php if ($errors->has('telp')): ?>
              <p>{{$errors -> first('telp')}}</p>
            <?php endif; ?>
          </div>
          <div class="col-sm-6">
            <label for="email">E-mail</label>
            <input type="email" class="form-control" name="email" value="{{ old('email')}}">
            <?php if ($errors->has('email')): ?>
              <p>{{$errors -> first('email')}}</p>
            <?php endif; ?>
          </div>
        </div>
        <div class="form-group">
          <label for="title">Subjek</label>
          <input type="text" class="form-control" name="title" value="{{ old('title')}}">
          <?php if ($errors->has('title')): ?>
            <p>{{$errors -> first('title')}}</p>
          <?php endif; ?>
        </div>
        <div class="form-group">
          <label for="description">Deskripsi</label>
          <textarea class="form-control" name="description" rows="5" cols="70" value="{{old('description')}}"></textarea>
          <?php if ($errors->has('description')): ?>
          <p>{{$errors -> first('description')}}</p>
          <?php endif; ?>
        </div>
        <p>Lampiran: <br><input type="file" name="file" value="Upload File"></p>
        <button type="submit" class="btn btn-primary" name="submit">Kirim</button>    
</form>
</div>
@endsection
