package com.barrettotte.premium.model;

import java.math.BigDecimal;

public class Vehicle{

	private String make;
	private String model;
	private Integer year;
	private BigDecimal premium;


	public Vehicle(final String make, final String model, final Integer year){
		this.make = make;
		this.model = model;
		this.year = year;
		this.premium = BigDecimal.valueOf(0.0);
	}

	public String getMake(){
		return this.make;
	}

	public void setMake(final String make){
		this.make = make;
	}


	public String getModel(){
		return this.model;
	}

	public void setModel(final String model){
		this.model = model;
	}


	public Integer getYear(){
		return this.year;
	}

	public void setYear(final Integer year){
		this.year = year;
	}
	
	public BigDecimal getPremium(){
		return this.premium;
	}
	
	public void setPremium(final BigDecimal premium){
		this.premium = premium;
	}
	
	
	@Override
	public String toString(){
		return String.format("Vehicle %s %s %d => $%f", this.make, this.model, this.year, this.premium);
	}

}
