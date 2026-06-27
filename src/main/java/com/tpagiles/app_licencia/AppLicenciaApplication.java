package com.tpagiles.app_licencia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
@EnableScheduling
public class AppLicenciaApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppLicenciaApplication.class, args);
	}

	@Bean
	public WebMvcConfigurer corsConfigurer() {
		return new WebMvcConfigurer() {
			@Override
			public void addCorsMappings(CorsRegistry registry) {
				registry.addMapping("/**") // Permite CORS para todos los endpoints
						.allowedOriginPatterns("*") // Permite cualquier patrón de URL de origen
						.allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS") // Métodos permitidos
						.allowedHeaders("*") // Permite todos los encabezados
						.allowCredentials(true); // Permite cookies o autenticación si es necesario
			}
		};
	}
}