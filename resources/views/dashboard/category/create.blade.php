
@extends('dashboard.layout.main')

@section('container')
<div class="mt-4">
  <a href="/dashboard-category"> 
      <span data-feather="arrow-left"></span> 
    </a>
  </div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Data Kategori Wisata</h1>
</div>

@if(session()->has('success'))
<div class="alert alert-success" role="alert">
    {{ session('success') }}
  </div>
@endif

<div class="col-lg-7">

    <form method="post" action="/dashboard-category" class="mb-5" enctype="multipart/form-data">
        @csrf
      <div class="mb-3">
        <label for="destination_category_name" class="form-label">Nama Kategori</label>
        <input type="text" class="form-control  @error('destination_category_name')
        is-invalid
        @enderror" id="destination_category_name" name="destination_category_name"  value="{{ old('destination_category_name') }} ">
        
        @error('destindestination_category_nameation_name')
        <div class="invalid-feedback">
            <small>Nama Kategori harus diisi!!!</small>
        </div>
        @enderror
      </div>

      <div class="mb-3">
      <label for="destination_category_image" class="form-label">Gambar</label>
      <input class="form-control" type="file" id="destination_category_image" name="destination_category_image">
    </div>


      <button type="submit" class="btn btn-primary">Simpan</button>
</form>
</div>

<script>
   document.addEventListener('trix-fille-accept', function(e) {
       e.preventDefault();
   }) 
</script>
@endsection