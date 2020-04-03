package com.barrettotte.premium.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class VehicleService {

    public List<String> getColors(){
        final List<String> colors = new ArrayList<>();
        // TODO:   repository.getColors()
        return colors;
    }

    public List<String> getMakes(){
        final List<String> makes = new ArrayList<>();
        // TODO:   repository.getMakes()
        return makes;
    }

    public List<String> getModels(final String make){
        final List<String> models = new ArrayList<>();
        // TODO:   repository.getModels(make)
        return models;
    }

    public List<Integer> getYears(final String make, final String model){
        final List<Integer> years = new ArrayList<>();
        // TODO:   repository.getYears(make, model)
        return years;
    }
}