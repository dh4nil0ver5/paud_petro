
  
  <aside class="main-sidebar sidebar-dark-primary elevation-4"> 
    <a href="{{ route('cpanels') }}" class="brand-link">
      <img src="{{ url('dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">PIKPG CPanel</span>
    </a> 
    <div class="sidebar"> 
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ url('dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ Auth::user()->name }} </a>
        </div>
      </div> 
      <nav class="mt-2">
        <ul class="nav nav-pills nav-flat nav-legacy nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview">
            <a href="{{ route('ppdb_dashboard') }}" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> PPDB  </p>
            </a> 
          </li>
          <li class="nav-item has-treeview">
            <a href="{{ route('ppdb_dashboard') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Website</p>
            </a> 
          </li>
          <li class="nav-item has-treeview">
            <a href="{{ route('kategori_dashboard') }}" class="nav-link">
              <i class="nav-icon fas fa-tags"></i>
              <p>Kategori</p>
            </a> 
          </li>
          <li class="nav-item has-treeview">
            <a href="{{ route('index_data') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Lainnya</p>
            </a> 
          </li>
 
        </ul>
      </nav> 
    </div> 
  </aside>