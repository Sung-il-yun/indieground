package com.indieground.movie;

import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {
	public static void main(String[] args) {
		
		
		//SpringTest st = new SpringTest();
		//st.method();
		
		GenericXmlApplicationContext ct = new GenericXmlApplicationContext("classpath:applicationContext.xml");
		
		SpringTest test= ct.getBean("good", SpringTest.class);
		test.method();
		
		
		ct.close();
	}
}
