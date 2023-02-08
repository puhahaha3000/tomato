package com.example.tomato.config;

import com.example.tomato.security.CustomMemberDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

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
				if (e instanceof BadCredentialsException) {
					res.sendRedirect("/tomato/auth/login_password_error");
				} 
				else if (e instanceof DisabledException) {
					res.sendRedirect("/tomato/auth/login_disabled");
				} 
				else {
					res.sendRedirect("/tomato");
				}
			});
		
		http.logout()
        .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
        .logoutSuccessUrl("/")
        .invalidateHttpSession(true);

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
