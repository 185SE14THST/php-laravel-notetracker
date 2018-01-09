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

/*Route::get('/', [
    'middleware' => ['auth'],
    'uses' => function () {
        return redirect()->action('ListController@show');
}]);*/
Route::get('/list', [
    'middleware' => ['auth'],
    'uses' => function () {
        return redirect()->action('ListController@show');
}]);
Route::get('/', 'ListController@show');
Route::post('/', 'ListController@create');
Route::get('/note/{id}', 'ListController@note');
Route::post('/edit/{id}', 'ListController@edit');
Route::get('/delete/{id}', 'ListController@delete');

Route::get('/logout', function () {
    Auth::logout();
    return redirect('/');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

