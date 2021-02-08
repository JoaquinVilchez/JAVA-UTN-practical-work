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
            <h1 class="m-0">Nuevo producto</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <a href="products.jsp" type="button" class="btn btn-primary float-right">Cancelar</a>
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
                                  <input type="name" class="form-control" id="exampleInputEmail1" placeholder="Nombre del producto">
                              </div>
                              <div class="col-4">
                                  <label for="exampleSelectBorder">Categoría</label>
                                  <select class="custom-select form-control" id="exampleSelectBorder">
                                      <option>Value 1</option>
                                      <option>Value 2</option>
                                      <option>Value 3</option>
                                  </select>
                              </div>
                              <div class="col-4">
                                <label for="exampleInputEmail1">Precio</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text">$</span>
                                    </div>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                          </div>
                      </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-6">
                                <label for="exampleInputEmail1">Descripción</label>
                                <textarea name="description" class="form-control" cols="30" rows="3" placeholder="Descripción del producto"></textarea>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                <label for="exampleInputFile">Imágen</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="exampleInputFile">
                                    <label class="custom-file-label" for="exampleInputFile">Elegir archivo</label>
                                    </div>
                                </div>
                                </div>
                                <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1" checked>
                                <label class="form-check-label" for="exampleCheck1">Este producto está disponible</label>
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
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    
  </div>
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp" %>
