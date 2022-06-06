<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\DestinationCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DashboardCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DestinationCategory::all();

        return view('dashboard.category.index', [
            'data' => $data]); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = DestinationCategory::all();

        return view('dashboard.category.create', [
            'data' => $data
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
            'destination_category_name' => 'required|unique:destination_category,destination_category_name',
            'destination_category_image' => '',
            'destination_category_image.*' => 'file|mimes:png,jpg',
            ]);
            try {
                $files = $request->file('destination_category_image');
                $filename = $fields['destination_category_name'].'-CategoryImage-'.time().rand(1,1000).'.'.$files->getClientOriginalName();
                $filepath = $files->storeAs('uploads/category_image', $filename);
                
                $fields['destination_category_image'] = $filepath;
                DestinationCategory::create($fields);
                return redirect('/dashboard-category')->with('success', 'Berhasil menambahkan postingan');

            } catch (\Exception $e) {
                return redirect('/dashboard-category')->with('error', 'Gagal menambahkan postingan');

            }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\DestinationCategory  $destinationCategory
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = DestinationCategory::all();
        return view('dashboard.category.show', [
            'data' => $data,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\DestinationCategory  $destinationCategory
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = DestinationCategory::find($id);
        return view('dashboard.category.edit', [
            'data' => $data,
        ]) ;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\DestinationCategory  $destinationCategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $fields = $request->validate([
            'destination_category_name' => '',
            'destination_category_image' => '',
            'destination_category_image.*' => 'file|mimes:png,jpg',
            ]);
            try {
                $data = DestinationCategory::find($id);

                if($request->hasfile('destination_category_image')){
                    $files = $request->file('destination_category_image');
                    $filename = $fields['destination_category_name'].'-CategoryImage-'.time().rand(1,1000).'.'.$files->getClientOriginalName();
                    $filepath = $files->storeAs('uploads/category_image', $filename);    
                    $fields['destination_category_image'] = $filepath;
                    Storage::delete($data->destination_category_image);
                }

                $data->update($fields);
                return redirect('/dashboard-category')->with('success', 'Berhasil update postingan');

            } catch (\Exception $e) {
                // return response()->json([
                //     'message' => 'error',
                //     'errors' => $e->getMessage()
                // ]);
                return redirect('/dashboard-category')->with('error', 'Gaga; update postingan');

            }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\DestinationCategory  $destinationCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $data = DestinationCategory::find($id);
            Storage::delete($data->destination_category_image);
            $data->delete();
            return redirect('/dashboard-category')->with('success', 'Berhasil menghapus postingan');
        } catch (\Exception $e) {
            return redirect('/dashboard-category')->with('error', 'Gagal menghapus postingan!');
        }
    
    }
}
