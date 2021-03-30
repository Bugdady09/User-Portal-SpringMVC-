package com.jonayed.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages="com.jonayed")
public class ApplicationConfig {
	
	@Bean
	InternalResourceViewResolver viewRResolver() {
		
		InternalResourceViewResolver view = new InternalResourceViewResolver();
		view.setPrefix("/WEB-INF/View/");
		view.setSuffix(".jsp");
		
		return view;
	}
	
	
	

}
