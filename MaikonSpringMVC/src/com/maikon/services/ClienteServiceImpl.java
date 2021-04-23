package com.maikon.services;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maikon.dao.ClienteDAO;
import com.maikon.model.Cliente;

@Service
public class ClienteServiceImpl implements ClienteService {
	

	@Autowired
	ClienteDAO clienteDAO;
	
	@Override
	public String adicionarCliente(Cliente cliente) {
		
		StringBuffer errors = new StringBuffer();
		
		if(cliente.getCpf().isEmpty()) {
			errors.append("CPF está em branco");
		}
		
		if(cliente.getDataNascimento().isEmpty()) {
			errors.append("Data está em branco");
		} 
		
		if(cliente.getNome().isEmpty()) {
			errors.append("Data está em branco");
		}
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date data = new Date();

		try {
			data = sdf.parse(cliente.getDataNascimento()); 
			cliente.setDataDB(new Timestamp(data.getTime()));

		} catch (ParseException e) {
			e.printStackTrace();
		}

		clienteDAO.salvar(cliente);
		
		return String.valueOf(errors.toString());
	}

	@Override
	public String listarClientes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer alterar(String cpf) {
		// TODO Auto-generated method stub
		return null;
	}

}
