package com.barrettotte.premium.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import com.barrettotte.premium.service.VehicleService;


@RestController
@RequestMapping("api/v1/vehicle")
@Api(value="vehicle", description="Get list of vehicles")
public class VehicleController{

    @Autowired
    private VehicleService service;
    

    @GetMapping("/color")
    @ApiOperation(value="Get list of colors")
    public ResponseEntity<List<String>> getColors() throws Exception{
        return new ResponseEntity<>(service.getColors(), HttpStatus.OK);
    }

    
	@GetMapping("/make")
	@ApiOperation(value="Get vehicle makes")
	public ResponseEntity<List<String>> getMakes() throws Exception{
		return new ResponseEntity<>(service.getMakes(), HttpStatus.OK);
    }

    @GetMapping("/make/{make}/models")
    @ApiOperation(value="Get models of make")
    public ResponseEntity<List<String>> getModels(
        @ApiParam(value="Make of vehicle", required=true) @PathVariable("make") final String make
    ) throws Exception{

        return new ResponseEntity<>(service.getModels(make), HttpStatus.OK);
    }

    @GetMapping("/make{make}/models/{model}")
    @ApiOperation(value="Get years of make and model")
    public ResponseEntity<List<Integer>> getYears(
        @ApiParam(value="Make of vehicle",  required=true) @PathVariable("make")  final String make, 
        @ApiParam(value="Model of vehicle", required=true) @PathVariable("model") final String model
    ) throws Exception{
        
        return new ResponseEntity<>(service.getYears(make, model), HttpStatus.OK);
    }
    
}
