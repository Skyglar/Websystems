package com.example.service;

import org.springframework.stereotype.Service;

@Service
public class EquationService {

	public double equationCulc(double a, double b, double c) {
		double D = (b*b) - 4 * a * c;
		if(D < 0) {
			return 0;
		} else if(D == 1) {
			return (-b + Math.sqrt(D)) / (2 * a);
		} else {
			double x1 = (-b + Math.sqrt(D)) / (2 * a);
			double x2 = (-b - Math.sqrt(D)) / (2 * a);
			return x1;
		}
	}
}
