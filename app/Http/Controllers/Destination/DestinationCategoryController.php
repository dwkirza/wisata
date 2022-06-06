<?php

namespace App\Http\Controllers\Destination;

use App\Http\Controllers\Controller;
use App\Models\DestinationCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DestinationCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=DestinationCategory::all();
        // return response()->json($data);
        return view('categories', [
            'title' => 'Destination Categories',
            'data' => $data]);
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
            'destination_category_name' => 'required|unique:destination_category,destination_category_name',
            'destination_category_image' => '',
            'destination_category_image.*' => 'file|mimes:png,jpg',
            ]);
            try {
                $files = $request->file('destination_category_image');
                $filename = $fields['destination_category_name'].'-CategoryImage-'.time().rand(1,1000).'.'.$files->getClientOriginalName();
                $filepath = $files->storeAs('uploads/category_image', $filename);
                
                $fields['destination_category_image'] = $filepath;
                $data = DestinationCategory::create($fields);
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
     * @param  \App\Models\DestinationCategory  $destinationCategory
     * @return \Illuminate\Http\Response
     */
    public function show(DestinationCategory $destinationCategory)
    {
        $data=$destinationCategory;
        return response()->json($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\DestinationCategory  $destinationCategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DestinationCategory $destinationCategory)
    {
        $fields = $request->validate([
            'destination_category_name' => '',
            'destination_category_image' => '',
            'destination_category_image.*' => 'file|mimes:png,jpg',
            ]);
            try {
                $data = $destinationCategory;

                if($request->hasfile('destination_category_image')){
                    $files = $request->file('destination_category_image');
                    $filename = $fields['destination_category_name'].'-CategoryImage-'.time().rand(1,1000).'.'.$files->getClientOriginalName();
                    $filepath = $files->storeAs('uploads/category_image', $filename);    
                    $fields['destination_category_image'] = $filepath;
                    Storage::delete($data->destination_category_image);
                }

                $data->update($fields);
                return response()->json([
                    'success' => true,
                    'message' => 'update success',
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
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\DestinationCategory  $destinationCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(DestinationCategory $destinationCategory)
    {
        try {
            $data = $destinationCategory;
            Storage::delete($data->destination_category_image);
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
}
