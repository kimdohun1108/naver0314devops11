package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"controller.*","*.member","data.*","tiles.config","com.example.demo"})
//mapping 해주는 스캔(스캔을 해줘야지만 읽을수가있어요)
@MapperScan("data.mapper")
public class BootMybatisTilesV3Application {

	public static void main(String[] args) {
		SpringApplication.run(BootMybatisTilesV3Application.class, args);
	}
}