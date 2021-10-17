
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Ventas</title>
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
</head>
<body>
	<script src="script.js"></script>

	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href=<%=request.getContextPath()%>/listarusuarios.jsp><i
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
  <a class="nav-link active " href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
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

	<div class="ventasform">
		<h1>Ventas</h1>
		<div class="container">
			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al buscar el cliente, el cliente no existe</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">cliente encontrado con exito</div>

			<form id="form1">

				<div class="input-group mb-2">
					<span class="input-group-text" id="cc">Cedula</span> <input
						type="text" class="form-control" placeholder="Inserte cc aqui..."
						aria-describedby="basic-addon4" required id="ccsearch"
						oninput="cons()"> <span class="input-group-text"
						id="basic-addon1"> Cliente </span> <input type="text"
						class="form-control" aria-describedby="basic-addon1" required
						id="nombre_cliente" disabled="disabled"> <span
						class="input-group-text" id="basic-addon2">Consecutivo</span> <input
						type="text" class="form-control" aria-describedby="basic-addon2"
						required id="consecutivo" disabled="disabled">
					<button type="button" class="btn btn-primary" onclick="enviar()">
						<i class="fas fa-search"></i>
					</button>
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="cc">Usuario</span> <input
						type="text" class="form-control"
						placeholder="Inserte nombre usuario aqui..."
						aria-describedby="basic-addon4" required id="codigosearch"
						oninput="cons()"><span class="input-group-text"
						id="basic-addon1"> Usuario</span> <input type="text"
						class="form-control  " aria-describedby="basic-addon1" required
						id="cedula_usuario" disabled="disabled"> <input
						type="text" class="form-control" aria-describedby="basic-addon1"
						required id="nombre_usuario" disabled="disabled">
					<button type="button" class="btn btn-success" onclick="enviaru()">
						<i class="fas fa-search"></i>
					</button>
			</form>
			<div class="container">
				<div id="app" class="col-11">

					<form id="form2">

						<div class="row my-5">
							<table class="table ">
								<thead>
									<tr>
										<th>Codigo del Producto</th>
										<th>Nombre del Producto</th>
										<th>Cant.</th>
										<th>Vlr. total</th>
									</tr>
								</thead>
								<tbody>
									<tr>



										<td><div class="input-group mb-3">
												<input type="text" class="form-control"
													placeholder="Inserte codigo"
													aria-describedby="basic-addon4" required id="cod1">
												<button class="btn btn-outline-dark" type="button"
													for="cod1" id="button1" onclick="buscarpro()">
													<i class="fas fa-search"></i>
												</button>
											</div></td>


										<td><input type="text" class="form-control"
											aria-describedby="basic-addon1" required id="nombre1"
											disabled="disabled"></td>
										<td><input type="text" class="form-control" id="cant1"
											onchange="calcular()"> <input type="text"
											class="form-control visually-hidden" disabled="disabled"
											id="sub1"></td>
										<td><input type="text" class="form-control"
											disabled="disabled" id="vt1"></td>
									</tr>
									<tr>
										<td><div class="input-group mb-3">
												<input type="text" class="form-control"
													placeholder="Inserte codigo" id="cod2"
													aria-describedby="button-addon2">
												<button class="btn btn-outline-dark" type="button"
													id="button2" onclick="buscarpro1()">
													<i class="fas fa-search"></i>
												</button>
											</div></td>
										<td><input type="text" class="form-control"
											disabled="disabled" id="nombre2"></td>
										<td><input type="text" class="form-control" id="cant2"
											onchange="calcular()"><input type="text"
											class="form-control visually-hidden" disabled="disabled"
											id="sub2"></td>
										<td><input type="text" class="form-control"
											disabled="disabled" id="vt2"></td>
									</tr>
									<tr>
										<td><div class="input-group mb-3">
												<input type="text" class="form-control"
													placeholder="Inserte Codigo" id="cod3"
													aria-describedby="button-addon2">
												<button class="btn btn-outline-dark" type="button"
													id="button3" onclick="buscarpro2()">
													<i class="fas fa-search"></i>
												</button>
											</div></td>
										<td><input type="text" class="form-control" id="nombre3"
											disabled="disabled"></td>
										<td><input type="text" class="form-control" id="cant3"
											onchange="calcular()"><input type="text"
											class="form-control visually-hidden" disabled="disabled"
											id="sub3"></td>
										<td><input type="text" class="form-control"
											disabled="disabled" id="vt3"></td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th></th>
										<th></th>
										<th>Total Venta</th>
										<th><input type="text" class="form-control"
											disabled="disabled" id="vv"></th>
									</tr>
									<tr>
										<th></th>
										<th></th>
										<th>Total IVA</th>
										<th><input type="text" class="form-control"
											disabled="disabled" id="iva"></th>
									</tr>
									<tr>
										<th></th>
										<th><button type="button" class="btn btn-primary"
												onclick="enviarVenta()">
												<i class="fas fa-shopping-cart"></i> Confirmar
											</button></th>
										<th>Total con IVA</th>
										<th><input type="text" class="form-control"
											disabled="disabled" id="viva"></th>
									</tr>
								</tfoot>
							</table>

						</div>
					</form>
				</div>
				<script>
					
					var getUrl = window.location;
					if( getUrl.host === 'localhost:8080'){
						var baseUrl = getUrl.protocol + "//" + getUrl.host;
					}else{
						var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
					}
					
					function enviar() {
						var req = new XMLHttpRequest();
						var coincidencia = false;
						var user = document.getElementById("ccsearch").value;
						req.open('GET', baseUrl+
								'/consultarcliente?cliente='
										+ user, false);
						req.send(null);
						var usuario = null;
						if (req.status == 200)
							usuario = JSON.parse(req.responseText);
						console.log(JSON.parse(req.responseText));

						var element = document.getElementById("error");
						element.classList.add("visually-hidden");
						var element2 = document.getElementById("correcto");
						element2.classList.remove("visually-hidden");

						console.log(usuario.toString());

						if (usuario.toString() != "") {

							document.getElementById("nombre_cliente").value = usuario[0].nombre_cliente;

						} else {
							var element = document.getElementById("error");
							element.classList.remove("visually-hidden");
							var element2 = document.getElementById("correcto");
							element2.classList.add("visually-hidden");

							document.getElementById("nombre_cliente").value = "";

						}
					}

					function enviaru() {

						var req = new XMLHttpRequest();
						var coincidencia = false;
						var user = document.getElementById("codigosearch").value;
						req.open('GET',
								baseUrl+'/consultarusuario?usuario='
										+ user, false);
						req.send(null);
						var usuario = null;
						if (req.status == 200)
							usuario = JSON.parse(req.responseText);
						console.log(JSON.parse(req.responseText));

						console.log(usuario.toString());

						if (usuario.toString() != "") {

							document.getElementById("cedula_usuario").value = usuario[0].cedula_usuario;

							document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;

						} else {

							document.getElementById("cedula_usuario").value = "";
							document.getElementById("nombre_usuario").value = "";

						}
					}

					function cons() {
						var req = new XMLHttpRequest();
						var coincidencia = false;
						req.open("GET",baseUrl+
								"/consultarconsecutivo",
								false);
						req.send(null);
						var usuario = null;
						var ncon = 0;
						if (req.status == 200)
							usuario = JSON.parse(req.responseText);
						console.log(JSON.parse(req.responseText));

						console.log(usuario.toString());

						if (usuario.toString() != "") {

							ncon = document.getElementById("consecutivo").value = usuario[0].codigo_venta + 1;

						} else {

							document.getElementById("consecutivo").value = "0";

						}
						var xmlhttp = new XMLHttpRequest();
						xmlhttp.open("GET", baseUrl + baseurl, true);
						xmlhttp.send(null);
						var cons = null;

						if (xmlhttp.status == 200)
							cons = JSON.parse(xmlhttp.responseText);
						console.log(JSON.parse(xmlhttp.responseText));
						console.log(cons[0].codigo_venta + 1);
						document.getElementById("consecutivo").value = cons[0].codigo_venta + 1;
					}

					function buscarpro() {

						var req = new XMLHttpRequest();
						var coincidencia = false;
						var code = document.getElementById("cod1").value;

						req.open('GET',baseUrl+
								'/consultarproducto?code='
										+ code, false);

						req.send(null);
						var usuario = null;
						if (req.status == 200)
							usuario = JSON.parse(req.responseText);
						console.log(JSON.parse(req.responseText));
						console.log(usuario.toString());

						if (usuario.toString() != "") {

							document.getElementById("nombre1").value = usuario[0].nombre_producto;
							document.getElementById("sub1").value = usuario[0].precio_venta;
							document.getElementById("cant1").value = 0;
							document.getElementById("vt1").value = 0;
						} else {

							document.getElementById("nombre1").value = "";
							document.getElementById("vt1").value = 0;
							document.getElementById("cant1").value = 0;

						}
					}
					function buscarpro1() {

						var req = new XMLHttpRequest();
						var coincidencia = false;
						var code = document.getElementById("cod2").value;

						req.open('GET',baseUrl+
								'/consultarproducto?code='
										+ code, false);

						req.send(null);
						var usuario = null;
						if (req.status == 200)
							usuario = JSON.parse(req.responseText);
						console.log(JSON.parse(req.responseText));
						console.log(usuario.toString());

						if (usuario.toString() != "") {
							document.getElementById("nombre2").value = usuario[0].nombre_producto;
							document.getElementById("sub2").value = usuario[0].precio_venta;
							document.getElementById("cant2").value = "";
							document.getElementById("vt2").value = "";
						} else {

							document.getElementById("nombre2").value = "";
							document.getElementById("vt2").value = "";
							document.getElementById("cant2").value = "";
						}
					}
					function buscarpro2() {

						var req = new XMLHttpRequest();
						var coincidencia = false;
						var code = document.getElementById("cod3").value;

						req.open('GET',baseUrl+
								'/consultarproducto?code='
										+ code, false);

						req.send(null);
						var usuario = null;
						if (req.status == 200)
							usuario = JSON.parse(req.responseText);
						console.log(JSON.parse(req.responseText));
						console.log(usuario.toString());

						if (usuario.toString() != "") {

							document.getElementById("nombre3").value = usuario[0].nombre_producto;
							document.getElementById("sub3").value = usuario[0].precio_venta;
							document.getElementById("cant3").value = "";
							document.getElementById("vt3").value = "";
						} else {

							document.getElementById("nombre3").value = "";
							document.getElementById("vt3").value = "";
							document.getElementById("cant3").value = "";
						}
					}
					function calcular() {

						var total = 0;
						var iva = 0;
						var tiva = 0;
						document.getElementById("vt1").value = document
								.getElementById("sub1").value
								* document.getElementById("cant1").value;
						document.getElementById("vt2").value = document
								.getElementById("sub2").value
								* document.getElementById("cant2").value;
						document.getElementById("vt3").value = document
								.getElementById("sub3").value
								* document.getElementById("cant3").value;

						total = (document.getElementById("sub1").value * document
								.getElementById("cant1").value)
								+ (document.getElementById("sub2").value * document
										.getElementById("cant2").value)
								+ (document.getElementById("sub3").value * document
										.getElementById("cant3").value);
						document.getElementById("vv").value = total;

						iva = total * 0.19;
						document.getElementById("iva").value = iva;
						tiva = total + iva;
						document.getElementById("viva").value = tiva;
					}
					function sumar() {
						document.getElementById("vv1").value = document
								.getElementById("vt2").value
								+ document.getElementById("vt3").value;
					}

					function enviarVenta() {
						var x = document.getElementById("consecutivo").value;
						var req = new XMLHttpRequest();
						var coincidencia = false;
						req.open('GET', baseUrl+'/consultarventa',
								false);
						req.send(null);
						var usuarios = null;
						if (req.status == 200) {
							usuarios = JSON.parse(req.responseText);
							console.log(JSON.parse(req.responseText), "JSON")
						}
						;

						for (i = 0; i < usuarios.length; i++) {
							console.log("aqui usuarios[i].codigo_venta",
									usuarios[i].codigo_venta);

							if (usuarios[i].codigo_venta === x) {
								console.log("usuarios[i].nombre_cliente ",
										usuarios[i].nombre_cliente + " " + x);
								coincidencia = true
								break;
							}

						}
						console.log(coincidencia);

						if (coincidencia == false) {
							var ventasFormData = new FormData();

							ventasFormData.append(
									"cedula_cliente.cedula_cliente", document
											.getElementById("ccsearch").value);
							ventasFormData.append(
									"cedula_cliente.correo_cliente", null);
							ventasFormData.append(
									"cedula_cliente.nombre_cliente", null);
							ventasFormData.append(
									"cedula_cliente.direccion_cliente", null);
							ventasFormData.append(
									"cedula_cliente.telefono_cliente", null);

							ventasFormData
									.append(
											"cedula_usuario.cedula_usuario",
											document
													.getElementById("cedula_usuario").value);
							ventasFormData.append(
									"cedula_usuario.email_usuario", null);
							ventasFormData.append(
									"cedula_usuario.nombre_usuario", null);
							ventasFormData.append("cedula_usuario.password",
									null);
							ventasFormData.append("cedula_usuario.usuario",
									null);

							ventasFormData.append("codigo_venta", document
									.getElementById("consecutivo").value);
							ventasFormData.append("ivaventa", document
									.getElementById("iva").value);
							ventasFormData.append("total_venta", document
									.getElementById("viva").value);
							ventasFormData.append("valor_venta", document
									.getElementById("vv").value);
							var xhr = new XMLHttpRequest();
							xhr.open("POST",baseUrl+"/registrarventa");
							xhr.send(ventasFormData);
							
							for(var i = 1 ; i < 4; i++){
								var cod1 = document.getElementById("cod".concat(i)).value;
								console.log("cod1",cod1)
								if (cod1 !== ""){
									saveRegistros(document.getElementById("cant".concat(i)).value, document.getElementById("cod".concat(i)).value,
											document.getElementById("ccsearch").value, document.getElementById("cedula_usuario").value, 
											document.getElementById("consecutivo").value,
											document.getElementById("vt".concat(i)).value);
								}
							}
							location.reload();
							
							
						} else {
							var element = document.getElementById("error");
							element.classList.remove("visually-hidden");
							var element2 = document.getElementById("correcto");
							element2.classList.add("visually-hidden");

						}

					}

					function saveRegistros(cantidad_producto, codigo_producto,
							cedula_cliente,cedula_usuario, codigo_venta, valor_total) {
						
						var detalleFormData = new FormData();
						detalleFormData.append("cantidad_producto",cantidad_producto);
						detalleFormData.append("codigo_detalle_venta", 0);
						detalleFormData.append("codigo_producto", codigo_producto);

						detalleFormData.append("codigo_venta.cedula_cliente.cedula_cliente", cedula_cliente);
						detalleFormData.append("codigo_venta.cedula_cliente.correo_cliente",null);
						detalleFormData.append("codigo_venta.cedula_cliente.direccion_cliente",null);
						detalleFormData.append(
								"codigo_venta.cedula_cliente.nombre_cliente",
								null);
						detalleFormData.append(
								"codigo_venta.cedula_cliente.telefono_cliente",
								null);
						detalleFormData
								.append("codigo_venta.cedula_usuario.cedula_usuario",cedula_usuario);
						detalleFormData.append(
								"codigo_venta.cedula_usuario.email_usuario",
								null);
						detalleFormData.append(
								"codigo_venta.cedula_usuario.nombre_usuario",
								null);

						detalleFormData.append(
								"codigo_venta.cedula_usuario.password", null);
						detalleFormData.append(
								"codigo_venta.cedula_usuario.usuario", null);
						detalleFormData.append("codigo_venta.codigo_venta",
								codigo_venta);
						detalleFormData.append("codigo_venta.ivaVenta", 0);
						detalleFormData.append("codigo_venta.total_venta", 0);
						detalleFormData.append("codigo_venta.valor_venta", 0);

						var vVenta = (valor_total * parseInt(cantidad_producto));
						var iva = (vVenta * 0.19);
						var total = vVenta + iva;
						detalleFormData.append("valor_total", total);
						detalleFormData.append("valor_venta", vVenta);
						detalleFormData.append("valoriva", iva);
						
						var xhr = new XMLHttpRequest();
					console.log("detalleFormData", detalleFormData)
						xhr.open("POST",baseUrl+
								'/registrarventadetalle');
						var element = document.getElementById("error");
						element.classList.add("visually-hidden");
						var element2 = document.getElementById("correcto");
						element2.classList.remove("visually-hidden");
						xhr.send(detalleFormData);

						xhr.send(detalleFormData);
					}
					
				</script>

			</div>

			<footer>Tiendida la Generica del 2 | 2021 </footer>
</body>
</html>