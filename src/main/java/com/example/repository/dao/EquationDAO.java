package com.example.repository.dao;

import java.util.List;

import com.example.model.Equation;

public interface EquationDAO {
	void addEquation(Equation equation);

    void saveEquation(Equation equation);

    Equation getEquationById(int id);

    List<Equation> findAllEquations();
}
