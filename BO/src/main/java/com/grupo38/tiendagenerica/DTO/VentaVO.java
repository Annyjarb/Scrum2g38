package com.grupo38.tiendagenerica.DTO;

import java.io.Serializable;

public class VentaVO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer consecutivo;
	private Integer cedula_cliente;
	private Integer valor_total;
	private Integer valor_iva;
	private Integer valor_mas_iva;
	private Integer cedula_usuario;
	
	public Integer getCedula_usuario() {
		return cedula_usuario;
	}
	public void setCedula_usuario(Integer cedula_usuario) {
		this.cedula_usuario = cedula_usuario;
	}
	public Integer getConsecutivo() {
		return consecutivo;
	}
	public void setConsecutivo(Integer consecutivo) {
		this.consecutivo = consecutivo;
	}
	public Integer getCedula_cliente() {
		return cedula_cliente;
	}
	public void setCedula_cliente(Integer cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	public Integer getValor_total() {
		return valor_total;
	}
	public void setValor_total(Integer valor_total) {
		this.valor_total = valor_total;
	}
	public Integer getValor_iva() {
		return valor_iva;
	}
	public void setValor_iva(Integer valor_iva) {
		this.valor_iva = valor_iva;
	}
	public Integer getValor_mas_iva() {
		return valor_mas_iva;
	}
	public void setValor_mas_iva(Integer valor_mas_iva) {
		this.valor_mas_iva = valor_mas_iva;
	} 

}
