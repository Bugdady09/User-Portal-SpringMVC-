package com.jonayed.Config;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {

		Class [] arr = {ApplicationConfig.class};
		
		return arr;
	}

	@Override
	protected String[] getServletMappings() {
		
		String [] arr = {"/"};
		
		return arr;
	}

}
