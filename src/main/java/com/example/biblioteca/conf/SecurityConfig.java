package com.example.biblioteca.conf;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/", "/login", "/css/**", "/js/**", "/images/**").permitAll() // Permite acesso sem autenticação
                .anyRequest().authenticated() // Todas as outras URLs exigem autenticação
                .and()
            .formLogin()
                .loginPage("/login") // Define a página de login personalizada
                .permitAll() // Permite acesso à página de login sem autenticação
                .and()
            .logout()
                .permitAll()
                .and()
                .csrf().disable(); // Permite acesso ao logout sem autenticação
    }
    
    
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .inMemoryAuthentication()
                .withUser("leonardo").password("{noop}gnu").roles("USER");
    }
}