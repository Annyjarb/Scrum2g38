package com.grupo38.tiendagenerica.DTO;

import java.io.Serializable;

public class DetalleVentaVO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer cod_detalle;
	private Integer codigo_producto ;
	private Integer cantidad;
	private Integer precio_venta;
	private Integer valor_totalp;
	private Integer consecutivo;
	
	public Integer getCod_detalle() {
		return cod_detalle;
	}
	public void setCod_detalle(Integer cod_detalle) {
		this.cod_detalle = cod_detalle;
	}
	public Integer getCodigo_producto() {
		return codigo_producto;
	}
	public void setCodigo_producto(Integer codigo_producto) {
		this.codigo_producto = codigo_producto;
	}
	public Integer getCantidad() {
		return cantidad;
	}
	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	public Integer getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(Integer precio_venta) {
		this.precio_venta = precio_venta;
	}
	public Integer getValor_totalp() {
		return valor_totalp;
	}
	public void setValor_totalp(Integer valor_totalp) {
		this.valor_totalp = valor_totalp;
	}
	public Integer getConsecutivo() {
		return consecutivo;
	}
	public void setConsecutivo(Integer consecutivo) {
		this.consecutivo = consecutivo;
	}
	

}
