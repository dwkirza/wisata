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

    <div class="container-full">
        <div class="col-12 col-sm-6 col-md-6 col-lg-10" style="color: black;">
            @foreach ($hotel_all as $hotel_all)
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/img/zurichhotel.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">{{ $hotel_all['name'] }}</h5>
                            <p class="card-text"> {{ $hotel_all['address'] }}</i></p>
                            <i class="fa-solid fa-wifi fa-sm"> wi-fi</i> &#160; <i
                                class="fa-solid fa-person-swimming fa-sm"> kolam renang</i> &#160; <i
                                class="fa-solid fa-utensils fa-sm"> Sarapan</i>
                            <br><br>
                            <h4 class="card-text">Rp.&nbsp;{{ $hotel_all['price'] }}</p> <a href="/info-kamar"
                                    class="btn btn-primary">Pesan</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>


    @endsection