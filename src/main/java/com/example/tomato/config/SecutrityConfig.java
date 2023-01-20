package com.example.tomato.config;

import com.example.tomato.security.CustomMemberDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@Configuration
@EnableWebSecurity
public class SecutrityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private CustomMemberDetailsService customMemberDetailsService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// 우선 CSRF설정을 해제한다.
		// 초기개발 시에만 해 주는 것이 좋다.
		http.csrf().disable();

		
		http.formLogin()
			.loginPage("/login")
			.usernameParameter("ID")
			.defaultSuccessUrl("/")
			.failureHandler((req, res, e) -> {
				e.printStackTrace();
			});

		http.authorizeHttpRequests()
		.antMatchers("/member/**").permitAll()
		.antMatchers("/admin/**").hasAnyRole("ADMIN")
		.antMatchers("/**").permitAll()
		.antMatchers("/member/signup_view").permitAll();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.userDetailsService(customMemberDetailsService)
		.passwordEncoder(new BCryptPasswordEncoder());
	}
}
