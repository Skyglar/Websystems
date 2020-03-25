package com.example.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.model.Equation;
import com.example.repository.dao.EquationDAO;

@Repository
public class EquationRepository implements EquationDAO {

	private SessionFactory sessionFactory;
	
	@Autowired
	public EquationRepository(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	private Session currentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addEquation(Equation equation) {
		currentSession().save(equation);
	}

	@Override
	public void saveEquation(Equation equation) {
		currentSession().update(equation);	
	}

	@Override
	public Equation getEquationById(int id) {	
		return (Equation) currentSession().get(Equation.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Equation> findAllEquations() {
		return currentSession().createQuery("from Equation").list();
	}
	
}
