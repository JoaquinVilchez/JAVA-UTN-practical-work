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
            <h1 class="m-0">Pedidos cerrados</h1>
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
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Pedidos cerrados</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>Codigo</th>
                      <th>Nombre</th>
                      <th>Fecha de finalizacion</th>
                      <th>Precio</th>
                      <th>Detalle</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>AC799H2</td>
                      <td>Juan Perez</td>
                      <td>11 de Enero</td>
                      <td>$500</td>
                      <td><span class="mx-4"><a href="#" data-toggle="modal" data-target="#order-details"><i class="fas fa-info-circle" style="font-size: 25px;" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ver detalles"></i></a></span></td>
                    </tr>
                    <tr>
                      <td>AC799H2</td>
                      <td>Juan Perez</td>
                      <td>11 de Enero</td>
                      <td>$500</td>
                      <td><span class="mx-4"><a href="#" data-toggle="modal" data-target="#order-details"><i class="fas fa-info-circle" style="font-size: 25px;" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ver detalles"></i></a></span></td>
                    </tr>
                    <tr>
                      <td>AC799H2</td>
                      <td>Juan Perez</td>
                      <td>11 de Enero</td>
                      <td>$500</td>
                      <td><span class="mx-4"><a href="#" data-toggle="modal" data-target="#order-details"><i class="fas fa-info-circle" style="font-size: 25px;" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ver detalles"></i></a></span></td>
                    </tr>
                    <tr>
                      <td>AC799H2</td>
                      <td>Juan Perez</td>
                      <td>11 de Enero</td>
                      <td>$500</td>
                      <td><span class="mx-4"><a href="#" data-toggle="modal" data-target="#order-details"><i class="fas fa-info-circle" style="font-size: 25px;" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ver detalles"></i></a></span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    
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
    
  </div>
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp" %>
