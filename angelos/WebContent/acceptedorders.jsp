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
            <h1 class="m-0">Pedidos aceptados</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <a href="neworder.jsp" type="button" class="btn btn-primary float-right">Crear un pedido</a>
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
            <!-- Order Card -->
            <div class="card card-primary">
                  <div class="card-body">
                      <div class="row">
                          <div class="col-12">
                              <div class="row d-flex align-items-center justify-content-between">
                                  <span class="mx-4"><h3> <strong>#AC87E9</strong> </h3></span>
                                  <ul class="list-group list-group-horizontal">
                                      <li class="list-group-item"><span><strong>Nombre:</strong> Joaquin Vilchez</span></li>
                                      <li class="list-group-item"><span><strong>Hora pedido:</strong> 22:10hs</span></li>
                                      <li class="list-group-item"><span><strong>Entrega:</strong> Delivery</span></li>
                                      <li class="list-group-item"><span><strong>Direccion:</strong> Chacacbuco 315</span></li>
                                      <li class="list-group-item"><span><strong>Telefono:</strong> 3462642680</span></li>
                                  </ul>
                                  <span class="mx-4"><a href="#" data-toggle="modal" data-target="#order-details"><i class="fas fa-info-circle" style="font-size: 25px;" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ver detalles"></i></a></span>
                              </div> 
                          </div>
                      </div>
                  </div>
                  <!-- /.card-body -->

                  <div class="card-footer">
                        <button type="submit" class="btn btn-success float-right mx-1">Cerrar</button>
                        <button type="submit" class="btn btn-danger float-right mx-1">Cancelar</button>
                  </div>
            </div>
            <!-- Order card-->
            <!-- Order Card -->
            <div class="card card-primary">
              <div class="card-body">
                  <div class="row">
                      <div class="col-12">
                          <div class="row d-flex align-items-center justify-content-between">
                              <span class="mx-4"><h3> <strong>#AC87E9</strong> </h3></span>
                              <ul class="list-group list-group-horizontal">
                                  <li class="list-group-item"><span><strong>Nombre:</strong> Joaquin Vilchez</span></li>
                                  <li class="list-group-item"><span><strong>Hora pedido:</strong> 22:10hs</span></li>
                                  <li class="list-group-item"><span><strong>Entrega:</strong> Delivery</span></li>
                                  <li class="list-group-item"><span><strong>Direccion:</strong> Chacacbuco 315</span></li>
                                  <li class="list-group-item"><span><strong>Telefono:</strong> 3462642680</span></li>
                              </ul>
                              <span class="mx-4"><a href="#" data-toggle="modal" data-target="#order-details"><i class="fas fa-info-circle" style="font-size: 25px;" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ver detalles"></i></a></span>
                          </div> 
                      </div>
                  </div>
              </div>
              <!-- /.card-body -->

              <div class="card-footer">
                    <button type="submit" class="btn btn-success float-right mx-1">Cerrar</button>
                    <button type="submit" class="btn btn-danger float-right mx-1">Cancelar</button>
              </div>
        </div>
        <!-- Order card-->
          </div>
          <!-- /.col -->    
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    
  </div>
  
<div class="modal fade" id="order-details">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Detalles del pedido</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-12 pb-0">
            <hr>
            <table class="table table-borderless table table-sm">
                <thead>
                  <tr>
                    <th scope="col">Cantidad</th>
                    <th scope="col">Producto</th>
                    <th scope="col">Precio unitario</th>
                    <th scope="col">Subtotal</th>
                  </tr>
                </thead>
                <tbody class="table-bordered">
                  <tr>
                    <td>x1</td>
                    <td>Pizza Napolitana</td>
                    <td>$500</td>
                    <td>$500</td>
                  </tr>
                  <tr>
                    <td>x6</td>
                    <td>Empanadas de jamon y queso</td>
                    <td>$50</td>
                    <td>$350</td>
                  </tr>
                  <tr>
                    <td>x1</td>
                    <td>Coca Cola 1,5LT</td>
                    <td>$150</td>
                    <td>$150</td>
                  </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col">Delivery</th>
                        <th scope="col">$50</th>
                    </tr>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col">Total</th>
                        <th scope="col">$1050</th>
                    </tr>
                </tfoot>
              </table>
          </div>
        </div>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
  
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp" %>
