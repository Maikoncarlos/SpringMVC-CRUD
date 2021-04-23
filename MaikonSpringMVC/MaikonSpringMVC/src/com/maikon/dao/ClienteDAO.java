package com.maikon.dao;

import java.util.Collections;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import com.maikon.model.Cliente;
import com.maikon.model.mapper.ClienteMapper;


public class ClienteDAO {
	
	private JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	} 
	
	
	public int salvar(Cliente cliente){    
	    String sql="insert into clientes(cpf, rg, nome, telefone, endereco, descricao, profissao, dataNascimento, salario)" +
	    		"values('"+cliente.getCpf()+"','"+cliente.getRg()+"','"+cliente.getNome()+"','"+cliente.getTelefone()+"','"+
	    		cliente.getEndereco()+"','"+cliente.getDescricao()+"','"+cliente.getProfissao()+"', '"+cliente.getDataDB()+"','"+cliente.getSalario()+"')";
	    return template.update(sql);
	    
	}
		
	public int atualizar(Cliente cliente){
		
		String sql = "update clientes set rg=?, nome=?, telefone=?, endereco=?, descricao=?, profissao=?, dataNascimento=?, salario=? where cpf=?";
		return template.update(sql, new Object[] {cliente.getRg(),cliente.getNome(),cliente.getTelefone(),cliente.getEndereco(),cliente.getDescricao(),cliente.getProfissao(),cliente.getDataDB(),cliente.getSalario(),cliente.getCpf()});
		
	}
	
	public int deletar(String cpf){    
	    String sql="delete from clientes where cpf=?";    
	    return template.update(sql,cpf); 	
	
	}
	
	
	public Cliente buscar(String cpf){   
	    String sql="select cpf,rg,nome,telefone,endereco,descricao,profissao, dataNascimento, salario from clientes where cpf=?";
	    try {
	    	return template.queryForObject(sql,new Object[] {cpf}, new ClienteMapper());
	    }catch(EmptyResultDataAccessException e) {
	    	return null;
	    }
	}

	public List<Cliente> mostrar(){
		try {
			return template.query("select cpf,rg,nome,telefone,endereco,descricao,profissao, dataNascimento, salario from clientes", new ClienteMapper());
		}catch(EmptyResultDataAccessException e) {
	    	return Collections.emptyList();
	    }
		
	}
				
}
	
	
	
	

	
	
	
	
	
	
	
	
	
	
		



