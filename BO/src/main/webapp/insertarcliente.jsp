<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Insertando clientes</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/8e9e769e03.js" crossorigin="anonymous"></script>
  </head>
  
  <body>
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
  <a class="nav-link active" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-address-book"></i> Clientes
  </a>

  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="listarclientes.jsp"><i class="fas fa-list"></i> Lista de Cliente</a></li>
    <li><a class="dropdown-item" href="insertarliente.jsp"><i class="fas fa-user-plus"></i> Insertar Cliente</a></li>
    <li><a class="dropdown-item" href="eliminarcliente.jsp"><i class="fas fa-trash-alt"></i> Eliminar Cliente</a></li>
    <li><a class="dropdown-item" href="actualizarcliente.jsp"><i class="fas fa-user-cog"></i> Modificar Cliente</a></li>
    <li><a class="dropdown-item" href="consultarcliente.jsp"><i class="fas fa-search"></i> Buscar Cliente</a></li>
  </ul>
</div>
 <div class="dropdown">
  <a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
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
<div class="dropdown">
  <a class="nav-link " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i> Productos
  </a>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="insertarproducto.jsp"><i class="fas fa-list"></i> Carga productos</a></li>
  </ul>
  </div>
  <div class="dropdown">
  <a class="nav-link " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i> Ventas
  </a>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="ventas.jsp"><i class="fas fa-list"></i> Diligenciar venta</a></li>
  </ul>
 </div>
<div class="dropdown">
  <a class="nav-link " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i>Reportes</a>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="reportes.jsp"><i class="fas fa-list"></i> mostrar reportes</a></li>
  </ul>
 </div>

		
		</div>
	</nav>
	
<section class="form-inuser">
<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al crear el Ciente, verifique que no exista un cliente con la cedula </div>
					
<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Cliente creado con exito</div>
  <div class="input-group mb-3">
  <span class="input-group-text">   Cedula   </span>
  <input type="text" class="form-control" placeholder="Ingrese Cedula" aria-label="Username" aria-describedby="basic-addon1" required id="cc">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">   Nombre </span>
  <input type="text" class="form-control" placeholder="Ingrese Nombre completo" aria-label="Username" aria-describedby="basic-addon1" required id="nombre">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Correo Electronico</span>
  <input type="text" class="form-control" placeholder="Ingrese Correo electronico" aria-label="Username" aria-describedby="basic-addon1" required id="correo">
</div>

<div class="input-group mb-3">
  <span class="input-group-text">   Direccion   </span>
  <input type="text" class="form-control" placeholder="Ingrese Dirección" aria-label="Username" aria-describedby="basic-addon1" required id="direccion">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">  Telefono  </span>
  <input type="text" class="form-control" placeholder="Ingrese Teléfono" aria-label="Username" aria-describedby="basic-addon1"  required id="telefono">
</div>
<button type="button" class="btn btn-success"  onclick="enviar()">Crear</button><br>


	
<script>
		function enviar() {
			var x = document.getElementById("nombre").value;
			var y = document.getElementById("cc").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarclientes', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200){
				usuarios = JSON.parse(req.responseText);
			  	console.log(JSON.parse(req.responseText))};
			  	
			
			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].nombre_cliente);
				console.log(usuarios[i].cedula_cliente);
				
				if (usuarios[i].nombre_cliente ===x ) {
					console.log(usuarios[i].nombre_cliente + " " + x);	
					coincidencia =true
					break;
				}
				
				if (usuarios[i].cedula_cliente ===y ) {
					console.log(usuarios[i].cedula_cliente + " " + y);	
					coincidencia =true
					break;
				}
			}
			console.log(coincidencia);	
			
			if (coincidencia == false){
				var formData = new FormData();
	 			formData.append("cedula_cliente", document.getElementById("cc").value);
	 			formData.append("correo_cliente", document.getElementById("correo").value);
	 			formData.append("nombre_cliente", document.getElementById("nombre").value);
	 			formData.append("direccion_cliente",document.getElementById("direccion").value);
	 			formData.append("telefono_cliente",document.getElementById("telefono").value);
	 			var xhr = new XMLHttpRequest();
	 			xhr.open("POST", "http://localhost:8080/registrarcliente");
	 			
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				document.getElementById("cc").value = "";
				document.getElementById("correo").value = "";
				document.getElementById("nombre").value = "";
				document.getElementById("direccion").value = "";
				document.getElementById("telefono").value = "";
	 			xhr.send(formData);

			} 
			else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				
				document.getElementById("cc").value = "";
				document.getElementById("correo").value = "";
				document.getElementById("nombre").value = "";
				document.getElementById("direccion").value = "";
				document.getElementById("telefono").value = "";
			}	
		}
	</script>
	</section>
	
	<footer>Tiendida la Generica del 2  | 2021
  
</footer>
  </body>
</html>
