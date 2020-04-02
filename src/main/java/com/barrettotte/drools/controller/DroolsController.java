package com.barrettotte.drools.controller;

import com.barrettotte.drools.service.DroolsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("api/v1/drools")
public class DroolsController {

    @Autowired
    private DroolsService service;

    @GetMapping("/")
    public String get(){
        return "Welcome to the Drools Experiment API v1.\nPlease enjoy your stay.";
    }

}
