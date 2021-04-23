package com.maikon.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.maikon.dao.ClienteDAO;
import com.maikon.model.Cliente;
import com.maikon.services.ClienteService;

@Controller
public class ClienteController {	

	@Autowired
	ClienteDAO clienteDAO;
	
	@Autowired
	ClienteService clienteService;	
	

	@RequestMapping(value = "/cliente", method = RequestMethod.GET)
	public ModelAndView cliente() {
		return new ModelAndView("cliente", "command", new Cliente());
	}

	@RequestMapping(value = "/addCliente", method = RequestMethod.POST)
	public String adicionarCliente(
			@ModelAttribute("SpringWeb") Cliente cliente, ModelMap model) {

		String errors = clienteService.adicionarCliente(cliente);

		if(!errors.isEmpty()) {
			model.addAttribute("msg", clienteService.adicionarCliente(cliente));
			return "redirect:/cliente";	
		}
		
		return "redirect:/listaClientes";	

	}

	@RequestMapping(value = "/listaClientes", method = RequestMethod.GET)
	public String listarClientes(ModelMap model) {
		
		
		
		
		List<Cliente> clientes = clienteDAO.mostrar();
		model.put("clientes", clientes);
		return "listaCliente";
	}

	@RequestMapping(value="/alterar/{cpf}",method = RequestMethod.GET)    
	public ModelAndView alterar(@PathVariable String cpf, ModelMap model){  		

		Cliente cl = null;

		if(!cpf.isEmpty()) {
			cl = clienteDAO.buscar(cpf);
		}

		if(cl != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			cl.setDataNascimento(sdf.format(cl.getDataDB()));
			model.addAttribute("cliente", cl);  
			return new ModelAndView("editarCliente","command", new Cliente());
		}

		model.addAttribute("msg","Cliente nao encontrado!");
		
		return new ModelAndView("listarCliente","command", new Cliente());

	}

	@RequestMapping(value="/alterar", method = RequestMethod.POST)    
	public String atualizarCliente(@ModelAttribute("SpringWeb") Cliente cliente, Model model){    
		int resultado = 0;

		if(cliente != null && cliente.getCpf() != null) {
			
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			Date data = new Date();

			try {
				data = sdf.parse(cliente.getDataNascimento()); 
				cliente.setDataDB(new Timestamp(data.getTime()));

			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			resultado = clienteDAO.atualizar(cliente);
		}

		if(resultado > 0) {
			return "redirect:/listaClientes";
		}

		return "editarCliente/"+cliente.getCpf();
	} 

	@RequestMapping(value="/deletar/{cpf}",method = RequestMethod.GET)    
	public String deletar(@PathVariable String cpf, ModelMap model){  		
		int resultado = 0;

		if(!cpf.isEmpty()) {
			resultado = clienteDAO.deletar(cpf);
		}

		if(resultado > 0) {
			model.addAttribute("msg","Os dados foram deletados!");  
			return "redirect:/listaClientes";
		}

		return "cliente";

	}

	@RequestMapping(value = "/procurar", method = RequestMethod.GET)
	public ModelAndView procurar() {
		return new ModelAndView("/procurarCliente", "command", new Cliente());
	}


	@RequestMapping(value = "/mostrarCliente", method = RequestMethod.POST)	
	public String mostrarCliente(@ModelAttribute("SpringWeb") Cliente cliente, ModelMap model){ 

		Cliente cl = null;

		if(!cliente.getCpf().isEmpty()) {
			cl = clienteDAO.buscar(cliente.getCpf());
		}

		if(cl != null) {
			model.put("cliente", cl);  
			return "exibeCliente";
		}

		model.addAttribute("msg","Cliente nao encontrado!");
		
		return "redirect:/procurar";

	}


}












