package com.maikon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaginaIniciaController {

	
	@RequestMapping(value = "/paginaInicial", method = RequestMethod.GET)
	public String cliente() {
		return "redirect:/";
	}
}
