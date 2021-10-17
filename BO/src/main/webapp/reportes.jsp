<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Reportes</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/8e9e769e03.js"
	crossorigin="anonymous"></script>
<script>
	var getUrl = window.location;
	if( getUrl.host === 'localhost:8080'){
		var baseUrl = getUrl.protocol + "//" + getUrl.host;
	}else{
		var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
	}
	var baseurl1 = "/listarclientes";
	var baseurl2 = "/resumenventa";
	function usuario() {
		var element = document.getElementById("titulo");
		element.classList.remove("visually-hidden");
		var element = document.getElementById("tituloc");
		element.classList.add("visually-hidden");
		var element = document.getElementById("titulov");
		element.classList.add("visually-hidden");
		var element = document.getElementById("total");
		element.classList.add("visually-hidden");
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl + "/listarusuarios", true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var usuarios = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-success table-striped'><tr><th>Cedula</th><th>Email</th><th>Nombre</th><th>Password</th><th>Usuario</th></tr>";
				var main = "";
				for (i = 0; i < usuarios.length; i++) {
					main += "<tr><td>" + usuarios[i].cedula_usuario
							+ "</td><td>" + usuarios[i].email_usuario
							+ "</td><td>" + usuarios[i].nombre_usuario
							+ "</td><td>" + usuarios[i].password + "</td><td>"
							+ usuarios[i].usuario;
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("usuariosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadusuarios();
	}
	function ventas() {
		var element = document.getElementById("titulo");
		element.classList.add("visually-hidden");
		var element = document.getElementById("tituloc");
		element.classList.add("visually-hidden");
		var element = document.getElementById("titulov");
		element.classList.remove("visually-hidden");
		var element = document.getElementById("total");
		element.classList.remove("visually-hidden");
		var xmlhttp = new XMLHttpRequest();

		xmlhttp.open("GET", baseUrl + baseurl2, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var usuarios = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-success table-striped'><tr><th>Consecutivo</th><th>Cedula</th><th>Nombre</th><th>ValorTotal</th>";
				var main = "";
				console.log("usuarios",usuarios[0].cedula_cliente.cedula_cliente);
				for (i = 0; i < usuarios.length; i++) {
					main += "<tr><td>" + usuarios[i].codigo_venta + "</td><td>"
							+ usuarios[i].cedula_cliente.cedula_cliente + "</td><td>"
							+ usuarios[i].cedula_cliente.nombre_cliente + "</td><td>"
							+ usuarios[i].valor_venta;
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("usuariosinfo").innerHTML = tbl;
				var total = 0;
				var celdasPrecio = document.querySelectorAll('td+td+td+td');
				
				for(i=0;i<celdasPrecio.lenght;i++){
					total += parseFloat(celdasPrecio[i].firstChild.data);
					
				}
				getTotal();

			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadusuarios();
	};
	function cliente() {
		var element = document.getElementById("titulo");
		element.classList.add("visually-hidden");
		var element = document.getElementById("tituloc");
		element.classList.remove("visually-hidden");
		var element = document.getElementById("titulov");
		element.classList.add("visually-hidden");
		var element = document.getElementById("total");
		element.classList.add("visually-hidden");
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseUrl + baseurl1, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var usuarios = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-primary table-striped'><tr><th>Cedula</th><th>Email</th><th>Nombre</th><th>Direccion</th><th>Telefono</th></tr>";
				var main = "";
				for (i = 0; i < usuarios.length; i++) {
					main += "<tr><td>" + usuarios[i].cedula_cliente
							+ "</td><td>" + usuarios[i].correo_cliente
							+ "</td><td>" + usuarios[i].nombre_cliente
							+ "</td><td>" + usuarios[i].direccion_cliente
							+ "</td><td>" + usuarios[i].telefono_cliente;
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("usuariosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	};
	window.onload = function() {
		loadusuarios();
	}
	
	function getTotal() {

		var req = new XMLHttpRequest();


		req.open('GET',baseUrl +
				'/total', false);

		req.send(null);
		var usuario = null;
		if (req.status == 200)
			usuario = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		console.log(usuario.toString());

		if (usuario.toString() != "") {
			document.getElementById("totalventas").value = usuario[0].TOTAL;
		} else {

			document.getElementById("totalventas").value ="";

		}
	}
</script>
</head>
<body>
	<script src="script.js"></script>
	<!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href="listarusuarios.jsp"><i
				class="fas fa-shopping-basket"></i> Tiendita Generica del 2</a>
		</div>
	</nav>

	<!-- Navbar modulos-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">

			<ul class="nav nav-tabs" id="myTab" role="tablist">
  <div class="dropdown">
  <a class="nav-link " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
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
  <a class="nav-link active" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-truck-loading"></i>Reportes</a>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href=<%=request.getContextPath()%>/reportes.jsp><i class="fas fa-list"></i> mostrar reportes</a></li>
  </ul>
 </div>

		</div>
	</nav>
	<div class="form-repor">


		<button type="button" onclick="usuario()"
			class="btn btn-outline-primary">Usuarios</button>
		<button type="button" onclick="cliente()"
			class="btn btn-outline-secondary">Clientes</button>
		<button type="button" onclick="ventas()"
			class="btn btn-outline-success">Ventas por Cliente</button>
	</div>

	<h1 id="titulo" class="visually-hidden form-titulo">Listado
		Usuarios</h1>
	<h1 id="tituloc" class="visually-hidden form-titulo">Listado
		Clientes</h1>

	<h1 id="titulov" class="form-titulo visually-hidden">Ventas
		Cliente</h1>

	<div class="container">
		<div class="row">
			<!--  Aqui es donde se autogenera la tabla basado en el script -->
			<div class="col align-self-center" id="usuariosinfo"></div>

		</div>
	</div>
	<div id="total" class="input-group mb-3 visually-hidden">
		<span class="input-group-text" id="basic-addon1">Total Ventas</span> <input
			type="text" id="totalventas" class="form-control"
			disabled="disabled" aria-label="Username"
			aria-describedby="basic-addon1">
	</div>
	<footer>Tiendida la Generica del 2 | 2021 </footer>
</body>
</html>