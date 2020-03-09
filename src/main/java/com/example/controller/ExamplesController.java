package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExamplesController {

	@RequestMapping(value = "/examples", method = RequestMethod.GET)
	public String showExamples() {
		
		return "examples";
	}
}
