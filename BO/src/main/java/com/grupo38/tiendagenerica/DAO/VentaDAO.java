package com.grupo38.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

}
