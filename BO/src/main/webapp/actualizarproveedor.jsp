<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Modificar Proveedores</title>
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
			<a class="navbar-brand links" href="listarusuarios.jsp"><i class="fas fa-shopping-basket"></i> Tiendita Generica del 2</a>
		</div>
	</nav>

	<!-- Navbar modulos-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
      
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <div class="dropdown ">
  <a class="nav-link  " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-user-tie"></i> Usuarios
  </a>

  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="listarusuarios.jsp"><i class="fas fa-list"></i> Lista de Usuarios</a></li>
    <li><a class="dropdown-item " href="insertarusuario.jsp"><i class="fas fa-user-plus"></i> Insertar Usuario</a></li>
    <li><a class="dropdown-item" href="eliminarusuario.jsp"><i class="fas fa-trash-alt"></i> Eliminar Usuario</a></li>
    <li><a class="dropdown-item" href="actualizarusuarios.jsp"><i class="fas fa-user-cog"></i> Modificar Usuario</a></li>
    <li><a class="dropdown-item" href="consultarusuario.jsp"><i class="fas fa-search"></i> Buscar Usuario</a></li>
  </ul>
</div>
<div class="dropdown">
  <a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-address-book"></i> Clientes
  </a>

  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="listarclientes.jsp"><i class="fas fa-list"></i> Lista de Cliente</a></li>
    <li><a class="dropdown-item" href="insertarcliente.jsp"><i class="fas fa-user-plus"></i> Insertar Cliente</a></li>
    <li><a class="dropdown-item" href="eliminarcliente.jsp"><i class="fas fa-trash-alt"></i> Eliminar Cliente</a></li>
    <li><a class="dropdown-item" href="actualizarcliente.jsp"><i class="fas fa-user-cog"></i> Modificar Cliente</a></li>
    <li><a class="dropdown-item" href="consultarcliente.jsp"><i class="fas fa-search"></i> Buscar Cliente</a></li>
  </ul>
</div>
 <div class="dropdown">
  <a class="nav-link active href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i> Proveedores
  </a>

   <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="listarproveedores.jsp"><i class="fas fa-list"></i> Lista de Proveedores</a></li>
    <li><a class="dropdown-item" href="insertarproveedor.jsp"><i class="fas fa-user-plus"></i> Insertar Proveedor</a></li>
    <li><a class="dropdown-item" href="eliminarproveedor.jsp"><i class="fas fa-trash-alt"></i> Eliminar Proveedor</a></li>
    <li><a class="dropdown-item" href="actualizarproveedor.jsp"><i class="fas fa-user-cog"></i> Modificar Proveedor</a></li>
    <li><a class="dropdown-item" href="consultarproveedor.jsp"><i class="fas fa-search"></i> Buscar Proveedor</a></li>
  </ul>
</div>

  
  
  <li onclick="window.location.href=''"class="nav-item" role="presentation">
    <button class="nav-link" id="Productos" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false"> <i class="fas fa-cubes"></i> Productos</button>
  </li>
  <li class="nav-item" role="presentation">
    <button onclick="window.location.href=''"class="nav-link" id="ventas" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false"> <i class="fas fa-money-bill-wave"></i> Ventas </button>
  </li>
  <li class="nav-item" role="presentation">
    <button onclick="window.location.href=''"class="nav-link" id="reportes" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false"><i class="fas fa-book"></i> Reportes </button>
  </li>
</ul>

		
		</div>
	</nav>

<section class="form-inuser">	
		<h1>
		<i class="fas fa-user-cog"></i> Datos a actualizar del Proveedor
		</h1>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al actualizar el proveedor, verifique que el NIT y Nombre de la empresa dados sean validos</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Proveedor actualizado con exito</div>

			<form id="form1">
			
			
				
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Nit* </span> <input
						type="text" class="form-control"
						placeholder="Inserte NIT aqui..."
						aria-describedby="basic-addon1" required id="nit_proveedor">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre proveedor*</span> <input
						type="text" class="form-control"
						placeholder="Inserte nombre_provedor aqui..."
						aria-describedby="basic-addon4" required id="nombre_proveedor">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Telefono</span>
					<input type="text" class="form-control"
						placeholder="Inserte telefono aqui..."
						aria-describedby="basic-addon3" required id="telefono_proveedor">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Direccion</span> <input
						type="text" class="form-control"
						placeholder="Inserte direccion aqui..."
						aria-describedby="basic-addon2" required id="direccion_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Ciudad</span> <input
						type="text" class="form-control"
						placeholder="Inserte ciudad aqui..."
						aria-describedby="basic-addon5" required id="ciudad_proveedor">
				</div>
			</form>

			<button type="button" class="btn btn-warning" onclick="actualizar()">
				<i class="fas fa-edit"></i> Actualizar Proveedor
			</button>

			


	</div>
<script>
		function actualizar() {
			var x = document.getElementById("nit_proveedor").value;
			var y = document.getElementById("nombre_proveedor").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarproveedor', false);
			req.send(null);
			var proveedores = null;
			if (req.status == 200)
				proveedores = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < proveedores.length; i++) {
				console.log(proveedores[i].nit_proveedor);
				console.log(proveedores[i].nombre_proveedor);
				if (proveedores[i].nit_proveedor === x) {
					console.log(proveedores[i].nit_proveedor + " " + x);
					coincidencia = true
					break;
				}

				if (proveedores[i].nombre_proveedor === y) {
					console.log(proveedores[i].nombre_proveedor + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
				
				formData.append("nit_proveedor", document
						.getElementById("nit_proveedor").value);
				
				formData.append("nombre_proveedor", document
						.getElementById("nombre_proveedor").value);
				
				formData.append("ciudad_proveedor", document
						.getElementById("ciudad_proveedor").value);
				
				formData.append("telefono_proveedor",
						document.getElementById("telefono_proveedor").value);
				
				formData.append("direccion_proveedor",
						document.getElementById("direccion_proveedor").value);
				
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", "http://localhost:8080/actualizarproveedor");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("nit_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				
				document.getElementById("nit_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
			}
		}
	</script>
</section>
	<footer>Tiendida la Generica del 2  | 2021
  
</footer>
  </body>
</html>