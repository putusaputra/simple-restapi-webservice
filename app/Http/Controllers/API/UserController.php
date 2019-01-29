<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class UserController extends Controller {
    public $successStatus = 200;
    public $failedStatus = 401;
    /**
     * login api
     * 
     * @return \Illuminate\Http\Response
     */
    public function login() {
        if (Auth::attempt(['email' => request('email'), 'password' => request('password')])) {
            $user = Auth::user();
            $success['token'] = $user->createToken('MyApp')->accessToken;
            return response()->json(['success' => $success], $this->successStatus);
        } else {
            return response()->json(['error' => 'Unauthorized'], $failedStatus);
        }

    }

    /**
     * Register api
     * 
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
            ]);
        
            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()], $failedStatus);
            }

            $input = $request->all();
            $input['password'] = bcrypt($input['password']);
            $user = User::create($input);
            $success['token'] = $user->createToken('MyApp')->accessToken;
            $success['name'] = $user->name;
            return response()->json(['success' => $success], $this->successStatus);
    }

    /**
     * details api
     * 
     * @return \Illuminate\Http\Response
     */
    public function details() {
        if (Auth::check()) {
            $user = Auth::user();
            return response()->json(['success' => $user], $this->successStatus);
        } else {
            return response()->json(['error' => 'You are not logged in !'], $failedStatus);
        }
    }

    /**
     * update current user api
     * @return \Illuminate\Http\Response
     */
    public function updateUser(Request $request) {
        if (Auth::check()) {
            $validator = Validator::make($request->all(), [
                'name' => 'nullable',
                'email' => 'nullable|email',
                'password' => 'required',
            ]);

            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()], $failedStatus);
            }

            $input = $request->all();
            
            $input['password'] = $input['password'] != null ? bcrypt($input['password']) : $input['password'];
            $user = User::find(Auth::id());

            $user->name = $input['name'] != null ? $input['name'] : $user->name;
            $user->email = $input['email'] != null ? $input['email'] : $user->email;
            $user->password = $input['password'] != null ? $input['password'] : $user->password;
            $user->save();

            $success['token'] = $user->createToken('MyApp')->accessToken;
            $success['user'] = $user;
            return response()->json(['success' => $success], $this->successStatus);
        } else {
            return response()->json(['error' => 'You are not logged in !'], $failedStatus);
        }
    }

     /**
     * delete current user api
     * @return \Illuminate\Http\Response
     */
    public function deleteUser() {
        if (Auth::check()) {
            $user = User::find(Auth::id());
            $userTokens = $user->tokens;

            $user->delete();
            foreach ($userTokens as $token) {
                $token->revoke();
            }

            return response()->json(['success' => 'user data removed and logout successful !'], $this->successStatus);
        } else {
            return response()->json(['error' => 'You are not logged in !'], $failedStatus);
        }
    }

    /**
     * logout api
     * @return \Illuminate\Http\Response
     */
    public function logout() {
        if (Auth::check()) {
            $user = User::find(Auth::id());
            $userTokens = $user->tokens;
            foreach ($userTokens as $token) {
                $token->revoke();
            }
            return response()->json(['success' => 'log out success !'], $this->successStatus);
        } else {
            return response()->json(['error' => 'You are not logged in !'], $failedStatus);
        }
    }
}