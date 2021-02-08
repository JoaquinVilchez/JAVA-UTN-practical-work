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
            <h1 class="m-0">Crear nuevo pedido</h1>
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
                <form>
                  <div class="card-body">
                      <div class="form-group">
                            <div class="row">
                            <div class="col-4">
                                <label for="exampleInputEmail1">Nombre</label>
                                <input type="name" class="form-control" id="exampleInputEmail1" placeholder="Nombre del solicitante">
                            </div>
                            <div class="col-4">
                                <label for="exampleSelectBorder">Tipo de entrega</label>
                                <select class="custom-select form-control" id="exampleSelectBorder">
                                    <option>Delivery</option>
                                    <option>Retiro en local</option>
                                </select>
                            </div>
                            <div class="col-4">
                                <label for="exampleInputEmail1">Dirección</label>
                                <input type="name" class="form-control" id="exampleInputEmail1" placeholder="Dirección de entrega">
                            </div>
                            </div>
                      </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-12">

                            <div class="form-group">
                                <label>Producto</label>
                                <select class="form-control select2" style="width: 100%;">
                                <option selected="selected">Alabama</option>
                                <option>Alaska</option>
                                <option>California</option>
                                <option>Delaware</option>
                                <option>Tennessee</option>
                                <option>Texas</option>
                                <option>Washington</option>
                                </select>
                            </div>

                            </div>
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
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->

  </div>
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp" %>
