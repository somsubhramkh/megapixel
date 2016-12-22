package com.niit.megapixel.frontend.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	protected void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery("select username, password, enabled from user where username=?")
		.authoritiesByUsernameQuery("select username, role from user where username=?");
		
		
		
		
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
		.antMatchers("/ShowCart**").access("hasAnyRole('ADMIN','USER')")
		.antMatchers("/AddToCart/**").access("hasAnyRole('ADMIN','USER')")
		.antMatchers("/ProductAdmin**").access("hasRole('ADMIN')")
		.and()
		.formLogin()
		.loginPage("/Login").and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).and().csrf().disable();
	}

	
}
