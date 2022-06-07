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


    <section class="container-full">
        <div class="row py-lg-5">
            <div class="col-lg-9 col-md-8 mx-auto">
                <div class="btn btn-primary ml-2 mb-4 tambah-data">Tambah Hotel</div>
                <table class="table table-bordered rounded">
                    <thead>
                        <tr>
                            <td>Image</td>
                            <td>Name</td>
                            <td>Address</td>
                            <td>Capacity</td>
                            <td>Feature</td>
                            <td>Price</td>
                            <td>Option</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($hotel_all as $hotel_all)
                        <tr>
                            <td>
                                <img src="{{ url('storage/'.$hotel_all->hotel_image) }}" class="img-fluid rounded-start" alt="...">
                            </td>
                            <td>{{ $hotel_all['name'] }}</td>
                            <td>{{ $hotel_all['address'] }}</td>
                            <td>{{ $hotel_all['capacity'] }}</td>
                            <td>{{ $hotel_all['feature'] }}</td>
                            <td>{{ $hotel_all['price'] }}</td>
                            <td>
                                <a href="/Hotel/{{ $hotel_all['id'] }}" class="btn m-1 btn-dark">Detail</a>
                                <div class="btn m-1 btn-warning edit-button" 
                                    data-id="{{$hotel_all['id']}}"
                                    data-name="{{ $hotel_all['name'] }}"
                                    data-address="{{ $hotel_all['address'] }}"
                                    data-capacity="{{ $hotel_all['capacity'] }}"
                                    data-feature="{{ $hotel_all['feature'] }}"
                                    data-price="{{ $hotel_all['price'] }}"
                                >Edit</div>
                                <div class="btn m-1 btn-danger delete-button" 
                                    data-id="{{$hotel_all['id']}}"
                                    data-name="{{ $hotel_all['name'] }}"
                                    data-address="{{ $hotel_all['address'] }}"
                                    data-capacity="{{ $hotel_all['capacity'] }}"
                                    data-feature="{{ $hotel_all['feature'] }}"
                                    data-price="{{ $hotel_all['price'] }}"
                                >Delete</div>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
    </section>

    <div class="modal fade" id="tambah-modal" role="dialog" aria-labelledby="tambah-modal-label" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <form class="form-tambah">
                        <div class="alert alert-dark text-dark alert-tambah p-0"></div>
                        <h2>Tambah Hotel Baru</h2>
                        <div class="row">
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Name <span class="text-danger">*</span></label>
                                <input type="text" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded" name="name">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Address <span class="text-danger">*</span></label>
                                <input type="text" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded" name="address">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Capacity <span class="text-danger">*</span></label>
                                <input type="number" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded" name="capacity">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Feature <span class="text-danger">*</span></label>
                                <input type="text" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded" name="feature">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Price <span class="text-danger">*</span></label>
                                <input type="number" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded" name="price">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Hotel Image <span class="text-danger">*</span></label>
                                <input type="file" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded" name="hotel_image">
                            </div>
                        </div>
                        <div class="form-group mt-4 w-100">
                            <button type="submit" style="float: right" class="mx-1 btn btn-dark ">Simpan</button>
                            <button type="button" style="float: right" class="mx-1 btn btn-secondary" data-dismiss="modal">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="edit-modal" role="dialog" aria-labelledby="edit-modal-label" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <form class="form-edit">
                        <div class="alert alert-dark text-dark alert-edit p-0"></div>
                        <h2>Edit Hotel</h2>
                        <div class="row">
                            <input type="hidden" class="edit-id">
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Name <span class="text-danger">*</span></label>
                                <input type="text" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded edit-name" name="name">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Address <span class="text-danger">*</span></label>
                                <input type="text" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded edit-address" name="address">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Capacity <span class="text-danger">*</span></label>
                                <input type="text" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded edit-capacity" name="capacity">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Feature <span class="text-danger">*</span></label>
                                <input type="text" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded edit-feature" name="feature">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Price <span class="text-danger">*</span></label>
                                <input type="number" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded edit-price" name="price">
                            </div>
                            <div class="col-sm-12">
                                <label class="small m-0 text-dark">Hotel Image <span class="text-danger">*</span></label>
                                <input type="file" class="mb-3 text-dark py-0 px-3 shadow-none form-control form-control-sm rounded edit-hotel_image" name="hotel_image">
                            </div>
                        </div>
                        <div class="form-group mt-4 w-100">
                            <button type="submit" style="float: right" class="mx-1 btn btn-dark ">Simpan</button>
                            <button type="button" style="float: right" class="mx-1 btn btn-secondary" data-dismiss="modal">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="delete-modal" role="dialog" aria-labelledby="delete-modal-label" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <form class="form-delete">
                        <div class="alert alert-dark text-dark alert-delete p-0"></div>
                        <h2>Hapus Hotel ?</h2>
                        <div class="row">
                            <input type="hidden" class="delete-id">
                        </div>
                        <div class="form-group mt-4 w-100">
                            <button type="submit" style="float: right" class="mx-1 btn btn-danger ">Hapus</button>
                            <button type="button" style="float: right" class="mx-1 btn btn-secondary" data-dismiss="modal">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(".tambah-data").on("click",function(){
            $("#tambah-modal").modal('show')
        })

        $(".edit-button").on("click",function(){
            $(".edit-id").val($(this).data("id"))
            $(".edit-name").val($(this).data("name"))
            $(".edit-address").val($(this).data("address"))
            $(".edit-capacity").val($(this).data("capacity"))
            $(".edit-feature").val($(this).data("feature"))
            $(".edit-price").val($(this).data("price"))
            $(".edit-hotel_image").val($(this).data("hotel_image"))
            $("#edit-modal").modal('show')
        })

        $(".delete-button").on("click",function(){
            $(".delete-id").val($(this).data("id"))
            $("#delete-modal").modal('show')
        })

        $(".form-tambah").on("submit",function(e){
            e.preventDefault()
            $.ajax({
                'url' : `{{url('/api/add-hotel')}}`,
                'type' : 'json',
                'method' : 'post',
                'processData': false,
                'contentType': false,
                'data' : new FormData(this),
                'headers' : {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                    "Authorization": "Bearer <?php echo auth()->user()->createToken('token')->plainTextToken ?>"
                },
                'data' : new FormData(this),
                'success' : function(res){
                    if(res.success == true){
                        $(".alert-tambah").addClass("p-3")
                        $(".alert-tambah").addClass("h4")
                        $(".alert-tambah").html("Data Berhasil Di Tambah")
                        setTimeout(() => {
                            location.reload()
                        },2000)
                    }
                },
                'error' : function(xhr){
                    $(".alert-tambah").html("")
                    let val = JSON.parse(xhr.responseText);
                    $(".alert-tambah").append(val.errors.name[0]+'<br>')
                    $(".alert-tambah").append(val.errors.address[0]+'<br>')
                    $(".alert-tambah").append(val.errors.capacity[0]+'<br>')
                    $(".alert-tambah").append(val.errors.feature[0]+'<br>')
                    $(".alert-tambah").append(val.errors.price[0]+'<br>')
                }
            })
        })

        $(".form-edit").on("submit",function(e){
            e.preventDefault()
            $.ajax({
                'url' : `{{url('/api/edit-hotel')}}/` + $(".edit-id").val(),
                'type' : 'json',
                'method' : 'post',
                'processData': false,
                'contentType': false,
                'data' : new FormData(this),
                'headers' : {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                    "Authorization": "Bearer <?php echo auth()->user()->createToken('token')->plainTextToken ?>"
                },
                'data' : new FormData(this),
                'success' : function(res){
                    if(res.success == true){
                        $(".alert-edit").addClass("p-3")
                        $(".alert-edit").addClass("h4")
                        $(".alert-edit").html("Data Berhasil Di Update")
                        setTimeout(() => {
                            location.reload()
                        },2000)
                    }
                },
                'error' : function(xhr){
                    $(".alert-edit").html("")
                    let val = JSON.parse(xhr.responseText);
                    $(".alert-edit").append(val.errors.name[0]+'<br>')
                    $(".alert-edit").append(val.errors.address[0]+'<br>')
                    $(".alert-edit").append(val.errors.capacity[0]+'<br>')
                    $(".alert-edit").append(val.errors.feature[0]+'<br>')
                    $(".alert-edit").append(val.errors.price[0]+'<br>')
                }
            })
        })

        $(".form-delete").on("submit",function(e){
            e.preventDefault()
            $.ajax({
                'url' : `{{url('/api/delete-hotel')}}/` + $(".delete-id").val(),
                'type' : 'json',
                'method' : 'post',
                'processData': false,
                'contentType': false,
                'data' : new FormData(this),
                'headers' : {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                    "Authorization": "Bearer <?php echo auth()->user()->createToken('token')->plainTextToken ?>"
                },
                'success' : function(res){
                    if(res.success == true){
                        $(".alert-delete").addClass("p-3")
                        $(".alert-delete").addClass("h4")
                        $(".alert-delete").html("Data Berhasil Di Hapus")
                        setTimeout(() => {
                            location.reload()
                        },2000)
                    }
                }
            })
        })
    </script>

    @endsection