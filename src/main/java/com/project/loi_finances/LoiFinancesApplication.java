package com.project.loi_finances;

import nz.net.ultraq.thymeleaf.layoutdialect.LayoutDialect;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class LoiFinancesApplication {

	@Bean
	public LayoutDialect layoutDialect() {
		return new LayoutDialect();
	}

	public static void main(String[] args) {
		SpringApplication.run(LoiFinancesApplication.class, args);
	}

}
