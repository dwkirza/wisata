{{-- <nav class="navbar navbar-expand-lg navbar-dark fixed-top   "> --}}
  <nav class="navbar navbar-expand-lg navbar-light ">
    <div class="container " style="border-bottom: 1px solid black;">
      <a class="navbar-brand" style="font-size: 60; height: bold; font-family: 'Quicksand', sans-serif;"
        href="/">Travel</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end text-white" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active  {{ ($title === " Beranda")}}"
              style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;" aria-current="page"
              href="/">Beranda</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active  {{ ($title === " Tentang")}} "style=" font-size: 24; height: bold;
              font-family: 'Mulish' , sans-serif;" href="/about">Tentang</a>
          </li>
          <li class="nav-item" style="padding-right: 50">
            <a class="nav-link active  {{ ($title === " Wisata")}}"
              style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;"
              href="/destinationCategory">Wisata</a>
          </li>

          <div class="">
            <a class="btn btn-outline-dark " style="font-size: 24; height:bold; font-family: 'Mulish', sans-serif;"
              href="{{ isset($auth) ? route('logout'): route('login') }}">{{ isset($auth) ? 'Keluar': 'Masuk' }}</a>
          </div>
        </ul>
      </div>
    </div>
  </nav>