<!-- Top Header Start -->
<div class="top-header">
  <div class="container">
      <div class="row align-items-center">
          <div class="col-lg-3 col-md-4">
              <div class="logo">
                  <a href="">
                      <img src="img/momentum.jpg" alt="Logo">
                  </a>
              </div>
          </div>
          <div class="col-lg-6 col-md-4">
              <div class="search">
                <form action="/posts">
                  @if (request('category'))
                    <input type="hidden" name="category" value="{{ request('category') }}">
                  @endif
                  @if (request('author'))
                    <input type="hidden" name="author" value="{{ request('author') }}">
                  @endif
                  <input type="text" placeholder="Search.." name="search" value="{{ request('search') }}">
                  <button><i class="fa fa-search"></i></button>
                </form>
              </div>
          </div>
          <div class="col-lg-3 col-md-4">
              <div class="social">
                  <a href=""><i class="fab fa-twitter"></i></a>
                  <a href=""><i class="fab fa-facebook"></i></a>
                  <a href=""><i class="fab fa-instagram"></i></a>
                  <a href=""><i class="fab fa-youtube"></i></a>
              </div>
          </div>
      </div>
  </div>
</div>
<!-- Top Header End -->

<!-- Header Start -->
<div class="header">
  <div class="container">
      <nav class="navbar navbar-expand-md bg-dark navbar-dark">
          <a href="#" class="navbar-brand">MENU</a>
          <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
              <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
              <div class="navbar-nav m-auto">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link {{ ($active === "home") ? 'active' : '' }}" href="/">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{ ($active === "posts") ? 'active' : '' }}" href="/posts">News</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{ ($active === "about") ? 'active' : '' }}" href="/about">About</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{ ($active === "categories") ? 'active' : '' }}" href="/categories">Categories</a>
                  </li>
                </ul>

                <ul class="navbar-nav ms-auto">
                  @auth
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Wellcome, {{ auth()->user()->name }}
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-sidebar-reverse"></i> My Dashboard</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li>
                        <form action="/logout" method="post">
                          @csrf
                          <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-in-right"></i> Logout</button>
                        </form>
                      </li>
                    </ul>
                  </li>
                  @else
                  <li class="nav-item">
                    <a href="/login" class="nav-link {{ ($active === "login") ? 'active' : '' }}"><i class="bi bi-box-arrow-in-right"></i>Login</a>
                  </li>
                  @endauth
                </ul>
              </div>
          </div>
      </nav>
  </div>
</div>
<!-- Header End -->
