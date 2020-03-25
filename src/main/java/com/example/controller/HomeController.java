package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.model.dto.EquationDto;
import com.example.service.EquationService;

@Controller
public class HomeController {

	@Autowired
	private EquationService equationService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showHome(Model model) {
		model.addAttribute("equation", new EquationDto());
		return "index";
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String equationForm(@ModelAttribute("equation") EquationDto equationDto, Model model) {

		if (equationDto.getA() == null || equationDto.getA() == 0) {
			model.addAttribute("error", "Property a cannot be empty or zero");		
			return "index";
		}
		if(equationDto.getB() == null || equationDto.getB() == 0)
			equationDto.setB(1.0);
		if(equationDto.getC() == null) 
			equationDto.setC(0.0);

		equationService.equationCulc(equationDto);

		return "redirect:/examples";
	}
}
