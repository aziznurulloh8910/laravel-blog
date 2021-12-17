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



{{-- 
<main>
  <div class="container py-4">

    <div class="p-5 mb-4 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">Custom jumbotron</h1>
        <p class="col-md-8 fs-4">Using a series of utilities, you can create this jumbotron, just like the one in previous versions of Bootstrap. Check out the examples below for how you can remix and restyle it to your liking.</p>
        <button class="btn btn-primary btn-lg" type="button">Example button</button>
      </div>
    </div>

    <div class="row align-items-md-stretch">
      <div class="col-md-6">
        <div class="h-100 p-5 text-white bg-dark rounded-3">
          <h2>Change the background</h2>
          <p>Swap the background-color utility and add a `.text-*` color utility to mix up the jumbotron look. Then, mix and match with additional component themes and more.</p>
          <button class="btn btn-outline-light" type="button">Example button</button>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
          <h2>Add borders</h2>
          <p>Or, keep it light and add a border for some added definition to the boundaries of your content. Be sure to look under the hood at the source HTML here as we've adjusted the alignment and sizing of both column's content for equal-height.</p>
          <button class="btn btn-outline-secondary" type="button">Example button</button>
        </div>
      </div>
    </div>

    <footer class="pt-3 mt-4 text-muted border-top">
      &copy; 2021
    </footer>
  </div>
</main> --}}

@endsection