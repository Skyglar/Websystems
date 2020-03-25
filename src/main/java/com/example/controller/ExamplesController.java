package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.service.EquationService;

@Controller
public class ExamplesController {
	
	@Autowired
	private EquationService equationService;

	@RequestMapping(value = "/examples", method = RequestMethod.GET)
	public String showExamples(Model model) {
		model.addAttribute("equationList", equationService.findAllEquations());
		return "examples";
	}
}
