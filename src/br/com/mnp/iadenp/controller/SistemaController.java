package br.com.mnp.iadenp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SistemaController {

	@RequestMapping("olaMundoSpring")
	 public String olaMundo() {
	 System.out.println("Executando a l�gica com Spring MVC.");
	 return "olaMundo";
	 }

	
	@RequestMapping("testesComScriptlet")
	public String testesComScriptlet() {
	return "testesComScriptlet";
	}
	
}
