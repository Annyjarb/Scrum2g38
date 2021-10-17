package com.grupo38.tiendagenerica.DTO;

import java.io.Serializable;

public class ProveedorVO implements Serializable {

	private static final long serialVersionUID=1L;

	private Integer nit_proveedor;
	private String direccion_proveedor;
	private String nombre_proveedor;
	private String telefono_proveedor;
	private  String ciudad_proveedor;

	public Integer getNit_proveedor() {
		return nit_proveedor;
	}
	public void setNit_proveedor(Integer cedula_cliente) {
		this.nit_proveedor = cedula_cliente;
	}
	public String getDireccion_proveedor() {
		return direccion_proveedor;
	}
	public void setDireccion_proveedor(String direccion_cliente) {
		this.direccion_proveedor = direccion_cliente;
	}
	public String getNombre_proveedor() {
		return nombre_proveedor;
	}
	public void setNombre_proveedor(String nombre_cliente) {
		this.nombre_proveedor = nombre_cliente;
	}
	public String getTelefono_proveedor() {
		return telefono_proveedor;
	}
	public void setTelefono_proveedor(String telefono_cliente) {
		this.telefono_proveedor = telefono_cliente;
	}
	public String getCiudad_proveedor() {
		return ciudad_proveedor;
	}
	public void setCiudad_proveedor(String correo_cliente) {
		this.ciudad_proveedor = correo_cliente;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
