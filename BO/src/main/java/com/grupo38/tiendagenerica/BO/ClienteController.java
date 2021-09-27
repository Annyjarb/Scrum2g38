package com.grupo38.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tiendagenerica.DAO.ClienteDAO;
import com.grupo38.tiendagenerica.DTO.ClienteVO;


@RestController
public class ClienteController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */
	
	
	@PostMapping("/registrarcliente")
	public void registrarcliente(ClienteVO cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.registrarCliente(cliente);
	}

	@GetMapping("/consultarcliente")
	public ArrayList<ClienteVO> consultarCliente(String cliente) {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.consultarCliente(cliente);
	}

	@GetMapping("/listarclientes")
	public ArrayList<ClienteVO> listaDeclientes() {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.listaDeClientes();
	}
	@DeleteMapping("/eliminarcliente")
	public void eliminarcliente(Integer cedula_cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.eliminarcliente(cedula_cliente);
	}
	
	@PutMapping("/actualizarcliente")
	public void actualizarcliente(ClienteVO cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.actualizarCliente(cliente);
	}
	
	
}