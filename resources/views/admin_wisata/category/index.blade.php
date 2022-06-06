
@extends('dashboard.layout.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Data Kategori Wisata</h1>
  </div>

  @if(session()->has('success'))
  <div class="alert alert-success col-lg-12 alert-dismissible fade show" role="alert">
    {{ session('success') }}
    <button type="button" class="btn-close" data-dismiss="alert" aria-label="Tutup"></button>
  </div>
  @endif

  <div class="table-responsive col-lg-12">
      <a href="/dashboard-category/create" class="btn btn-primary " style="float: right">Buat Baru</a>
    <table class="table table-striped table-sm">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nama Kategori</th>
          <th scope="col">Aksi</th>
        </tr>
      </thead>
      <tbody>
          @foreach ($data as $post)
          <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $post->destination_category_name }}</td>
            <td>
                <a href="/dashboard-category/{{ $post->destination_category_id }}" class="badge bg-info"><span data-feather="eye"></span></a>
                <a href="/dashboard-category/{{ $post->destination_category_id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard-category/{{ $post->destination_category_id }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="badge bg-danger border-0"onclick="return confirm('Anda yakin ingin menghapus ini?')" ><span data-feather="x-circle"></button>
                </form>
            </td>
          </tr>
          @endforeach
      </tbody>
    </table>
  </div>
@endsection