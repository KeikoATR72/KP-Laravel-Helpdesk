@extends('layouts.master')

@section('content')
                    <div class="container-fluid">

                    <h1 class="h3 mb-4 text-gray-800">CEK LAPORAN</h1>
                    <center>
                    <form method="get" action="/" style="width: 50%; text-align: justify; ">
                        <div class="form-group row">
                            <label for="kodeunik" class="col-form-label text-md-right">Kode Unik : </label>

                            <div class="col-md-6">
                                <input class="form-control" id="kodeunik" type="text" name="kodeunik">
                            </div>
                        </div>

                        <input type="submit" class="btn btn-primary" name="submit" value="Cek">
                          {{csrf_field()}}
                          <input type="hidden" name="_method" value="get">
                    </form>
                </center>
@endsection
 