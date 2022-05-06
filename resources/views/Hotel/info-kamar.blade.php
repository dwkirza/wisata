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
            <div class="container">
                <div class="row">
                    <h1 class="fw-light" style="font-size: 45; font-family: 'Mulish', sans-serif;">Zurich Hotel Balikpapan</h1>
                    <br><br><br><br>
                    <div class="col-sm-6"><img src="assets/img/zurichhotel5.jpg" class="d-block w-100" alt="..."></div>
                    <div class="col-sm-6"><img src="assets/img/zurichhotel4.jpg" class="d-block w-100" alt="..."></div>
                </div> <br> <br>
                <div class="row">
                    <div class="col-sm"><img src="assets/img/zurichhotel6.jpg" class="d-block w-100" alt="..."></div>
                    <div class="col-sm"><img src="assets/img/zurichhotel7.jpg" class="d-block w-100" alt="..."></div>
                    <div class="col-sm"><img src="assets/img/zurichhotel8.jpg" class="d-block w-100" alt="..."></div>
                </div>
            </div>
        </section>
        <br> <br>

        <section class=" text-center container">
            <div class=" container" style="text-align: left;">
                @foreach ($room_all as $room_all)
                <div class="row">
                    <div class="col-sm-5 col-md-6">
                        <h2 class="card-text left">Rp.&nbsp;{{ $room_all['price'] }} </h2>
                        <h2 class="fw-light" style="font-size: 25; font-family: 'Mulish', sans-serif; text-align: left;">Zurich Hotel Balikpapan</h2>
                        <p class="card-text">{{ $room_all['capacity'] }}
                            <hr>

                            <i class="fa-solid fa-wifi"> Wi-Fi</i> <br><br>
                            <i class="fa-solid fa-person-swimming"> Kolam Renang</i><br><br>
                            <i class="fa-solid fa-utensils"> Sarapan</i> <br><br>
                            <i class="fa-solid fa-square-parking"> Parkir 24 Jam</i> <br><br>
                        <p class="card-text" style="text-align: justify;">Selain standar dari Indonesia Care, semua tamu akan mendapatkan Wi-Fi gratis di semua kamar dan parkir gratis jika tiba dengan mobil. Terletak strategis di Pusat Kota Balikpapan yang merupakan bagian Balikpapan, properti ini menempatkan Anda dekat dengan atraksi dan opsi restoran menarik. Jangan pulang dulu sebelum berkunjung ke Balikpapan Plaza yang terkenal. Memiliki peringkat bintang-3, properti berkelas ini menyediakan akses ke pijat, pusat kebugaran dan restoran untuk para tamu di properti.</h4> <br> <br>
                            <a class="btn btn-primary" style="background-color: 6D7938;">Pesan Sekarang</a>
                    </div>

                    <div class="col-sm-5 offset-sm-5 col-md-6 offset-md-0">
                        <div class="card" style="text-align: right;" style="width: auto;">
                            <iframe src=" https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8386059938116!2d116.8566163145385!3d-1.2697542990738715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2df146e9cbff9a73%3A0x1915c6d1e15ee2d1!2sHotel%20Zurich%20Balikpapan!5e0!3m2!1sid!2sid!4v1651226490236!5m2!1sid!2sid" width="auto" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            <div class="card-body" style="background-color: E0E3D5;">
                                <h5 class="card-text" style="text-align: center;">Tempat Terpopuler di Balikpapan</h5>
                                <hr>
                                <div class="container" style="background-color: E0E3D5;">
                                    <div class="row" style="text-align: left;">
                                        <div class="col">
                                            <p class=> Balikpapan Plaza</p>
                                            <p class=> Pantai Kemala</p>
                                            <p class=> Transmart Carrefour</p>
                                            <p class=> Pantai Benua Patra</p>
                                            <p class=> Pantai Melawai</p>
                                        </div>
                                        <div class="col" style="text-align: right;">
                                            <p class=> 2,4 km</p>
                                            <p class=> 4,9 km</p>
                                            <p class=> 5,4 km</p>
                                            <p class=> 5,5 km</p>
                                            <p class=> 5,5 km</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <br> <br><br> <br><br> <br><br> <br><br> <br>
            <h1 class="fw-light" style="font-size: 60; font-family: 'Mulish', sans-serif;">Fasilitas</h1>


    </div>
    </div>
    </div>
    </section>

    </div>
    </div>
    @endforeach

    </div>
    </div>





    @endsection