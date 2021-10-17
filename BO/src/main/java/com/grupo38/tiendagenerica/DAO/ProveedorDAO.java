package com.grupo38.tiendagenerica.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.grupo38.tiendagenerica.DTO.ClienteVO;
import com.grupo38.tiendagenerica.DTO.ProveedorVO;



public class ProveedorDAO {
	public void registrarProveedor(ProveedorVO proveedor) {
		Conexion conex = new Conexion();

		try {
			
			Statement estatuto = conex.getConnection().createStatement();
			
			String sentencia = "INSERT INTO proveedores VALUES(" 
					+ proveedor.getNit_proveedor() + "," + "'"
					+ proveedor.getCiudad_proveedor() + "'," + "'"
					+ proveedor.getDireccion_proveedor() + "'," + "'" 
					+ proveedor.getNombre_proveedor() + "'," + "'" 
					+ proveedor.getTelefono_proveedor() +  "'"
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
			System.out.println("No se pudo insertar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public ArrayList<ProveedorVO> consultarProveedor(String proveedor) {	
		//lista que contendra el o los proveedores obtenidos
		ArrayList<ProveedorVO>listaProveedores = new ArrayList<ProveedorVO>();		
		//instancia de la conexión
		Conexion conex = new Conexion();
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM proveedores where nit_proveedor = ? ");		
			// se cambia el comodin ? por el dato que ha llegado en el parametro de la funcion
			consulta.setString(1, proveedor);			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();			
			//cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				ProveedorVO p = new ProveedorVO();
				
				p.setNit_proveedor(Integer.parseInt(res.getString("nit_proveedor")));
				p.setDireccion_proveedor(res.getString("direccion_proveedor"));
				p.setNombre_proveedor(res.getString("nombre_proveedor"));
				p.setTelefono_proveedor(res.getString("telefono_proveedor"));
				p.setCiudad_proveedor(res.getString("ciudad_proveedor"));
				
				listaProveedores.add(p);				
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
		return listaProveedores;
	}

	
	public ArrayList<ProveedorVO> listaDeProveedores() {
		//lista que contendra el o los clientes obtenidos
		ArrayList<ProveedorVO> listaproveedores = new ArrayList<ProveedorVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM proveedores");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				ProveedorVO proveedor = new ProveedorVO();
				proveedor.setNit_proveedor(Integer.parseInt(res.getString("nit_proveedor")));
				proveedor.setDireccion_proveedor(res.getString("direccion_proveedor"));
				proveedor.setNombre_proveedor(res.getString("nombre_proveedor"));
				proveedor.setTelefono_proveedor(res.getString("telefono_proveedor"));
				proveedor.setCiudad_proveedor(res.getString("ciudad_proveedor"));


				listaproveedores.add(proveedor);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los proveedores");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los proveedores");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listaproveedores;
	}

	public void eliminarproveedor(Integer nit_proveedor) {
		
		//instancia de la conexion
		Conexion conex = new Conexion();

		try {
			//sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "delete from proveedores where nit_proveedor=" + nit_proveedor + ";";
			
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
			System.out.println("No se pudo eliminar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

public void actualizarProveedor(ProveedorVO proveedor) {
		
		//instancia de conexion
		Conexion conex = new Conexion();

		try {
			//inicializando sentencia
			Statement estatuto = conex.getConnection().createStatement();
			
			//String con la sentencia a ejecutar
			String sentencia = "UPDATE proveedores "
					+ "SET direccion_proveedor = '"+proveedor.getDireccion_proveedor()+"',"
					+ "ciudad_proveedor = '"+proveedor.getCiudad_proveedor()+"',"
					+ "nombre_proveedor = '"+proveedor.getNombre_proveedor()+"',"
					+ "telefono_proveedor = '"+proveedor.getTelefono_proveedor()+"' "
					+ "WHERE nit_proveedor = "+proveedor.getNit_proveedor()+";";
			
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
			System.out.println("No se pudo eliminar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	

	}

	
	
	
}
