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


    <section class=" text-center container-full">
        <div class="row py-lg-5">
            <div class="col-lg-9 col-md-8 mx-auto">
                @foreach ($hotel_all as $hotel_all)

            </div>
            <div class="card mb-3" style="background-color:E0E3D5 ;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/img/zurichhotell.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">

                        <div class="card-body" style="text-align: left;">
                            <h3 class="card-title">{{ $hotel_all['name'] }}</h3>
                            <p class="card-text">{{ $hotel_all['capacity'] }}</p>
                            <hr>
                            <h5 class="card-text"><i class="fa-regular fa-location-pin">{{ $hotel_all['address'] }}</i>
                            </h5>
                            <p class="card-text">{{ $hotel_all['feature'] }}</p>
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <h3 class="card-text">Rp.&nbsp;{{ $hotel_all['price'] }} - Rp.&nbsp;{{
                                            $hotel_all['price']+400000 }}</h3>
                                    </div>
                                    <div class="col" style="text-align: right;">
                                        <a href="/Hotel/{{ $hotel_all['id'] }}" class="btn btn-primary"
                                            style="background-color: 6D7938;">Pesan</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                @endforeach
            </div>
    </section>


    @endsection