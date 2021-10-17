package com.grupo38.tiendagenerica.DAO;

import java.sql.*;

public class Conexion {
	//paramentos de conexion
		static String nombre_base_datos="g38e2";
		//root my sql
		static String usuariobd = "admin";
		static String clavebd="minticroca";
		
		//quiere decir local host
		static String url="jdbc:mariadb://tiendasgenericasdr-g9-g38-53.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/"+ nombre_base_datos;
	
	//objeto sin inicializar
	
	Connection connection = null;
	
	//Constructor de DBconnc
	
	public Conexion () {
		try {
			// obtenemos el driver de para mysql
			Class.forName("org.mariadb.jdbc.Driver");
			connection= DriverManager.getConnection(url,usuariobd, clavebd);
			if (connection!=null) {
				System.out.println("Conexion a base de datos"+ nombre_base_datos + "OK\n" );
			}
		}catch (SQLException e) {
			System.out.println(e);
		}catch (ClassNotFoundException e) {
			System.out.println("e");
		}catch (Exception e) {
			System.out.println(e);
		}
		
	}
	public  Connection getConnection() {
		return connection;
	}
	public void desconectar() {
		connection=null;
	}
	
			}
