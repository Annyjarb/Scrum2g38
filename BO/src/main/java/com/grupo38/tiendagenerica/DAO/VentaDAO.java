package com.grupo38.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.grupo38.tiendagenerica.DTO.ClienteVO;
import com.grupo38.tiendagenerica.DTO.UsuarioVO;
import com.grupo38.tiendagenerica.DTO.VentaVO;



public class VentaDAO {
	
	public ArrayList<VentaVO> consultarconsecutivo() {	
		//lista que contendra el o los clientes obtenidos
		ArrayList<VentaVO> listaconsecutivo = new ArrayList<VentaVO>();		
		//instancia de la conexión
		Conexion conex = new Conexion();
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM ventas order by consecutivo desc limit 1");		
			
			ResultSet res = consulta.executeQuery();			
			//cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				VentaVO cons = new VentaVO();
				
				cons.setConsecutivo(Integer.parseInt(res.getString("consecutivo")));
				
 
 
				listaconsecutivo.add(cons);
				
				
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
		return listaconsecutivo;
	}
	public ArrayList<VentaVO> resumenVenta(){
		ArrayList<VentaVO>listaventas=new ArrayList<VentaVO>();
		Conexion conex =new Conexion();
		try {PreparedStatement consulta= conex.getConnection()
			
				 
				.prepareStatement("select *from clientes inner join ventas on clientes.cedula_cliente = ventas.cedula_cliente");
		
		ResultSet res= consulta.executeQuery();
		while (res.next()) {
			VentaVO Usuario =new VentaVO();
			
			Usuario.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
			Usuario.setConsecutivo(Integer.parseInt(res.getString("consecutivo")));
			Usuario.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
			Usuario.setValor_total(Integer.parseInt(res.getString("valor_total")));
			Usuario.setValor_iva(Integer.parseInt(res.getString("valor_iva")));
			Usuario.setValor_mas_iva(Integer.parseInt(res.getString("valor_mas_iva")));
		
			ClienteVO cliente =new ClienteVO();
			listaventas.add(Usuario);	
		}
		
		
	
		res.close();
		consulta.close();
		conex.desconectar();
	}catch (SQLException e) {
		System.out.println("--------ERROR--------");
		System.out.println("No se puede consultar el usuario");
		System.out.println(e.getMessage());
		System.out.println(e.getErrorCode());
	}catch (Exception e) {
		System.out.println("----------ERROR-------------");
		System.out.println("No se pudo consultar el usuario");
		System.out.println(e.getMessage());
		System.out.println(e.getLocalizedMessage());
	}
		return listaventas;
}
	public ArrayList<VentaVO> listaVentas(){
		ArrayList<VentaVO>listaventas=new ArrayList<VentaVO>();
		Conexion conex =new Conexion();
		try {PreparedStatement consulta= conex.getConnection()
			
				 
				.prepareStatement("SELECT * FROM ventas");
		
		ResultSet res= consulta.executeQuery();
		while (res.next()) {
			VentaVO Usuario =new VentaVO();
			Usuario.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
			Usuario.setConsecutivo(Integer.parseInt(res.getString("consecutivo")));
			Usuario.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
			Usuario.setValor_total(Integer.parseInt(res.getString("valor_total")));
			Usuario.setValor_iva(Integer.parseInt(res.getString("valor_iva")));
			Usuario.setValor_mas_iva(Integer.parseInt(res.getString("valor_mas_iva")));
		
			listaventas.add(Usuario);	
		}
		
		
	
		res.close();
		consulta.close();
		conex.desconectar();
	}catch (SQLException e) {
		System.out.println("--------ERROR--------");
		System.out.println("No se puede consultar el usuario");
		System.out.println(e.getMessage());
		System.out.println(e.getErrorCode());
	}catch (Exception e) {
		System.out.println("----------ERROR-------------");
		System.out.println("No se pudo consultar el usuario");
		System.out.println(e.getMessage());
		System.out.println(e.getLocalizedMessage());
	}
		return listaventas;
}
}