<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Modificar Usuario</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/8e9e769e03.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <script src="script.js"></script>
    <!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href=<%=request.getContextPath()%>/listarusuarios.jsp><i class="fas fa-shopping-basket"></i> Tiendita Generica del 2</a>
		</div>
	</nav>

	<!-- Navbar modulos-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
      
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <div class="dropdown">
  <a class="nav-link active" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-user-tie"></i> Usuarios
  </a>
<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/listarusuarios.jsp><i class="fas fa-list"></i> Lista de Usuarios</a></li>
    <li><a class="dropdown-item " href=<%=request.getContextPath()%>/insertarusuario.jsp><i class="fas fa-user-plus"></i> Insertar Usuario</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/eliminarusuario.jsp><i class="fas fa-trash-alt"></i> Eliminar Usuario</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/actualizarusuarios.jsp><i class="fas fa-user-cog"></i> Modificar Usuario</a></li>
    <li><a class="dropdown-item"href=<%=request.getContextPath()%>/consultarusuario.jsp><i class="fas fa-search"></i> Buscar Usuario</a></li>
  </ul>
</div>
<div class="dropdown">
  <a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-address-book"></i> Clientes
  </a>

  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/listarclientes.jsp><i class="fas fa-list"></i> Lista de Cliente</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/insertarcliente.jsp><i class="fas fa-user-plus"></i> Insertar Cliente</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/eliminarcliente.jsp><i class="fas fa-trash-alt"></i> Eliminar Cliente</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/actualizarcliente.jsp><i class="fas fa-user-cog"></i> Modificar Cliente</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/consultarcliente.jsp><i class="fas fa-search"></i> Buscar Cliente</a></li>
  </ul>
</div>
 <div class="dropdown">
  <a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i> Proveedores
  </a>

  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/listarproveedores.jsp><i class="fas fa-list"></i> Lista de Proveedores</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/insertarproveedor.jsp><i class="fas fa-user-plus"></i> Insertar Proveedor</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/eliminarproveedor.jsp><i class="fas fa-trash-alt"></i> Eliminar Proveedor</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/actualizarproveedor.jsp><i class="fas fa-user-cog"></i> Modificar Proveedor</a></li>
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/consultarproveedor.jsp><i class="fas fa-search"></i> Buscar Proveedor</a></li>
  </ul></div>

<div class="dropdown">
  <a class="nav-link " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i> Productos
  </a>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/insertarproducto.jsp><i class="fas fa-list"></i> Carga productos</a></li>
  </ul>
  </div>
  <div class="dropdown">
  <a class="nav-link  " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i> Ventas
  </a>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/ventas.jsp><i class="fas fa-list"></i> Diligenciar venta</a></li>
  </ul>
 </div>
<div class="dropdown">
  <a class="nav-link " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i>Reportes</a>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/reportes.jsp><i class="fas fa-list"></i> mostrar reportes</a></li>
  </ul>
 </div>
		
		</div>
	</nav>

<section class="form-inuser">	
		<h1>
		<i class="fas fa-user-cog"></i> Datos a actualizar del usuario
		</h1>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al actualizar el usuario, verifique que la cedula y usuario dados sean validos</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Usuario actualizado con exito</div>

			<form id="form1">
			
			
				
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Cedula*</span> <input
						type="text" class="form-control"
						placeholder="Inserte cedula aqui..."
						aria-describedby="basic-addon1" required id="cedula_usuario">
				</div>
<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Username*</span> <input
						type="text" class="form-control"
						placeholder="Inserte username aqui..."
						aria-describedby="basic-addon4" required id="user">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Nombre completo</span>
					<input type="text" class="form-control"
						placeholder="Inserte nombre aqui..."
						aria-describedby="basic-addon3" required id="nombre_usuario">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Email</span> <input
						type="text" class="form-control"
						placeholder="Inserte email aqui..."
						aria-describedby="basic-addon2" required id="email_usuario">
				</div>

				

				

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Password</span> <input
						type="text" class="form-control"
						placeholder="Inserte password aqui..."
						aria-describedby="basic-addon5" required id="password">
				</div>
			</form>

			<button type="button" class="btn btn-warning" onclick="actualizar()">
				<i class="fas fa-edit"></i> Actualizar usuario
			</button>

			


	</div>
<script>
		function actualizar() {
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			
			var x = document.getElementById("user").value;
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'/listarusuarios', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200)
				usuarios = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].usuario);
				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].usuario === x) {
					console.log(usuarios[i].usuario + " " + x);
					coincidencia = true
					break;
				}

				if (usuarios[i].cedula_usuario === y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
				formData.append("cedula_usuario", document
						.getElementById("cedula_usuario").value);
				formData.append("email_usuario", document
						.getElementById("email_usuario").value);
				formData.append("nombre_usuario", document
						.getElementById("nombre_usuario").value);
				formData.append("password",
						document.getElementById("password").value);
				formData.append("usuario",
						document.getElementById("user").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", baseUrl+"/actualizarusuarios");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
			}
		}
	</script>
</section>
	<footer>Tiendida la Generica del 2  | 2021
  
</footer>
  </body>
</html>