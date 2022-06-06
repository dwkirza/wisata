
@extends('dashboard.layout.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    @auth
      <h1 class="h2">Selamat Datang {{ auth()->user()->users_first_name }}</h1>
    @endauth
  </div>
@endsection