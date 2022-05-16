<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Hotel;
use App\Models\Room;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class HotelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hotel = Hotel::all();
        $auth = Auth::check();
        $data = [
            'hotel_all' => $hotel,
            'title' => 'Hotel',
            'auth' => $auth

        ];
        return view('Hotel/list-hotel', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
            'name' => 'required|unique:hotel,name',
            'hotel_image' => '',
            'hotel_image.*' => 'file|mimes:png,jpg',
        ]);
        try {
            $files = $request->file('hotel_image');
            $filename = $fields['hotel_image'] . '-HotelImage-' . time() . rand(1, 1000) . '.' . $files->getClientOriginalName();
            $filepath = $files->storeAs('uploads/hotel_image', $filename);

            $fields['hotel_image'] = $filepath;
            $data = Hotel::create($fields);
            return response()->json([
                'success' => true,
                'message' => 'store success',
                'data' => $data
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
        $hotel = Hotel::find($id);
        $title = $hotel->name;
        return view('Hotel/info-kamar', compact(['hotel', 'title']));
    }

    public function category($id, $category)
    {
        $hotel = Hotel::find($id);
        $categories = [
            "standard" => 0,
            "superior" => 300000,
            "deluxe" => 400000
        ];
        $hotel->name = $hotel->name . ' ' . ucfirst($category) . ' Room';
        $hotel->price = $hotel->price + $categories[$category];
        $title = $hotel->name;
        return view('Hotel/info-kamar', compact(['hotel', 'title', 'category']));
    }

    public function transaction($id, $category)
    {
        $hotel = Hotel::find($id);
        $categories = [
            "standard" => 0,
            "superior" => 300000,
            "deluxe" => 400000
        ];
        $hotel->name = $hotel->name . ' ' . ucfirst($category) . ' Room';
        $hotel->price = $hotel->price + $categories[$category];
        $title = $hotel->name;
        $today = Carbon::now()->isoFormat('dddd, D MMMM Y ');
        $user = Auth::user()->users_first_name;
        return view('transaksi', compact(['hotel', 'title', 'category', 'user', 'today']));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
