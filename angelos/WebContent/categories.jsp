<%@ include file="header.jsp" %>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDao"%>
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
            <h1 class="m-0">Categorías</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <a href="categoryController?action=create" type="button" class="btn btn-primary float-right">Nuevo</a>
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
                <h3 class="card-title">Listado de categorías</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Nombre</th>
                    <th>Productos</th>
                    <th>Disponible</th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                  <% for(Category c:CategoryDao.getAll()){ %>
                  <tr>
                    <td><%= c.getName() %></td>
                    <td></td>
                    <td><% if(c.getState()==true){ %> Disponible <%}else{ %> No disponible <%} %></td>
                    <td>
                      <a href="categoryController?action=edit&id=<%= c.getId()%>"><i class="fas fa-edit"></i></a>
                      <a href="categoryController?action=destroy&id=<%= c.getId()%>"><i class="fas fa-trash"></i></a>
                    </td>
                  </tr>
                  <%} %>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Nombre</th>
                    <th>Productos</th>
                    <th>Disponible</th>
                    <th></th>
                  </tr>
                  </tfoot>
                </table>
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