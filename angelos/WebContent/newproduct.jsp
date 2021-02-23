<%@ include file="header.jsp" %>
<%@page import="dao.CategoryDao"%>
<%@page import="model.Category"%>

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
                <form action="productController?action=store" method="POST"  enctype="multipart/form-data"> 
                  <div class="card-body">
                      <div class="form-group">
                              <div class="row">
                              <div class="col-4">
                                  <label>Nombre</label>
                                  <input type="text" name="name" class="form-control" placeholder="Nombre del producto">
                              </div>
                              <div class="col-4">
                                  <label>Categoría</label>
                                  <select class="custom-select form-control" name="category">
                                  <% for(Category c:CategoryDao.getAll()) {%>
                                      <option value="<%= c.getId() %>"><%= c.getName() %> <% if(c.getState()==false){ %>(No disponible)<%} %></option>
                                  <% } %>
                                  </select>
                              </div>
                              <div class="col-4">
                                <label>Precio</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text">$</span>
                                    </div>
                                    <input type="text" class="form-control" name="price">
                                </div>
                            </div>
                          </div>
                      </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-6">
                                <label>Descripción</label>
                                <textarea name="description" class="form-control" cols="30" rows="3" placeholder="Descripción del producto"></textarea>
                            </div>
                            <div class="col-6">
                                <div class="form-group">	
                                <label>Imágen</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                    <input type="file" class="custom-file-input" name="picture" disabled="disabled">
                                    <label class="custom-file-label">Elegir archivo</label>
                                    </div>
                                </div>
                                </div>
                                <div class="form-check">
                                <input type="checkbox" class="form-check-input" name="state" checked>
                                <label class="form-check-label">Este producto está disponible</label>
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
