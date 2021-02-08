<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.jsp" class="brand-link pb-5">
      <img src="dist/img/logoAngelosRojo.png" alt="Angelo's Logo" class="brand-image">
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Juan Perez</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="./index.jsp" id="button-index" class="nav-link">
              <i class="far fa-circle nav-icon"></i>
              <p>Escritorio</p>
            </a>
          </li>
          <li class="nav-item" id="menu-menu">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-list-alt"></i>
              <p>
                Menú
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./products.jsp" id="button-products" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Productos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./categories.jsp" id="button-categories" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Categorías</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item" id="menu-orders">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-shopping-bag"></i>
              <p>
                Pedidos
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./neworders.jsp" id="button-neworders" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Nuevos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./acceptedorders.jsp" id="button-acceptedorders" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Aceptados</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./closedorders.jsp" id="button-closedorders" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Cerrados</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item" id="menu-settings">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-cog"></i>
              <p>
                Configuración
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="information.jsp" id="button-information" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Información</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="schedule.jsp" id="button-schedule" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Horarios</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>