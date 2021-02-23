<%@ include file="header.jsp" %>
<%@page import="model.Product"%>
<%@page import="model.Category"%>
<%@page import="dao.ProductDao"%>
<%@page import="dao.CategoryDao"%>

<%
	Product product = ProductDao.find(Integer.parseInt(request.getParameter("id")));
%>

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
            <h1 class="m-0">Editar producto</h1>
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
                <form action="productController?action=update&id=<%= request.getParameter("id") %>" method="POST">
                  <div class="card-body">
                      <div class="form-group">
                              <div class="row">
                              <div class="col-4">
                                  <label for="exampleInputEmail1">Nombre</label>
                                  <input type="name" name="name" class="form-control" id="exampleInputEmail1" placeholder="Nombre del producto" value="<%=product.getName()%>">
                              </div>
                              <div class="col-4">
                                  <label>Categoría</label>
                                  <select class="custom-select form-control" name="category">
                                  <% for(Category c:CategoryDao.getAll()) {%>
                                      <option value="<%= c.getId() %>" <% if(product.getCategory()==c.getId()){ %> selected <%} %>> <%= c.getName() %> <% if(c.getState()==false){ %>(No disponible)<%} %></option>
                                  <% } %>
                                  </select>
                              </div>
                              <div class="col-4">
                                <label for="exampleInputEmail1">Precio</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text">$</span>
                                    </div>
                                    <input name="price" type="text" class="form-control" value="<%=product.getPrice()%>">
                                </div>
                            </div>
                          </div>
                      </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-6">
                                <label for="exampleInputEmail1">Descripción</label>
                                <textarea name="description" class="form-control" cols="30" rows="3" placeholder="Descripción del producto" value="<%=product.getDescription()%>"><%=product.getDescription()%></textarea>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputFile">Imágen</label>
                                  <div class="input-group">
                                    <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="exampleInputFile" disabled="disabled">
                                    <label class="custom-file-label" for="exampleInputFile">Elegir archivo</label>
                                    </div>
                                </div>
                                </div>
                                <div class="form-check">
                                <input name="state" type="checkbox" class="form-check-input" id="exampleCheck1" <% if(product.getAvailable()){ %> checked <%} %>>
                                <label class="form-check-label" for="exampleCheck1">Este producto está disponible</label>
                                </div>
                            </div>
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
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp"%>