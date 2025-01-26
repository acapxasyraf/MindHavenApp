package com.mindhaven.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;


@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http, HandlerMappingIntrospector introspector) throws Exception {
        MvcRequestMatcher dashboardMatcher = new MvcRequestMatcher(introspector, "/views/dashboard.jsp");
        dashboardMatcher.setServletPath("/");

        http
            .csrf(csrf -> csrf.disable()) // Disable CSRF protection
            .authorizeHttpRequests(authorize -> authorize
            .requestMatchers(dashboardMatcher, new AntPathRequestMatcher("/views/appointment/**")).authenticated()
            .requestMatchers(new AntPathRequestMatcher("/css/**"), new AntPathRequestMatcher("/js/**")).permitAll()
            .anyRequest().permitAll())
            .logout(logout -> logout
            .logoutUrl("/logout")
            .logoutSuccessUrl("/home")
            .invalidateHttpSession(true)
            .deleteCookies("JSESSIONID")
            .permitAll());
        return http.build();
    }
}