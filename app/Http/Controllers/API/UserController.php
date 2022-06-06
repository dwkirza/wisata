<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if( Auth::check() )
        {
            $id = Auth::user()->users_id;

            $user = User::find($id, ['users_first_name', 'users_last_name', 'email', 'password']);

            if ( ! $user ) {
                return response()->json([
                    'success' => false,
                    'message' => 'unauthorized',
                ],401);
            }

            else if ( $user ) {
                return response()->json($user);
            }
        }

        abort(403);  // permission denied error
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updateUser(Request $request)
    {
        if( Auth::check() )
        {
            $fields = $request->validate([
                'users_first_name' => 'string',
                'users_last_name' => 'string',
                'users_email' => 'email|string|unique:users,email',
                'users_password' => 'confirmed|string',
                ]);
                try {
                    $id = Auth::user()->users_id;
                    $response = User::find($id);

                    if (!empty($fields['users_password'])) {
                        $response->update($fields);
                        $response->update([
                            'password' => bcrypt($fields['users_password']),
                        ]);
                    }
    
                    else if (empty($fields['users_password'])) {
                        $response->update($fields);
                    }

                    $response = User::find($id, ['users_first_name', 'users_last_name', 'email', 'password']);
                    return response()->json([
                        'success' => true,
                        'message' => 'update success',
                        'data' => $response
                    ]);
                } catch (\Exception $e) {
                    return response()->json([
                        'message' => 'error',
                        'errors' => $e->getMessage()
                    ]);
                }
        }

        abort(403);  // permission denied error
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroyUser()
    {
        if( Auth::check() )
        {
            try {
                $user = Auth::user()->users_id;
                $response = User::find($user);
                $response->delete();
                $response->tokens()->delete();
                return response()->json([
                    'success' => true,
                    'message' => 'delete success'
                ]);
            } catch (\Exception $e) {
                return response()->json([
                    'message' => 'error',
                    'errors' => $e->getMessage()
                ]);
            }
        }

        abort(403);  // permission denied error
    }
}
