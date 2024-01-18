package com.spring.app;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.spring.app.common.FullBeanNameGenerator;
@ComponentScan(nameGenerator = FullBeanNameGenerator.class)
@SpringBootApplication
public class MyMVCApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyMVCApplication.class, args);
	}

}
