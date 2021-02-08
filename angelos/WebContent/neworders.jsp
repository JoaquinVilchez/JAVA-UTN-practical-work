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
            <h1 class="m-0">Nuevos pedidos</h1>
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
                              <div class="row d-flex align-items-center">
                                  <span class="mr-4"><h3> <strong>#AC87E9</strong> </h3></span>
                                  <ul class="list-group list-group-horizontal">
                                      <li class="list-group-item"><span><strong>Nombre:</strong> Joaquin Vilchez</span></li>
                                      <li class="list-group-item"><span><strong>Hora pedido:</strong> 22:10hs</span></li>
                                      <li class="list-group-item"><span><strong>Entrega:</strong> Delivery</span></li>
                                      <li class="list-group-item"><span><strong>Dirección:</strong> Chacacbuco 315</span></li>
                                      <li class="list-group-item"><span><strong>Teléfono:</strong> 3462642680</span></li>
                                  </ul>
                              </div> 
                          </div>
                      </div>
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
                  <!-- /.card-body -->
  
                  <div class="card-footer">
                        <button type="submit" class="btn btn-success float-right mx-1">Aceptar</button>
                        <button type="submit" class="btn btn-danger float-right mx-1">Rechazar</button>
                  </div>
            </div>
            <!-- Order card-->

            <!-- Order Card -->
            <div class="card card-primary">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="row d-flex align-items-center">
                                <span class="mr-4"><h3> <strong>#AC87E9</strong> </h3></span>
                                <ul class="list-group list-group-horizontal">
                                    <li class="list-group-item"><span><strong>Nombre:</strong> Joaquin Vilchez</span></li>
                                    <li class="list-group-item"><span><strong>Hora pedido:</strong> 22:10hs</span></li>
                                    <li class="list-group-item"><span><strong>Entrega:</strong> Delivery</span></li>
                                    <li class="list-group-item"><span><strong>Direccion:</strong> Chacacbuco 315</span></li>
                                    <li class="list-group-item"><span><strong>Telefono:</strong> 3462642680</span></li>
                                </ul>
                            </div> 
                        </div>
                    </div>
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
                <!-- /.card-body -->

                <div class="card-footer">
                      <button type="submit" class="btn btn-success float-right mx-1">Aceptar</button>
                      <button type="submit" class="btn btn-danger float-right mx-1">Rechazar</button>
                </div>
          </div>
          <!-- Order card-->

          <!-- Order Card -->
          <div class="card card-primary">
            <div class="card-body">
                <div class="row">
                    <div class="col-12">
                        <div class="row d-flex align-items-center">
                            <span class="mr-4"><h3> <strong>#AC87E9</strong> </h3></span>
                            <ul class="list-group list-group-horizontal">
                                <li class="list-group-item"><span><strong>Nombre:</strong> Joaquin Vilchez</span></li>
                                <li class="list-group-item"><span><strong>Hora pedido:</strong> 22:10hs</span></li>
                                <li class="list-group-item"><span><strong>Entrega:</strong> Delivery</span></li>
                                <li class="list-group-item"><span><strong>Direccion:</strong> Chacacbuco 315</span></li>
                                <li class="list-group-item"><span><strong>Telefono:</strong> 3462642680</span></li>
                            </ul>
                        </div> 
                    </div>
                </div>
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
            <!-- /.card-body -->

            <div class="card-footer">
                  <button type="submit" class="btn btn-success float-right mx-1">Aceptar</button>
                  <button type="submit" class="btn btn-danger float-right mx-1">Rechazar</button>
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
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp" %>