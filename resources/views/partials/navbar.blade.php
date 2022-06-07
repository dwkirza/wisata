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
          <?php if (auth()->user() && auth()->user()->users_role == 'admin'): ?>
            
            <li class="nav-item" style="border:2px solid #777;margin:0 5px;border-radius: 40px;padding:0 10px" style="padding-right: 50">
              <a class="nav-link  {{ ($title === " Wisata")}}"
                style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;"
                href="/admin-hotels">Manage Hotels</a>
            </li>
          <?php elseif (auth()->user() && auth()->user()->users_role != 'admin'): ?>
            <li class="nav-item" style="border:2px solid #777;margin:0 5px;border-radius: 40px;padding:0 10px">
              <a class="nav-link  {{ ($title === " Beranda")}}"
                style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;" aria-current="page"
                href="/">Beranda</a>
            </li>
            <li class="nav-item" style="border:2px solid #777;margin:0 5px;border-radius: 40px;padding:0 10px">
              <a class="nav-link  {{ ($title === " Tentang")}} "style=" font-size: 24; height: bold;
                font-family: 'Mulish' , sans-serif;" href="/about">Tentang</a>
            </li>
            <li class="nav-item" style="border:2px solid #777;margin:0 5px;border-radius: 40px;padding:0 10px">
              <a class="nav-link  {{ ($title === " Wisata")}}"
                style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;"
                href="/destinationCategory">Wisata</a>
            </li>
            <li class="nav-item" style="border:2px solid #777;margin:0 5px;border-radius: 40px;padding:0 10px">
              <a class="nav-link  {{ ($title === " Wisata")}}"
                style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;"
                href="/Hotel">Hotel</a>
            </li>

          <?php endif ?>

          <li class="" style="border:2px solid #777;margin:0 5px;border-radius: 40px;padding:0 10px" style="padding-right: 50">
            <a class="nav-link  {{ ($title === " Wisata")}}"
              style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;"
              href="{{ isset($auth) ? route('logout'): route('login') }}">{{ isset($auth) ? 'Keluar': 'Masuk' }}</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>