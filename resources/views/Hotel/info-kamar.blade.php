<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/heroes/">

<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/67d0dc4786.js" crossorigin="anonymous"></script>

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
    <div class="container">
        <!-- Content here -->
        <section class=" text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-9 col-md-8 mx-auto">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 4"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 5"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="assets/img/zurichhotel5.jpg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="assets/img/zurichhotel4.jpg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="assets/img/zurichhotel6.jpg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="assets/img/zurichhotel7.jpg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="assets/img/zurichhotel8.jpg" class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="card text-center">
                <div class="card-header">
                    FASILITAS
                </div>
                <div class="card-body">
                    <h5 class="fa-solid fa-wifi"> Wi-Fi</h5> &nbsp;&nbsp; <h5 class="fa-solid fa-person-swimming"> Kolam Renang</h5> &nbsp;&nbsp; <h5 class="fa-solid fa-utensils"> Sarapan</h5> &nbsp;&nbsp;<h5 class="fa-solid fa-square-parking"> Parkir 24 Jam</h5>
                </div>
            </div>
            <div class="card text-center">
                <div class="card-header">
                    INFO LOKASI
                </div>
                <div class="card-body">
                    <i class="fa-solid fa-location-dot"> Jl. Jend. Sudirman No. 321, Pusat Kota Balikpapan, Balikpapan, Kalimantan Timur, Indonesia, 76114</i> <br><br>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8386059938116!2d116.8566163145385!3d-1.2697542990738715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2df146e9cbff9a73%3A0x1915c6d1e15ee2d1!2sHotel%20Zurich%20Balikpapan!5e0!3m2!1sid!2sid!4v1650272934613!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
            <div class="card text-center">
                <div class="card-header">
                    TIPE KAMAR
                </div>
                <div class="card-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm">
                                <div class="container">
                                    <div class="row">
                                        <div class="col">
                                            @foreach ($room_all as $room_all)
                                            <div class="card mb-3">
                                                <div class="row g-0">
                                                    <h5 class="card-title">{{ $room_all['name'] }}</h5>
                                                    <p class="card-text"> {{ $room_all['description'] }}</i></p>
                                                    <i class="fa-solid fa-wifi fa-sm"> wi-fi</i> &#160; <i class="fa-solid fa-person-swimming fa-sm"> kolam renang</i> &#160; <i class="fa-solid fa-utensils fa-sm"> Sarapan</i>
                                                    <br>
                                                    <h3 class="card-title">Rp.&nbsp;{{ $room_all['price'] }}</h3>
                                                    <a class="btn btn-primary" href="/error">Pesan</a>


                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                    <div class="col">
                                        Column
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>


    </div>
    </div>
    </div>
    </div>

    </section>



    @endsection