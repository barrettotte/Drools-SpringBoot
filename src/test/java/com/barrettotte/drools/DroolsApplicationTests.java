package com.barrettotte.drools;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.math.BigDecimal;

import com.barrettotte.drools.model.Product;
import com.barrettotte.drools.service.DroolsService;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DroolsApplicationTests {

	@Autowired
	DroolsService service;

	@Test
	void drools_Test1(){
		final Product product = new Product("Test 1", "Test", BigDecimal.valueOf(100.00));
		final Product withDiscount = service.calculateDiscount(product);

		assertEquals(BigDecimal.valueOf(25.0), withDiscount.getDiscount());
	}

}
