<%@ include file="header.jsp" %>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDao"%>

<% Category category = CategoryDao.find(Integer.parseInt(request.getParameter("id")));%>

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
            <h1 class="m-0">Editar categoría</h1>
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
                <form action="categoryController?action=update&id=<%= category.getId() %>" method="POST">
                  <div class="card-body">
                      <div class="form-group">
                            <div class="row">
                              <div class="col-4">
                                  <label for="exampleInputEmail1">Nombre</label>
                                  <input type="name" name="name" class="form-control" id="exampleInputEmail1" placeholder="Nombre de la categoría" value="<%= category.getName()%>">
                              </div>
                          </div>
                      </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input type="checkbox" name="state" class="form-check-input" id="exampleCheck1" <% if(category.getState()){ %> checked <%} %>>
                        <label class="form-check-label" for="exampleCheck1">Esta categoría está disponible</label>
                      </div>
                    </div>
                    
                  </div>
                  <!-- /.card-body -->
  
                  <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Editar</button>
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
  <%@ include file="footer.jsp" %>
