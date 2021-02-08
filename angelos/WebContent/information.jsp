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
            <h1 class="m-0">Informaci�n del comercio</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <a href="editinformation.html" type="button" class="btn btn-primary float-right">Editar informaci�n</a>
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
                      <td>Direcci�n:</td>
                      <td>Sarmiento 621</td>
                    </tr>
                    <tr>
                      <td>Tel�fono:</td>
                      <td>3462-512442</td>
                    </tr>
                    <tr>
                      <td>�Retiro o delivery?:</td>
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