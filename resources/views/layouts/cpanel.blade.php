<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>PIKPG Cpanel</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{{ url('plugins/fontawesome-free/css/all.min.css') }}">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{ url('plugins/overlayScrollbars/css/OverlayScrollbars.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ url('dist/css/adminlte.min.css') }}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style>
  .main-footer-custom{ text-size: 18px; hight}
  .disable{ display: none; }
  .mar-1{ margin-left: 10%;} 
  .btn_add{ margin-bottom:1%;}
  /* .layout-fixed{ overflow: hidden; } */
  </style>
  <link rel="stylesheet" href="{{ url('dataTables/datatables.min.css') }}"/>
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">

<script src="{{ url('plugins/jquery/jquery.min.js') }}"></script> 
<script src="{{ url('plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script> 
<script type="text/javascript" src="{{ url('dataTables/datatables.min.js') }}"></script>
<script src="{{ url('plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') }}"></script> 
<script src="{{ url('dist/js/adminlte.js') }}"></script> 
<script src="{{ url('dist/js/demo.js') }}"></script> 
<script src="{{ url('plugins/jquery-mousewheel/jquery.mousewheel.js') }}"></script>
<script src="{{ url('plugins/raphael/raphael.min.js') }}"></script>
<script src="{{ url('plugins/jquery-mapael/jquery.mapael.min.js') }}"></script>
<script src="{{ url('plugins/jquery-mapael/maps/usa_states.min.js') }}"></script>
<script src="{{ url('plugins/chart.js/Chart.min.js') }}"></script>   

<div class="wrapper"> 
  <nav class="main-header navbar navbar-expand navbar-white navbar-light"> 
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li> 
    </ul> 
    <ul class="navbar-nav ml-auto">  
      @guest
          <li class="nav-item">
              <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
          </li>
          @if (Route::has('register'))
              <li class="nav-item">
                  <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
              </li>
          @endif
      @else
          <li class="nav-item dropdown">
              <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                  {{ Auth::user()->name }} <span class="caret"></span>
              </a>

              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="{{ route('logout') }}"
                      onclick="event.preventDefault();
                                    document.getElementById('logout-form').submit();">
                      {{ __('Logout') }}
                  </a>

                  <form id="logout-form" action="index.html" method="POST" style="display: none;">
                      @csrf
                  </form>
              </div>
          </li>
      @endguest 
    </ul>
  </nav>
  @extends('admin.layout.sidebar')
  
  <div class="content-wrapper"> 
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">{{ $title }}</h1>
          </div> 
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="">Home</a></li>
              @if ($page == "")
                <li class="breadcrumb-item active">Dashboard</a></li> 
              @else
                <li class="breadcrumb-item"><a href="{{ route('cpanels') }}">Dashboard</a></li>
                <li class="breadcrumb-item active">{{ $page }}</li>
              @endif
            </ol>
          </div> 
        </div> 
      </div> 
    </div>
    
    <section class="content">
      @yield('content') 
    </section> 
  </div>
  
</div> 

@extends('admin.layout.footer')
</body>
</html>
