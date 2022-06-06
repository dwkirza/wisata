<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=User::all();
        return response()->json($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $fields = $request->validate([
            'users_first_name' => 'required|string',
            'users_last_name' => 'required|string',
            'users_email' => 'required|email|unique:users,email',
            'users_password' => 'required|string|confirmed',
            'users_role' => 'required',
            ]);
            try {
                $response = User::create([
                    'users_first_name' => $fields['users_first_name'],
                    'users_last_name' => $fields['users_last_name'],
                    'email' => $fields['users_email'],
                    'password' => bcrypt($fields['users_password']),
                    'users_role' => $fields['users_role']
                ]);
                return response()->json([
                    'success' => true,
                    'message' => 'store success',
                    'data' => $response
                ]);
            } catch (\Exception $e) {
                return response()->json([
                    'message' => 'error',
                    'errors' => $e->getMessage()
                ]);
            }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=User::find($id);
        return response()->json($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $fields = $request->validate([
            'users_first_name' => 'string',
            'users_last_name' => 'string',
            'users_email' => 'email|string|unique:users,email',
            'users_password' => 'confirmed|string',
            'users_role' => '',
            ]);
            try {
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $response = User::find($id);
            $response->delete();
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
}
