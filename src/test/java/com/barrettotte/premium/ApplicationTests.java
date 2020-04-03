package com.barrettotte.premium;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.math.BigDecimal;

import com.barrettotte.premium.model.Vehicle;
import com.barrettotte.premium.service.PremiumService;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ApplicationTests {

	@Autowired
	PremiumService premiumService;


	@Test
	void premium_Jeep(){
		final Vehicle vehicle = premiumService.calculatePremium(
			new Vehicle("Jeep", "Cherokee", 1997));

		assertEquals(BigDecimal.valueOf(25.0), vehicle.getPremium());
	}

	@Test
	void premium_Porsche(){
		final Vehicle vehicle = premiumService.calculatePremium(
			new Vehicle("Porsche", "Panamera", 2014));
		
		assertEquals(BigDecimal.valueOf(95.0), vehicle.getPremium());
	}

	@Test
	void premium_Porsche_911(){
		final Vehicle vehicle = premiumService.calculatePremium(
			new Vehicle("Porsche", "911", 2014));
		
		assertEquals(BigDecimal.valueOf(195.0), vehicle.getPremium());
	}

}
