package com.grupo38.tiendagenerica.DTO;

import java.io.Serializable;

public class DetalleVentaVO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer cod_detalle_venta;
	private int cantidad_producto;
	private int codigo_producto ;
	private VentaVO codigo_venta;
	private double valor_total;
	private double valor_venta;
	private double valorIva;
	
	
	public Integer getCod_detalle_venta() {
		return cod_detalle_venta;
	}
	public void setCod_detalle_venta(Integer cod_detalle_venta) {
		this.cod_detalle_venta = cod_detalle_venta;
	}
	public int getCantidad_producto() {
		return cantidad_producto;
	}
	public void setCantidad_producto(int cantidad_producto) {
		this.cantidad_producto = cantidad_producto;
	}
	public int getCodigo_producto() {
		return codigo_producto;
	}
	public void setCodigo_producto(int codigo_producto) {
		this.codigo_producto = codigo_producto;
	}
	
	public VentaVO getCodigo_venta() {
		return codigo_venta;
	}
	public void setCodigo_venta(VentaVO codigo_venta) {
		this.codigo_venta = codigo_venta;
	}
	public double getValor_total() {
		return valor_total;
	}
	public void setValor_total(double valor_total) {
		this.valor_total = valor_total;
	}
	public double getValor_venta() {
		return valor_venta;
	}
	public void setValor_venta(double valor_venta) {
		this.valor_venta = valor_venta;
	}
	public double getValorIva() {
		return valorIva;
	}
	public void setValorIva(double valorIva) {
		this.valorIva = valorIva;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	


}
