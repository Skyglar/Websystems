package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.model.Equation;
import com.example.model.dto.EquationDto;
import com.example.repository.EquationRepository;
import com.example.service.EquationService;

@Service
public class EquationServiceImpl implements EquationService {

	private EquationRepository repository;

	@Autowired 
	public void setRepository(EquationRepository repository) {
		this.repository = repository; 
	}
	 
	@Override
	@Transactional
	public void equationCulc(EquationDto dto) {
		Equation equation = DTOTransfer(dto);
		double a = dto.getA();
		double b = dto.getB();
		double c = dto.getC();
		double D = (b * b) - 4 * a * c;

		if (D == 0) {
			equation.setX1((-b + Math.sqrt(D)) / (2 * a));
		} else if (D > 0) {
			equation.setX1((-b + Math.sqrt(D)) / (2 * a));
			equation.setX2((-b - Math.sqrt(D)) / (2 * a));
		}

		repository.addEquation(equation);
	}

	private Equation DTOTransfer(EquationDto dto) {
		Equation equation = new Equation();
		equation.setA(dto.getA());
		equation.setB(dto.getB());
		equation.setC(dto.getC());
		return equation;
	}

}
