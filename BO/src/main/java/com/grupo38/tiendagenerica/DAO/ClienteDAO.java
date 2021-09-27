package com.grupo38.tiendagenerica.DAO;
import java.sql.*;
import java.util.ArrayList;

import com.grupo38.tiendagenerica.DTO.ClienteVO;

public class ClienteDAO {
	
	public void registrarCliente(ClienteVO cliente) {
		Conexion conex = new Conexion();

		try {
			
			Statement estatuto = conex.getConnection().createStatement();
			
			String sentencia = "INSERT INTO clientes VALUES(" 
					+ cliente.getCedula_cliente() + "," + "'"
					+ cliente.getDireccion_cliente() + "'," + "'"
					+ cliente.getNombre_cliente() + "'," + "'" 
					+ cliente.getTelefono_cliente() + "'," + "'" 
					+ cliente.getCorreo_cliente() +  "'"
					+ ");";
			
			
			estatuto.executeUpdate(sentencia);
			//impresión en consola para verificación 
			System.out.println("Registrado " + sentencia);
			//cerrando la sentencia y la conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public ArrayList<ClienteVO> consultarCliente(String cliente) {	
		//lista que contendra el o los clientes obtenidos
		ArrayList<ClienteVO> listaDeClientes = new ArrayList<ClienteVO>();		
		//instancia de la conexión
		Conexion conex = new Conexion();
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM clientes where cedula_cliente = ? ");		
			// se cambia el comodin ? por el dato que ha llegado en el parametro de la funcion
			consulta.setString(1, cliente);			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();			
			//cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				ClienteVO c = new ClienteVO();
				
				c.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				c.setDireccion_cliente(res.getString("direccion_cliente"));
				c.setNombre_cliente(res.getString("nombre_cliente"));
				c.setTelefono_cliente(res.getString("telefono_cliente"));
				c.setCorreo_cliente(res.getString("correo_cliente"));
 
 
				listaDeClientes.add(c);
				
				
			}
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaDeClientes;
	}

	
	public ArrayList<ClienteVO> listaDeClientes() {
		//lista que contendra el o los clientes obtenidos
		ArrayList<ClienteVO> listaDeClientes = new ArrayList<ClienteVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM clientes");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				ClienteVO cliente = new ClienteVO();
				cliente.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				cliente.setDireccion_cliente(res.getString("direccion_cliente"));
				cliente.setNombre_cliente(res.getString("nombre_cliente"));
				cliente.setTelefono_cliente(res.getString("telefono_cliente"));
				cliente.setCorreo_cliente(res.getString("correo_cliente"));


				listaDeClientes.add(cliente);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los clientes");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los clientes");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listaDeClientes;
	}

	public void eliminarcliente(Integer cedula_cliente) {
		
		//instancia de la conexion
		Conexion conex = new Conexion();

		try {
			//sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "delete from clientes where cedula_cliente=" + cedula_cliente + ";";
			
			//impresion de verificación
			System.out.println("Registrado " + sentencia);
			
			//ejecutando la sentencia en la base de datos
			consulta.execute(sentencia);
			
			//cerrando sentencia y conexión
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

public void actualizarCliente(ClienteVO client) {
		
		//instancia de conexion
		Conexion conex = new Conexion();

		try {
			//inicializando sentencia
			Statement estatuto = conex.getConnection().createStatement();
			
			//String con la sentencia a ejecutar
			String sentencia = "UPDATE clientes "
					+ "SET direccion_cliente = '"+client.getDireccion_cliente()+"',"
					+ "correo_cliente = '"+client.getCorreo_cliente()+"',"
					+ "nombre_cliente = '"+client.getNombre_cliente()+"',"
					+ "telefono_cliente = '"+client.getTelefono_cliente()+"' "
					+ "WHERE cedula_cliente = "+client.getCedula_cliente()+";";
			
			//ejecuta la sentencia 
			estatuto.executeUpdate(sentencia);
			
			//verificación por consola de la sentencia
			System.out.println("Registrado " + sentencia);
			
			//cerrando sentencia y conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar  el Cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el Cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	

	}


}


