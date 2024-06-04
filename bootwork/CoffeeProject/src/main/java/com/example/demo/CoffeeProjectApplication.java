package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"tiles.config","com.example.demo","coffee.*"})
@MapperScan("coffee.mapper")
public class CoffeeProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(CoffeeProjectApplication.class, args);
	}

}
