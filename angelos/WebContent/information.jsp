<%@ include file="header.jsp" %>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

	<%@ include file="navbar.jsp" %>
	<%@ include file="sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Información del comercio</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <a href="editinformation.html" type="button" class="btn btn-primary float-right">Editar información</a>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->


    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <%@ include file="messages.jsp" %>
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <tr>
                      <td>Nombre del comercio:</td>
                      <td>Angelo's</td>
                    </tr>
                    <tr>
                      <td>Dirección:</td>
                      <td>Sarmiento 621</td>
                    </tr>
                    <tr>
                      <td>Teléfono:</td>
                      <td>3462-512442</td>
                    </tr>
                    <tr>
                      <td>¿Retiro o delivery?:</td>
                      <td>Ambos</td>
                    </tr>
                    <tr>
                      <td>Precio delivery:</td>
                      <td>$70</td>
                    </tr>
                    <tr>
                      <td>Tiempo delivery:</td>
                      <td>45 minutos</td>
                    </tr>
                  </table>
                </div>
              </div>
              <!-- /.card-body -->
            </div> 
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    
  </div>
  <%@ include file="footer.jsp" %>