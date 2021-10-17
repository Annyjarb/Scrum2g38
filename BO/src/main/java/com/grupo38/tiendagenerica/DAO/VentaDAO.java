package com.grupo38.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.grupo38.tiendagenerica.DTO.ClienteVO;
import com.grupo38.tiendagenerica.DTO.DetalleVentaVO;
import com.grupo38.tiendagenerica.DTO.UsuarioVO;
import com.grupo38.tiendagenerica.DTO.VentaVO;

public class VentaDAO {

	public ArrayList<VentaVO> consultarconsecutivo() {
		// lista que contendra el o los clientes obtenidos
		ArrayList<VentaVO> listaConsecutivo = new ArrayList<VentaVO>();
		// instancia de la conexión
		Conexion conex = new Conexion();
		try {
			// prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM ventas order by codigo_venta desc limit 1");

			ResultSet res = consulta.executeQuery();
			// cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				VentaVO cons = new VentaVO();
				cons.setCodigo_venta(Integer.parseInt(res.getString("codigo_venta")));
				listaConsecutivo.add(cons);

			}
			// cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaConsecutivo;
	}

	public ArrayList<VentaVO> resumenVenta() {
		ArrayList<VentaVO> listaventa = new ArrayList<VentaVO>();
		Conexion conex = new Conexion();
		try {
			PreparedStatement consulta = conex.getConnection()

					.prepareStatement(
							"select v.codigo_venta, u.email_usuario, u.nombre_usuario, c.cedula_cliente, c.direccion_cliente, c.telefono_cliente, c.correo_cliente, c.nombre_cliente, u.cedula_usuario, v.ivaventa, v.total_venta,v.valor_venta\r\n"
									+ " from ventas v \r\n"
									+ " inner join usuarios u on v.cedula_usuario = u.cedula_usuario\r\n"
									+ " inner join clientes c on c.cedula_cliente = v.cedula_cliente");

			ResultSet res = consulta.executeQuery();
			while (res.next()) {
				VentaVO ventas = new VentaVO();
				ClienteVO cliente = new ClienteVO();
				UsuarioVO usuarioVO = new UsuarioVO();
				ventas.setCodigo_venta(Integer.parseInt(res.getString("codigo_venta")));
				usuarioVO.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
				usuarioVO.setEmail_usuario(res.getString("email_usuario"));
				usuarioVO.setNombre_usuario(res.getString("nombre_usuario"));

				cliente.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				cliente.setDireccion_cliente(res.getString("direccion_cliente"));
				cliente.setCorreo_cliente(res.getString("correo_cliente"));
				cliente.setNombre_cliente(res.getString("nombre_cliente"));
				cliente.setTelefono_cliente(res.getString("telefono_cliente"));

				ventas.setCedula_cliente(cliente);
				ventas.setCedula_usuario(usuarioVO);
				ventas.setIvaVenta(Double.parseDouble(res.getString("ivaventa")));
				ventas.setTotal_venta(Double.parseDouble(res.getString("total_venta")));
				ventas.setValor_venta(Double.parseDouble(res.getString("valor_venta")));

				listaventa.add(ventas);
			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("--------ERROR--------");
			System.out.println("No se puede consultar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("----------ERROR-------------");
			System.out.println("No se pudo consultar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaventa;
	}

	public ArrayList<VentaVO> listaVentas() {
		ArrayList<VentaVO> listaventas = new ArrayList<VentaVO>();
		Conexion conex = new Conexion();
		try {
			PreparedStatement consulta = conex.getConnection()

					.prepareStatement("SELECT * FROM ventas");

			ResultSet res = consulta.executeQuery();
			while (res.next()) {
				VentaVO ventas = new VentaVO();
				ClienteVO cliente = new ClienteVO();
				UsuarioVO usuarioVO = new UsuarioVO();
				ventas.setCodigo_venta(Integer.parseInt(res.getString("codigo_venta")));
				cliente.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				ventas.setCedula_cliente(cliente);
				usuarioVO.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
				ventas.setCedula_usuario(usuarioVO);
				ventas.setIvaVenta(Double.parseDouble(res.getString("ivaventa")));
				ventas.setTotal_venta(Double.parseDouble(res.getString("total_venta")));
				ventas.setValor_venta(Double.parseDouble(res.getString("valor_venta")));

				listaventas.add(ventas);
			}

			res.close();
			consulta.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("--------ERROR--------");
			System.out.println("No se puede consultar las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("----------ERROR-------------");
			System.out.println("No se pudo consultar las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaventas;
	}

	public void registrarVentas(VentaVO venta) {
		Conexion conex = new Conexion();
		System.out.println(venta + "venta aqui");
		try {
			System.out.println("Entro aca");
			Statement estatuto = conex.getConnection().createStatement();

			String sentencia_venta = "INSERT INTO ventas VALUES(" + venta.getCodigo_venta() + "," + "'"
					+ venta.getCedula_cliente().getCedula_cliente() + "'," + "'"
					+ venta.getCedula_usuario().getCedula_usuario() + "'," + "'" + venta.getIvaVenta() + "'," + "'"
					+ venta.getTotal_venta() + "'," + "'" + venta.getValor_venta() + "'" + ");";

			estatuto.executeUpdate(sentencia_venta);
			// impresión en consola para verificación
			System.out.println("Registrado " + sentencia_venta);
			// cerrando la sentencia y la conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar la vanta");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public void registrarVentasDetalle(DetalleVentaVO detalleVenta) {
		Conexion conex = new Conexion();
		try {
			System.out.println("Entro aca");
			Statement estatuto = conex.getConnection().createStatement();

			String sentencia = "INSERT INTO detalle_ventas VALUES(" + detalleVenta.getCod_detalle_venta() + "," + "'"
					+ detalleVenta.getCantidad_producto() + "'," + "'" + detalleVenta.getCodigo_producto() + "'," + "'"
					+ detalleVenta.getCodigo_venta().getCodigo_venta() + "'," + "'" + detalleVenta.getValor_total()
					+ "'," + "'" + detalleVenta.getValor_venta() + "'," + "'" + detalleVenta.getValorIva() + "'" + ");";

			estatuto.executeUpdate(sentencia);
			// impresión en consola para verificación
			System.out.println("Registrado " + sentencia);
			// cerrando la sentencia y la conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar los detalles");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar  los detalles");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public String totalVentas() {
		// lista que contendra el o los clientes obtenidos
		String total = "";
		// instancia de la conexión
		Conexion conex = new Conexion();
		try {
			// prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("select SUM(valor_venta) AS TOTAL from ventas;");

			ResultSet res = consulta.executeQuery();
			// cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				total =(res.getString("TOTAL"));

			}
			// cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el total");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el total");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return total;
	}
}