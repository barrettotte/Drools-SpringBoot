package com.barrettotte.drools.service;

import com.barrettotte.drools.model.Product;

import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class DroolsService{

    @Autowired
	private KieContainer kieContainer;

    
    public Product calculateDiscount(final Product product){
        return runProductRules(copyProduct(product));
    }

    private Product copyProduct(final Product src){
        return new Product(src.getName(), src.getType(), src.getPrice());
    }

    private Product runProductRules(final Product product){
        final KieSession kieSession = kieContainer.newKieSession();
		kieSession.insert(product);
		kieSession.fireAllRules();
        kieSession.dispose();
        return product;
    }

}
