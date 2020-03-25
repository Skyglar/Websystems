package com.example.service;

import java.util.List;

import com.example.model.Equation;
import com.example.model.dto.EquationDto;

public interface EquationService {

	void equationCulc(EquationDto equationDto);
	
	List<Equation> findAllEquations();
	
}
