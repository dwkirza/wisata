
@extends('dashboard.layout.main')

@section('container')
<div class="mt-4">
  <a href="/dashboard-destinasi"> 
      <span data-feather="arrow-left"></span> 
    </a>
</div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Data Destinasi</h1>
</div>

@if(session()->has('success'))
<div class="alert alert-success" role="alert">
    {{ session('success') }}
  </div>
@endif
@if(session()->has('error'))
<div class="alert alert-danger" role="alert">
    {{ session('error') }}
  </div>
@endif

<div class="col-lg-7">
  <form method="post" action="/dashboard/addpost" class="mb-5" enctype="multipart/form-data">
      @method('post')
      @csrf
    <div class="mb-3">
      <label for="destination_name" class="form-label">Judul</label>
      <input type="text" class="form-control  @error('destination_name')
      is-invalid
      @enderror" id="destination_name" name="destination_name"  value="{{ old('destination_name') }} ">
      
      @error('destination_name')
      <div class="invalid-feedback">
          <small>Judul harus diisi!!!</small>
      </div>
      @enderror
    </div>
    
    <div class="mb-3">
      <label for="destination_category_id" class="form-label">Kategori</label>
      <select class="form-select" name="destination_category_id">
          <option selected>Pilih Destinasi</option>
          @foreach ($destination_category as $category )
            <option value="{{ $category->destination_category_id }}">{{ $category->destination_category_name }}</option>
          @endforeach
      </select>
    </div>

    <div class="mb-3">
      <label for="destination_location" class="form-label">Link Maps</label>
      <input type="text" class="form-control @error('destination_location')
      is-invalid
      @enderror" id="destination_location" name="destination_location" value="{{ old('destination_location') }}">
      @error('destination_location')
      <div class="invalid-feedback">
          <small>Link Maps harus diisi!!!</small>
      </div>
      @enderror
    </div>

    <div class="mb-3">
      <label for="destination_day_temp" class="form-label">Temperatur Siang &#8451;</label>
      <input type="number" class="form-control @error('destination_day_temp')
      is-invalid
      @enderror" id="destination_day_temp" name="destination_day_temp" value="{{ old('destination_day_temp') }}">
      @error('destination_day_temp')
      <div class="invalid-feedback">
          <small>Temperatur di siamg hari harus diisi!!!</small>
      </div>
      @enderror
    </div>

    <div class="mb-3">
      <label for="destination_night_temp" class="form-label">Temperatur Malam &#8451;</label>
      <input type="number" class="form-control @error('destination_night_temp')
      is-invalid
      @enderror" id="destination_night_temp" name="destination_night_temp" value="{{ old('destination_night_temp') }}">
      @error('destination_night_temp')
      <div class="invalid-feedback">
          <small>Temperatur di malam hari harus diisi!!!</small>
      </div>
      @enderror
    </div>

    <div class="mb-3">
      <label for="destination_rating" class="form-label">Rating</label>
      <input type="number" class="form-control @error('destination_rating')
      is-invalid
      @enderror "id="destination_rating" name="destination_rating" value="{{ old('destination_rating') }}">
      @error('destination_rating')
      <div class="invalid-feedback">
          <small>Rating harus diisi!!!</small>
      </div>
      @enderror
    </div>
    
    <div class="mb-3">
      <label for="destination_image[]" class="form-label">Gambar</label>
      <input type="file" class="form-control @error('destination_image[]')
      is-invalid
      @enderror "id="destination_image[]" name="destination_image[]" value="{{ old('destination_image[]') }}" multiple />
      @error('destination_image[]')
      <div class="invalid-feedback">
          <small>Gambar harus diisi!!!</small>
      </div>
      @enderror
    </div>

    <div class="mb-3">
      <label for="destination_description" class="form-label">Deskripsi</label>
      <textarea rows="10" class="form-control rounded-0 @error('destination_description')
      is-invalid
      @enderror" id="destination_description" name="destination_description">{{ old('destination_description') }}</textarea>
      @error('destination_description')
      <div class="invalid-feedback">
        <small>Deskripsi harus diisi!!!</small>
      </div>
      @enderror
    </div>

    <button type="submit" class="btn btn-primary">Simpan</button>
</form>
</div>

@endsection