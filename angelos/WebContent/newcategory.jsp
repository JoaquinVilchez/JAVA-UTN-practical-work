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
            <h1 class="m-0">Nueva categoría</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <a href="categories.jsp" type="button" class="btn btn-primary float-right">Cancelar</a>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->


    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card card-primary">
                <!-- /.card-header -->
                <!-- form start -->
                <form action="categoryController" method="POST">
                  <div class="card-body">
                      <div class="form-group">
                            <div class="row">
                              <div class="col-4">
                                  <label >Nombre</label>
                                  <input type="text" name="name" class="form-control" placeholder="Nombre de la categoría">
                              </div>
                          </div>
                      </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" name="available" checked>
                        <label class="form-check-label">Esta categoría está disponible</label>
                      </div>
                    </div>
                    
                  </div>
                  <!-- /.card-body -->
  
                  <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Crear</button>
                  </div>
                </form>
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
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp"%>