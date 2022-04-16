<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/heroes/">

<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

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

<body>
    @extends('layout.main')

    @section('container')
    <div class="container" style="justify-content:center;">
        <div class="row-12">
            <div class="col-6">
                <!-- Content here -->
                <div id="demo" class="carousel slide" data-ride="carousel">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>

                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="assets/img/kamarzurich.png" alt="Los Angeles">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/kamarzurich2.png" alt="Chicago">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/kamarzurich3.png" alt="New York">
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="container-full py-5">
        <div class="col-12 col-sm-6 col-md-6 col-lg-10" style="color: black;">
            @foreach ($room_all as $room_all)
            <div class="card mb-3">
                <div class="row g-0">

                    <div class="col-8">
                        <div class="card-header">
                            Fasilitas
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">{{ $room_all['name'] }}</h5>
                            <p class="card-text"> >{{ $room_all['description'] }}</i></p>
                            <i class="fa-solid fa-wifi fa-sm"> wi-fi</i> &#160; <i
                                class="fa-solid fa-person-swimming fa-sm"> kolam renang</i> &#160; <i
                                class="fa-solid fa-utensils fa-sm"> Sarapan</i>
                            <br><br>
                            <h4 class="card-text">Rp. 550.000 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; </h4>
                            <a class="btn btn-primary" href="/error">Pesan</a>
                        </div>

                    </div>
                    <div class="col-4 mt-4 py-4 px-4">
                        <img src="assets/img/mapszurich.png" class="img-fluid rounded-start" alt="...">
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>



    @endsection