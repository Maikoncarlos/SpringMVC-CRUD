package com.maikon.model.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.maikon.model.Cliente;

public class ClienteMapper implements RowMapper<Cliente>{

	@Override
	public Cliente mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Cliente cliente = new Cliente();
		
		cliente.setCpf(rs.getString("cpf"));
		cliente.setRg(rs.getString("rg"));
		cliente.setNome(rs.getString("nome"));
		cliente.setTelefone(rs.getString("telefone"));
		cliente.setEndereco(rs.getString("endereco"));
		cliente.setDescricao(rs.getString("descricao"));
		cliente.setProfissao(rs.getString("profissao"));
		cliente.setDataDB(rs.getTimestamp("dataNascimento"));
		cliente.setSalario(rs.getFloat("salario"));
		
				
		return cliente;
	}
	
	

}
