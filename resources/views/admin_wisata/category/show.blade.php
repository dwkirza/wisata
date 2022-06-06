
<style>
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg {
      font-size: 3.5rem;
    }
  }
</style>

@extends('dashboard.layout.main')

@section('container')
  <div class="mt-4">
  <a href="/dashboard-category"> 
      <span data-feather="arrow-left"></span> 
    </a>
  </div>
  <section class=" text-center container">
    <div class="row py-lg-3">
      <div class="col-lg-9 col-md-8 mx-auto">
        <h1 class="fw-light" style="font-size: 60; font-family: 'Mulish', sans-serif;">Top Destinasi</h1>
        <p class="lead text-muted" style="font-size: 25; font-family: 'Mulish', sans-serif;">Cukup sulit untuk mencari tempat wisata saat Anda datang ke suatu tempat baru. Berikut ini adalah beberapa tempat terpopuler dan lokasi wisata terbaik di Kalimantan.</p>
      </div>
    </div>
  </section>

  <div class="mb-4">
  <div class="album py-4" style="background-color: #CBCDC1">
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-sm-3 g-3"  >
        @foreach ($data as $category)
        <div class="col" >
          {{-- <a  href="{{url('destinationByCategory/'.$category->destination_category_id)}}"> --}}
          <div class="card shadow-sm d-flex justify-content-center view overlay zoom  ">
            <img  src="{{ url('storage/'.$category->destination_category_image) }}" style="height: 430; color-img"  >
            <div class="card-img-overlay d-flex align-items-center" style="background-color: rgba(0,0,0,0.5) ">
              <p class="card-title fs-1 text-center flex-fill text-white" style="font-family: 'Mulish', sans-serif;">
                {{ $category->destination_category_name }}
              </p>
            </div>
          </div>
          </a>
        </div>
        @endforeach
      </div>
    </div>
  </div>
</div>

@endsection