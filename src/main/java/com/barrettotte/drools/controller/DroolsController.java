package com.barrettotte.drools.controller;

import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.barrettotte.drools.model.Product;
import com.barrettotte.drools.service.DroolsService;

@RestController
@RequestMapping("api/v1/drools")
public class DroolsController{

	@Autowired
	private DroolsService droolsService;
	
    
	@GetMapping("/discount")
	public ResponseEntity<String> calculateDiscount(@RequestBody Product product) throws Exception{
		final Product withDiscount = droolsService.calculateDiscount(product);

		return new ResponseEntity<String>(withDiscount.getDiscount().toString(), HttpStatus.OK);
    }
    
}
