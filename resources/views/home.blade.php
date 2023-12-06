@extends('layouts.main')

@section('container')

<h1 class="mb-4 text-center">
  KELOMPOK 9 - BLOG
</h1>

<main>
  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">

      <div class="carousel-item active">
        <img src="/img/bg2.png">
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Blog Posts</h1>
            <p>This website provides many blogs that can provide a lot of your knowledge and experience in content on the internet.</p>
            <p><a class="btn btn-lg btn-primary" href="/posts">Read More</a></p>
          </div>
        </div>
      </div>

      <div class="carousel-item">
        <img src="/img/bg3.png">
        <div class="container">
          <div class="carousel-caption">
            <h1>Blogger Comunity</h1>
            <p>Expand your relationship by joining to become a reliable blogger or content creator and grow together.</p>
            <p><a class="btn btn-lg btn-primary" href="/register">Join Now</a></p>
          </div>
        </div>
      </div>

      <div class="carousel-item">
        <img src="/img/bg1.png">
        <div class="container">
          <div class="carousel-caption text-end">
            <h1>Posts are well categorized</h1>
            <p>This makes it easier for you to find reading materials that suit your needs.</p>
            <p><a class="btn btn-lg btn-primary" href="/categories">Browse Categories</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</main>

@endsection
