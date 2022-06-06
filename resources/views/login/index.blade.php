<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

  <!-- Custom styles for this template -->
  <link href="login.css" rel="stylesheet">

</head>


<body class="text-center" style="background-color:E0E3D5;">

  @if(session()->has('loginError'))
  <div class="alert alert-danger alert-dismissible fade show" role="alert">
    {{ session('loginError') }}
    <button type="button" class="btn-close" data-bs-dismis="alert" aria-label="Tutup">

    </button>
  </div>
  @endif

  <div class="row justify-content-center mt-5 w-100">
    <div class="col-md-5">
      <main class="form-signin" style="">
        <h1 class="h1  text-center mt-5" style="font-family: 'Mulish', sans-serif;">MASUK</h1>
        <form class="m-5" action="/login" method="post">
          @csrf
          <div class="form-floating mb-3">
            <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required value="{{ old('email') }}">
            <label for="email">Alamat Email</label>
            @error('email')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
            @enderror
          </div>
          <div class="form-floating mb-4">
            <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
            <label for="password">Kata Sandi</label>
          </div>
          <button class="w-100 mb-3 btn btn-lg btn-primary" type="submit">Masuk</button>
        </form>
      </main>
    </div>
  </div>





</body>

</html>