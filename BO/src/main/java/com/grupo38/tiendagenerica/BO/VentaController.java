package com.grupo38.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tiendagenerica.DAO.DetalleVentaDAO;
import com.grupo38.tiendagenerica.DAO.UsuarioDAO;
import com.grupo38.tiendagenerica.DAO.VentaDAO;
import com.grupo38.tiendagenerica.DTO.DetalleVentaVO;
import com.grupo38.tiendagenerica.DTO.UsuarioVO;
import com.grupo38.tiendagenerica.DTO.VentaVO;


@RestController
public class VentaController {
	@GetMapping("/consultarconsecutivo")
	public ArrayList<VentaVO> consultarconsecutivo() {
		VentaDAO Dao = new VentaDAO();
		return Dao.consultarconsecutivo();
	}
	@GetMapping("/consultarventa")
	public ArrayList<VentaVO> listaVenta() {
		VentaDAO Dao = new VentaDAO();
		return Dao.listaVentas();
	}
	@GetMapping("/resumenventa")
	public ArrayList<VentaVO> resumenVenta() {
		VentaDAO Dao = new VentaDAO();
		return Dao.resumenVenta();
	}
	
	@PostMapping("/registrarventa")
	public void registarVenta(VentaVO venta) {
		VentaDAO Dao = new VentaDAO();
		Dao.registrarVentas(venta);
	}
	
	@PostMapping("/registrarventadetalle")
	public void registarVentaDetalle( DetalleVentaVO detalle) {
		VentaDAO Dao = new VentaDAO();
		System.out.println(detalle.getValorIva());
		Dao.registrarVentasDetalle(detalle);
	}
}
