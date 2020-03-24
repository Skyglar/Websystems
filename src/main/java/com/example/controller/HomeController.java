package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.model.dto.EquationDto;
import com.example.service.EquationService;

@Controller()
public class HomeController {
	
	@Autowired 
	private EquationService equationService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showHome(Model model) {
		model.addAttribute("equation", new EquationDto());
		return "index";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String equationForm(@ModelAttribute("equation") EquationDto equationDto) {
		
		equationService.equationCulc(equationDto);
		
		return "redirect:/examples";
	}
}
