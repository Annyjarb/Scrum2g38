package com.grupo38.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tiendagenerica.DAO.ProveedorDAO;
import com.grupo38.tiendagenerica.DTO.ProveedorVO;

@RestController

public class ProveedorControlador {
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */
	
	
	@PostMapping("/registraproveedor")
	public void registrarProveedor(ProveedorVO proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.registrarProveedor(proveedor);
	}

	@GetMapping("/consultarproveedor")
	public ArrayList<ProveedorVO> consultarProveedor(String proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.consultarProveedor(proveedor);
	}

	@GetMapping("/listarproveedor")
	public ArrayList<ProveedorVO> listaDeProveedores() {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.listaDeProveedores();
	}
	@DeleteMapping("/eliminarproveedor")
	public void eliminarproveedor(Integer nit_proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.eliminarproveedor(nit_proveedor);
	}
	
	@PutMapping("/actualizarproveedor")
	public void actualizarProveedor(ProveedorVO proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.actualizarProveedor(proveedor);
	}
	
	
	
	
	

}
