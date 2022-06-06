{{-- <nav class="navbar navbar-expand-lg navbar-dark fixed-top   "> --}}
  <nav class="navbar navbar-expand-lg navbar-light ">
    <div class="container " style="border-bottom: 1px solid black;">
      <a class="navbar-brand" style="font-size: 60; height: bold; font-family: 'Quicksand', sans-serif;"
        href="/">Travel</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end text-white align-middle" id="navbarNav">
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
<<<<<<< HEAD
          <li class="nav-item pe-0 pe-lg-5" >
            <a class="nav-link active  {{ ($title === "Wisata")}}" style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;"href="/destinationCategory">Wisata</a>
          </li>
          <li class="nav-item pb-4 pb-lg-0 pt-2 pt-lg-0 justify-content-baseline justify-content-lg-center align-self-baseline align-self-lg-center">
            @auth
              <div class="dropdown">
                <button class="btn btn-outline-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                  Halo {{ auth()->user()->users_first_name }}
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item" href="/dashboard">Dashboard</a>
                  <div class="dropdown-divider"></div>
                  <form action="/logout" method="POST">
                    @csrf
                    <button type="submit" class="dropdown-item" style="margin-bottom: -1rem !important;">Keluar</button>
                  </form>
                </div>
              </div>
            @else
              <a type="button" class="btn btn-outline-dark" style="font-size: 24; height:bold; font-family: 'Mulish', sans-serif;" href="/login">Masuk </a>
            @endauth
          </li>
=======
          <li class="nav-item" style="padding-right: 50">
            <a class="nav-link active  {{ ($title === " Wisata")}}"
              style="font-size: 24; height: bold; font-family: 'Mulish', sans-serif;"
              href="/destinationCategory">Wisata</a>
          </li>

          <div class="">
            <a class="btn btn-outline-dark " style="font-size: 24; height:bold; font-family: 'Mulish', sans-serif;"
              href="{{ isset($auth) ? route('logout'): route('login') }}">{{ isset($auth) ? 'Keluar': 'Masuk' }}</a>
          </div>
>>>>>>> hotel
        </ul>
      </div>
    </div>
  </nav>