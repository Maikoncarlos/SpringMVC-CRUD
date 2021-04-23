package com.maikon.services;

import com.maikon.model.Cliente;

public interface ClienteService {
	
	String adicionarCliente(Cliente cliente);
	String listarClientes();
	Integer alterar(String cpf);
	
}
