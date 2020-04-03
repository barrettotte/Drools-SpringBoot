package com.barrettotte.drools.config;

import java.util.Collections;
import java.util.Set;

import com.google.common.collect.Sets;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;


@Configuration
@EnableSwagger2
public class SwaggerConfig {

    static final Contact DEFAULT_CONTACT = new Contact("Barrett Otte", "https://github.com/barrettotte/", "barrettotte@gmail.com");
    private static final Set<String> DEFAULT_PRODUCES_AND_CONSUMES = Sets.newHashSet("application/json", "application/xml");

    @Bean
    Docket api() { 
        return new Docket(DocumentationType.SWAGGER_2)  
          .select()
          .apis(RequestHandlerSelectors.basePackage("com.barrettotte.drools"))                               
          .paths(PathSelectors.any())
          .build()
          .apiInfo(apiInfo())
          .consumes(DEFAULT_PRODUCES_AND_CONSUMES)
          .produces(DEFAULT_PRODUCES_AND_CONSUMES);
    }

    private ApiInfo apiInfo(){
        return new ApiInfo(
            "Drools API", 
            "An API to handle running business rules via Drools", 
            "API TOS",
            "Terms of service", 
            DEFAULT_CONTACT, 
            "License of API", "API license URL", Collections.emptyList()
        );
    }

}
