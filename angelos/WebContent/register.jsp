<%@ include file="header.jsp" %>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
	<img alt="logo" src="dist/img/logoAngelosRojo.png" width="150px">
  </div>

	<div class="row">
		<div class="col-12">
			<%@ include file="messages.jsp" %>
		</div>
	</div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Crear un nuevo usuario</p>

      <form action="userController?action=registrar" method="POST">
        <div class="input-group mb-3">
          <input name="firstName" type="text" class="form-control" placeholder="Nombre">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="lastName"  type="text" class="form-control" placeholder="Apellido">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="email"  type="email" class="form-control" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="password" type="password" class="form-control" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="passwordConfirm" type="password" class="form-control" placeholder="Retype password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- /.col -->
          <div class="col-12">
            <button type="submit" class="btn btn-primary btn-block">Registrarme</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <a style="text-align:center" href="login.jsp" class="text-center">Ya estoy registrado</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>
