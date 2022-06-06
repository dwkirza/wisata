<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\DestinationCategory;
use App\Models\Destination;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DashboardPostController extends Controller
{    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Destination::leftJoin('destination_category','destinations.destination_category_id','=','destination_category.destination_category_id');

        $destination = $data->select([
            'destinations.*',
            'destination_category.destination_category_name'
            ])
            ->get();

        return view('dashboard.posts.index', [
            'title' => 'Destination Categories',
            'data' => $destination]);

            
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $destination_category = DestinationCategory::all();

        return view('dashboard.posts.create', [
            'destination_category' => $destination_category
        ]) ;
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
            'destination_name' => 'required|string',
            'destination_description' => 'required',
            'destination_location' => 'required',
            'destination_day_temp' => 'required',
            'destination_night_temp' => 'required',
            'destination_rating' => 'required|numeric',
            'destination_category_id' => 'required',
            'destination_image' => '',
            'destination_image.*' => 'file|mimes:png,jpg',
            ]);
            try {
                $filepath = [];
                if($request->hasfile('destination_image'))
                {
                    $files = $request->file('destination_image');    
                    foreach($files as $file)
                    {
                        $filename = $fields['destination_name'].'-DestinationImage-'.time().rand(1,1000).'.'.$file->getClientOriginalName();
                        $filepath[] = $file->storeAs('uploads/destination_image', $filename);
                    }
                }
    
                $destination_data = [
                    'destination_name' => $fields['destination_name'],
                    'destination_description' => $fields['destination_description'],
                    'destination_location' => $fields['destination_location'],
                    'destination_day_temp' => $fields['destination_day_temp'],
                    'destination_night_temp' => $fields['destination_night_temp'],
                    'destination_rating' => $fields['destination_rating'],
                    'destination_category_id' => $fields['destination_category_id'],
                    'destination_image' => $filepath,
                ];
    
                Destination::create($destination_data);
                return redirect('/dashboard-destinasi')->with('success', 'Berhasil menambahkan postingan');

            } catch (\Exception $e) {
                return redirect('/dashboard-destinasi')->with('error', 'Gagal menambahkan postingan');
            }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Destination  $destination
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Destination::leftJoin('destination_category','destinations.destination_category_id','=','destination_category.destination_category_id')
        ->select('destinations.*','destination_category.destination_category_name')
        ->where('destinations.destination_id','=', $id)
        ->get();

        $destination_category = DestinationCategory::all();

        return view('dashboard.posts.show', [
            'data' => $data[0],
            'destination_category' => $destination_category,
        ]);
    }

    /**
     * Show the form for EDITING PAGE the specified resource.
     *
     * @param  \App\Models\Destination  $destination
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Destination::leftJoin('destination_category','destinations.destination_category_id','=','destination_category.destination_category_id')
        ->select('destinations.*','destination_category.destination_category_name')
        ->where('destinations.destination_id','=', $id)
        ->get();

        $filecount = count($data[0]->destination_image);

        $destination_category = DestinationCategory::all();

        return view('dashboard.posts.edit', [
            'data' => $data[0],
            'filecount' => $filecount,
            'destination_category' => $destination_category,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Destination  $destination
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $fields = $request->validate([
            'destination_name' => '',
            'destination_description' => '',
            'destination_location' => '',
            'destination_day_temp' => '',
            'destination_night_temp' => '',
            'destination_rating' => '',
            'destination_category_id' => '',
            'destination_image' => '',
            'destination_image.*' => 'file|mimes:png,jpg',
            ]);
            try {
                $data = Destination::find($id);
                if($request->hasfile('destination_image')){
                    $files = $request->file('destination_image');

                    foreach($files as $file)
                    {
                        $filename = $fields['destination_name'].'-DestinationImage-'.time().rand(1,1000).'.'.$file->getClientOriginalName();
                        $filepath[] = $file->storeAs('uploads/destination_image', $filename);
                    }
                    $fields['destination_image'] = $filepath;
                    Storage::delete($data->destination_image);
                }

                $data->update($fields);
                return redirect('/dashboard-destinasi')->with('success', 'Berhasil update postingan');
                
            } catch (\Exception $e) {
                // return response()->json([
                //     'message' => 'error',
                //     'errors' => $e->getMessage()
                // ]);
                return redirect('/dashboard-destinasi')->with('error', 'Gagal update postingan');
            }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Destination  $destination
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $data = Destination::find($id);
            Storage::delete($data->destination_image);
            $data->delete();
            return redirect('/dashboard-destinasi')->with('success', 'Berhasil menghapus postingan');
        } catch (\Exception $e) {
            return redirect('/dashboard-destinasi')->with('error', 'Gagal menghapus postingan!');
        }
    }
}
