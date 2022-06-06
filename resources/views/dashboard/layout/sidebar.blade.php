    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link {{ Request::is('dashboard')? 'active' : '' }}" aria-current="page" href="/dashboard">
              <span data-feather="home"></span>
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ Request::is('dashboard-destinasi*')? 'active' : '' }}" href="/dashboard-destinasi">
              <span data-feather="file"></span>
              Destinasi Wisata
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ Request::is('dashboard-category*')? 'active' : '' }}" href="/dashboard-category">
              <span data-feather="file"></span>
              Kategori Destinasi Wisata
            </a>
          </li>

          <li class="nav-item active border-top border-md-secondary mx-2 my-4">
            <a class="nav-link" href="/" style="margin-left: -0.5rem !important; margin-top: 0.25rem !important;">
              <span data-feather="home"></span>
              Travel Homepage</a>
          </li>

        </ul>
      </div>
    </nav>