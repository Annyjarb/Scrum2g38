<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Insertando Usuarios</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/8e9e769e03.js" crossorigin="anonymous"></script>
  </head>
  
  <body>
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
	
<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al crear el usuario, verifique que no exista un usuario con la cedula y usuario dados</div>
					
<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Usuario creado con exito</div>
				
<div id ="falta" class="alert alert-warning visually-hidden" role="alert">
 Faltan datos por ingresar 
</div>

				

  <div class="input-group mb-3">
  <span class="input-group-text">   Cedula   </span>
  <input type="text" class="form-control" placeholder="Ingrese Cedula" aria-label="Username" aria-describedby="basic-addon1" required id="cedula_usuario" >
</div>
<div class="input-group mb-3">
  <span class="input-group-text">   Nombre </span>
  <input type="text" class="form-control" placeholder="Ingrese Nombre Completo" aria-label="Username" aria-describedby="basic-addon1" required id="nombre_usuario" >
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Correo Electronico</span>
  <input type="text" class="form-control" placeholder="Ingrese Correo Electronico" aria-label="Username" aria-describedby="basic-addon1"  required id="email_usuario">
</div>

<div class="input-group mb-3">
  <span class="input-group-text">   Usuario   </span>
  <input type="text" class="form-control" placeholder="Ingrese Usuario" aria-label="Username" aria-describedby="basic-addon1" required id="usuario" >
</div>
<div class="input-group mb-3">
  <span class="input-group-text">  Contraseña  </span>
  <input type="text" class="form-control" placeholder="Ingrese Contraseña" aria-label="Username" aria-describedby="basic-addon1"  id="password" required>
</div>


<button type="button" class="btn btn-success"  onclick="enviar()">Crear</button><br>

  


<script>
var getUrl = window.location;
if( getUrl.host === 'localhost:8080'){
	var baseUrl = getUrl.protocol + "//" + getUrl.host;
}else{
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
}
		function enviar() {

			var x = document.getElementById("usuario").value;
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'/listarusuarios', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200){
				usuarios = JSON.parse(req.responseText);
			  	console.log(JSON.parse(req.responseText))};
			  	
			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].usuario);
				console.log(usuarios[i].cedula_usuario);
				
				if (usuarios[i].usuario ===x ) {
					console.log(usuarios[i].usuario + " " + x);	
					coincidencia =true
					break;
				}
				
				if (usuarios[i].cedula_usuario ===y ) {
					console.log(usuarios[i].cedula_usuario + " " + y);	
					coincidencia =true
					break;
				}
			}
			console.log(coincidencia);	
			
			 if (coincidencia == false){
				 
				var formData = new FormData();
	 			formData.append("cedula_usuario", document.getElementById("cedula_usuario").value);
	 			formData.append("email_usuario", document.getElementById("email_usuario").value);
	 			formData.append("nombre_usuario", document.getElementById("nombre_usuario").value);
	 			formData.append("password",document.getElementById("password").value);
	 			formData.append("usuario",document.getElementById("usuario").value);
	 			var xhr = new XMLHttpRequest();
	 			xhr.open("POST", baseUrl +"/registrarusuario");
	 			
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("usuario").value = "";
	 			xhr.send(formData);

			}
			 else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("usuario").value = "";
			}	
		}
	</script>
	
	
	
	</section>
	
	<footer>Tiendida la Generica del 2  | 2021
  
</footer>
  </body>
</html>


