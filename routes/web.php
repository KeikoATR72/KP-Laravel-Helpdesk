<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::group(['middleware' => 'auth'], function() {
// Route::resource('/','HomeController', ['except' => 'index']);
// });



Route::get('/helpdesk', 'UserController@index');

Route::post('/', 'UserController@store');

Route::get('/cek', 'UserController@cek');
// Route::get('/tampil', 'UserController@cekstore');
Route::get('/', 'UserController@showuser');


// Route::get('/cek', function () {
//   return view('cek');
// });

// Route::get('/detail','UserController@ceklap');
Route::get('/masuk', 'UserController@masuk');

Auth::routes();
Route::get('/home', function(){
	return view('home');
});
Route::get('/admin', 'HomeController@admin')->name('admin');
Route::get('{id}', 'HomeController@show');
Route::get('/{tag}', 'HomeController@filter');
Route::get('/{id}/edit', 'HomeController@edit');
Route::put('/{id}', 'HomeController@update');
Route::delete('/{id}', 'HomeController@destroy');
