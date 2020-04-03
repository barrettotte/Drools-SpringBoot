package com.barrettotte.premium.service;

import com.barrettotte.premium.model.Vehicle;

import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PremiumService{

    @Autowired
	private KieContainer kieContainer;


    public Vehicle calculatePremium(final Vehicle vehicle){
        return runPremiumRules(copyVehicle(vehicle));
    }

    private Vehicle copyVehicle(final Vehicle src){
        return new Vehicle(src.getMake(), src.getModel(), src.getYear());
    }

    private Vehicle runPremiumRules(final Vehicle vehicle){
        final KieSession kieSession = kieContainer.newKieSession();
		kieSession.insert(vehicle);
        kieSession.fireAllRules();
        kieSession.dispose();
        return vehicle;
    }

}
