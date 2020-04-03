package com.barrettotte.premium.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import com.barrettotte.premium.model.Vehicle;
import com.barrettotte.premium.service.PremiumService;


@RestController
@RequestMapping("api/v1/premium")
@Api(value="premium", description="Get premium of vehicle")
public class PremiumController{

	@Autowired
	private PremiumService service;
    
	@GetMapping("/")
	@ApiOperation(value="Calculate premium of a vehicle")
	public ResponseEntity<Vehicle> calculatePremium(@RequestBody Vehicle vehicle) throws Exception{
		return new ResponseEntity<Vehicle>(service.calculatePremium(vehicle), HttpStatus.OK);
    }
    
}
