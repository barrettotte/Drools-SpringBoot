package com.barrettotte.drools.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import com.barrettotte.drools.model.Product;
import com.barrettotte.drools.service.DroolsService;


@RestController
@RequestMapping("api/v1/drools")
@Api(value="drools", description="Drools")
public class DroolsController{

	@Autowired
	private DroolsService droolsService;

	@GetMapping("/")
	@ApiOperation(value="Base endpoint")
	public String index(){
		return "Welcome to the Drools API\nPlease enjoy your stay";
	}
    
	@GetMapping("/discount")
	@ApiOperation(value="Calculate discount of a product")
	public ResponseEntity<Product> calculateDiscount(@RequestBody Product product) throws Exception{
		return new ResponseEntity<Product>(droolsService.calculateDiscount(product), HttpStatus.OK);
    }
    
}
