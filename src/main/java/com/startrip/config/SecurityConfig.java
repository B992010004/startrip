package com.startrip.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
  
  @Override
  protected void configure(HttpSecurity http) throws Exception {


    http.requiresChannel();


//      .formLogin()
//        .loginPage("/login")
//      .and()
//        .logout()
//          .logoutSuccessUrl("/")
//      .and()
//      .rememberMe()
//        .tokenRepository(new InMemoryTokenRepositoryImpl())
//        .tokenValiditySeconds(2419200)
//        .key("spittrKey")
//      .and()
//       .httpBasic()
//         .realmName("Spittr")
//      .and()
//      .authorizeRequests()
//        .antMatchers("/").authenticated()
//        .antMatchers("/spitter/me").authenticated()
//        .antMatchers(HttpMethod.POST, "/spittles").authenticated()
//        .anyRequest().permitAll();
  }
  
//  @Override
//  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//    auth
//      .inMemoryAuthentication()
//        .withUser("user").password("password").roles("USER");
//  }

  
}
