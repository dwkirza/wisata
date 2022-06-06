<?php

namespace App\Http\Controllers\Destination;

use App\Http\Controllers\Controller;
use App\Models\Destination;
use App\Models\DestinationCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DestinationController extends Controller
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
        
        return response()->json($destination);
    }

    public function destinationByCategory($id)
    {
        $data = Destination::leftJoin('destination_category','destinations.destination_category_id','=','destination_category.destination_category_id');

        $destination = $data->select([
            'destinations.*',
            'destination_category.destination_category_id',
            'destination_category.destination_category_name',
            ])
            ->where('destinations.destination_category_id','=', $id)
            ->get();
        
        // return response()->json($destination[$id]->destination_image);
        return view('posts', [
            'title' => 'Destination By Category',
            'data' => $destination,
        ]);
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
            $filecount = 0;
            if($request->hasfile('destination_image'))
            {
                $files = $request->file('destination_image');
                $filecount = count($files);

                foreach($files as $file)
                {
                    $filename = $fields['destination_name'].'-DestinationImage-'.time().rand(1,1000).'.'.$file->getClientOriginalName();
                    $filepath[] = $file->storeAs('uploads/destination_image', $filename);
                }
            }

            //Default
            // $filename = time().$request->file('destination_image')->getClientOriginalName();
            // $path = $request->file('destination_image')->storeAs('uploads/destination_image',$filename);
            // $files = $path;  

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

            $response = Destination::create($destination_data);
            return response()->json([
                'success' => true,
                'message' => 'store success',
                'data' => $response,
                'inserted_image_count' => $filecount
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
        $data = Destination::leftJoin('destination_category','destinations.destination_category_id','=','destination_category.destination_category_id')
        ->select('destinations.*','destination_category.destination_category_name')
        ->where('destinations.destination_id','=', $id)
        ->get();

        $destination_category = DestinationCategory::all();

        // return response()->json($data);
        return view('post', [
            'title' => "Destinasi",
            'data' => $data[0],
            'destination_category' => $destination_category,
        ]);
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
                $filecount = 0;
                $data = Destination::find($id);
                if($request->hasfile('destination_image')){
                    $files = $request->file('destination_image');
                    $filecount = count($files);
    
                    foreach($files as $file)
                    {
                        $filename = $fields['destination_name'].'-DestinationImage-'.time().rand(1,1000).'.'.$file->getClientOriginalName();
                        $filepath[] = $file->storeAs('uploads/destination_image', $filename);
                    }
                    $fields['destination_image'] = $filepath;
                    Storage::delete($data->destination_image);
                }

                $data->update($fields);
                return response()->json([
                    'success' => true,
                    'message' => 'update success',
                    'data' => $data,
                    'inserted_image_count' => $filecount
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
            $data = Destination::find($id);
            Storage::delete($data->destination_image);
            $data->delete();
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


    // public function alamDestination()
    // {
    //     $data=Destination::getAlamDestination()->paginate(2);
    //     return response()->json($data);
    // }

    // public function kotaDestination()
    // {
    //     $data=Destination::getKotaDestination()->paginate(2);
    //     return response()->json($data);
    // }
}
