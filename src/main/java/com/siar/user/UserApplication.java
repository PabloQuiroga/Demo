package com.siar.user;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class UserApplication {

	@GetMapping("/hello")
	public String hello() {
		return "Hello, Pablo!";
	}

	public static void main(String[] args) {
		SpringApplication.run(UserApplication.class, args);
	}

}
