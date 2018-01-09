<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $metadata = array(
            "entryPage"     => $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'],
            "referrer"      => (isset($_SERVER['HTTP_REFERER'])) ? $_SERVER['HTTP_REFERER'] : "None",
            "ip_address"    => ($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : "Unknown",
            "user_agent"    => $_SERVER['HTTP_USER_AGENT'],
            "country"        => "IT",
            "client_application" => "Unknown"
        );
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'metadata' => json_encode($metadata),
            'shared_key' => uniqid($data['name'][0].$data['email'][0])


        ]);
    }
}
