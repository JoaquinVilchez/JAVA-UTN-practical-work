<%@ include file="header.jsp" %>
<%@page import="model.Product"%>
<%@page import="dao.ProductDao"%>
<%@page import="dao.CategoryDao"%>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <%@ include file="header.jsp" %>
  <%@ include file="sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Productos</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <a href="newproduct.jsp" type="button" class="btn btn-primary float-right">Nuevo</a>
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
            <%@ include file="messages.jsp" %>
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Listado de productos</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <div class="table-hover">
                <table id="example1" class="table table-bordered">
                  <thead>
                  <tr>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Categoría</th>
                    <th>Precio</th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                  <% for(Product p:ProductDao.getAll()){ %>
                  <tr>
                    <td><%= p.getName() %></td>
                    <td>
	                    <% if(p.getDescription()==""){ %>
	                    	<span>-</span>
	                    <%}else{ %>
	                    	<%= p.getDescription() %>
	                    <%} %>
                    </td>
                    <td><%= CategoryDao.find(p.getCategory()).getName() %></td>
                    <td>$<%= p.getPrice() %></td>
                    <td>
                      <a href="editproduct.jsp"><i class="fas fa-edit"></i></a>
                      <a href="#"><i class="fas fa-trash"></i></a>
                    </td>
                  </tr>
                  <% } %>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Categoría</th>
                    <th>Precio</th>
                    <th></th>
                  </tr>
                  </tfoot>
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
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp" %>