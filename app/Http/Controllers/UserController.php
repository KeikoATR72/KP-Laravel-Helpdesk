<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator,Redirect,Response,File,move;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\Models\blog;
use App\Models\sistem;
use App\Mail\BlogPosted;

class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function index()
    {
        $sistems = sistem::all();
        return view('welcome', compact('sistems'));
    }

    public function masuk()
    {
        return view('posted');
    }

    public function store(Request $request)
    {
      $this -> validate($request, [
        'sistem' => 'required',
        'nama' => 'required | min:1',
        'bagian' => 'required | min:5',
        'telp' => 'required | min:5',
        'email' => 'required | min:5',
        'title'       => 'required | min:5',
        'description' => 'required | min:10',
      ]);

      $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
      $charactersLength = strlen($characters);
      $randomString = '';
      for ($i = 0; $i < 20; $i++) {
          $randomString= $characters[mt_rand(0, $charactersLength - 1)];
      }

      function generateRandomString($length = 10) {
        return substr(str_shuffle(str_repeat($x='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length/strlen($x)) )),1,$length);
      }

      $blog = new blog;
      // $request->sistem = array_unique(array_diff($request->sistem, [0]));
      $blog -> sistem      = $request->sistem;
      $blog -> nama        = $request -> nama;
      $blog -> bagian      = $request -> bagian;
      $blog -> telp        = $request -> telp;
      $blog -> email       = $request -> email;
      $blog -> title       = $request -> title;
      $blog -> description = $request->  description;
      $blog -> kodeunik    = generateRandomString();

      if ($files = $request-> file('file')) {
        $nama_file = date('YmdHis')."_".$files->getClientOriginalName();
        $tujuan_upload = 'data_file';
        $blog -> file = $files->move($tujuan_upload,$nama_file);
      }

      $blog -> save();

      //ngirim email
      Mail::to('test@emailuser.com')->send(new BlogPosted($blog));


    return Redirect::to('helpdesk')->with(['success' => 'Laporan berhasil terkirim. Silahkan periksa email anda untuk mendapatkan kode unik.']);

    }

    public function cek()
    {
      return view('cek');
    }


      public function showuser(Request $request)
      {
        $kodeunik = urlencode($request -> input('kodeunik'));
        $blog = blog::where('kodeunik', $kodeunik)->get()->first();

        if (!$blog)
        {
          abort(404);
        }
          return view('tampil', ['blog' => $blog]);

      }


}
