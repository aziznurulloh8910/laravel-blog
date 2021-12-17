@extends('dashboard.layouts.main')

@section('container')
<div class="container">
  <div class="row my-3">
    <div class="col-lg-8">
      <h2 class="mb-3">{{ $post->title }}</h2>

      <a href="/dashboard/posts" class="btn btn-sm btn-outline-dark"> <span data-feather="arrow-left"></span> Back to all My Post</a>
      <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-sm btn-outline-dark"> <span data-feather="edit"></span> Edit</a>
      <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
        @method('delete')
        @csrf
        <button class="btn btn-sm btn-outline-dark" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span> Delete</button>
      </form>

        @if ($post->image)
          <div class="mt-2">
            <img src="{{ asset('storage/'. $post->image) }}" class="img-fluid" alt="{{ $post->category->name }}">
          </div>
        @else
          <img src="https://source.unsplash.com/1200x500?{{ $post->category->name }}" class="img-fluid mt-2" alt="{{ $post->category->name }}">
        @endif

      <article class="my-3 fs-5">
        {!! $post->body !!}
      </article>
      
      <a href="/dashboard/posts">Back to posts</a>
    </div>
  </div>
</div>
@endsection