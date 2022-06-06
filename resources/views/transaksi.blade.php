<!doctype html>
<html>

<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Transaksi - {{ $title }}</title>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <style>
        ::-webkit-scrollbar {
            width: 8px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #888;
        }

        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
            background: #555;
        }

        @import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');

        body {
            background-color: #CBCDC1;
            font-family: 'Montserrat', sans-serif
        }

        .card {
            border: none
        }

        .logo {
            background-color: #E0E3D5
        }

        .totals tr td {
            font-size: 13px
        }

        .footer {
            background-color: #eeeeeea8
        }

        .footer span {
            font-size: 12px
        }

        .product-qty span {
            font-size: 12px;
            color: #dedbdb
        }

        @media print {
            .noprint {
                visibility: hidden;
            }
        }
    </style>
</head>

<body className='snippet-body'>
    <div class="container mt-5 mb-5">

        <div class="row d-flex justify-content-center">

            <div class="col-md-8" style="background-color:#E0E3D5;">

                <div class="card" style="background:#E0E3D5;">


                    <div class="text-left logo p-2 px-5">

                    </div>

                    <div class="invoice p-5">

                        <h5>{{ $title }}</h5>

                        <span class="font-weight-bold d-block mt-4">Hello, {{ $user }}</span>
                        <span>Pesanan anda telah di buat silahkan melanjutkan ke proses pembayaran berdasarkan detail
                            berikut :</span>

                        <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">

                            <table class="table table-borderless">

                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="py-2">

                                                <span class="d-block text-muted">Order Date</span>
                                                <span>{{ $today }}</span>

                                            </div>
                                        </td>

                                        <td>
                                            <div class="py-2">

                                                <span class="d-block text-muted">Order No</span>
                                                <span>MT1233234{{ $hotel->id }}</span>

                                            </div>
                                        </td>

                                        <td>
                                            <div class="py-2">

                                                <span class="d-block text-muted">Payment</span>
                                                <span>COD</span>

                                            </div>
                                        </td>

                                        <td>
                                            <div class="py-2">

                                                <span class="d-block text-muted">Address</span>
                                                <span>{{ $hotel->address }}</span>

                                            </div>
                                        </td>
                                    </tr>
                                </tbody>

                            </table>





                        </div>




                        <div class="product border-bottom table-responsive">

                            <table class="table table-borderless">

                                <tbody>
                                    <tr>
                                        <td width="20%">

                                            <img src="/assets/img/zurichhotell.jpg" class="img-fluid rounded-start" alt="...">

                                        </td>

                                        <td width="60%">
                                            <span class="font-weight-bold">{{ $hotel->name }}</span>
                                            <div class="product-qty">
                                            </div>
                                        </td>
                                        <td width="20%">
                                            <div class="text-right">
                                                <span class="font-weight-bold">{{'Rp. '.$hotel->price }}</span>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row d-flex justify-content-end">

                            <div class="col-md-5">

                                <table class="table table-borderless">

                                    <tbody class="totals">

                                        <tr>
                                            <td>
                                                <div class="text-left">

                                                    <span class="text-muted">Subtotal</span>

                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-right">
                                                    <span>{{'Rp. '.$hotel->price }}</span>
                                                </div>
                                            </td>
                                        </tr>

                                    </tbody>

                                </table>

                            </div>



                        </div>


                        <p>Kami telah mengkonfirmasi pesanan anda</p>
                        <p class="font-weight-bold mb-0">Terimakasih</p>
                        <span>{{ $hotel->name }}</span>

                        <br>
                        <br>

                        <button class="noprint btn btn-secondary" onclick="window.print()"> Print </button>


                    </div>


                    <div class="d-flex justify-content-between footer p-3" style="background:#E0E3D5 ;">

                        <span>{{ $today }}</span>

                    </div>




                </div>

            </div>

        </div>

    </div>
    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
    <script type='text/javascript' src='#'></script>
    <script type='text/javascript' src='#'></script>
    <script type='text/javascript'>
        #
    </script>
    <script type='text/javascript'>
        var myLink = document.querySelector('a[href="#"]');
        myLink.addEventListener('click', function(e) {
            e.preventDefault();
        });
    </script>

</body>

</html>