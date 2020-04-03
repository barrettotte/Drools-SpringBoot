package com.barrettotte.botw.model;

import java.math.BigDecimal;

public class Product{

	private String name;
	private String type;
	private BigDecimal price;
	private BigDecimal discount;
	
    
	public Product(){
		this.name = "";
		this.type = "";
		this.price = BigDecimal.valueOf(0.0);
		this.discount = BigDecimal.valueOf(0.0);
	}
	
	public Product(final String name, final String type, final BigDecimal price){
		this.name = name;
		this.type = type;
		this.price = price;
		this.discount = BigDecimal.valueOf(0.0);
	}
	
	
	public String getName(){
		return this.name;
	}

	public void setName(final String name){
		this.name = name;
	}


	public String getType(){
		return this.type;
	}

	public void setType(final String type){
		this.type = type;
	}


	public BigDecimal getPrice(){
		return this.price;
	}

	public void setPrice(final BigDecimal price){
		this.price = price;
	}


	public BigDecimal getDiscount(){
		return this.discount;
	}

	public void setDiscount(final BigDecimal discount){
		this.discount = discount;
	}
    
}
