<%if(request.getAttribute("success_message")!=null){ %>
<div class="alert alert-success alert-dismissible">
  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
  <h5><i class="icon fas fa-check"></i>  <%= request.getAttribute("success_message") %></h5>
</div>
<% } %>

<%if(request.getAttribute("error_message")!=null){ %>
<div class="alert alert-danger alert-dismissible">
  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
  <h5><i class="far fa-times-circle"></i> <%= request.getAttribute("error_message") %></h5>
</div>
<% } %>