<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\Models\blog;
use App\Models\sistem;
use App\Mail\BlogPosted;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function home()
    {
        return view('home');
    }

    public function admin(Request $request)
{
  $blogs = blog::when($request->tag, function ($query, $tag) {
    return $query->where('tag', $tag);
  })->orderBy('created_at','DESC')->paginate(10);
  return view('koding', ['blogs' => $blogs]);
}

    public function filter(Request $request)
    {

      $blogs = DB::table('blogs')->where('tag', $request -> tag)->get();
      return view('koding', ['blogs' => $blogs]);

    }

    public function show($id)
    {
      $blog = blog::find($id);

      if (!$blog)
      {
        abort(404);
      }
        return view('single', ['blog' => $blog]);

    }

    public function edit($id)
    {
      $blog = blog::find($id);

      if (!$blog)
      {
        abort(404);
      }
      return view('edit', ['blog' => $blog]

    );
    }

    public function update(Request $request, $id)
    {
      $blog = blog::find($id);
      $blog -> tanggapan = $request-> tanggapan;
      $blog-> tag = $request->tag;
      $blog -> save();

      return redirect('/'. $id);
    }

    public function destroy($id)
    {
      
      $blog = blog::find($id);
        
      $blog->delete();
        
      return redirect('admin');
    }
}
