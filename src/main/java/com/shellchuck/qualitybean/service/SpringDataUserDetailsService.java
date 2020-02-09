package com.shellchuck.qualitybean.service;

import com.shellchuck.qualitybean.entity.Responsible;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.HashSet;
import java.util.Set;

public class SpringDataUserDetailsService implements UserDetailsService {

    private ResponsibleService responsibleService;

    @Autowired
    public void setResponsibleService(ResponsibleService responsibleService) {
        this.responsibleService = responsibleService;
    }

    @Override
    public UserDetails loadUserByUsername(String username) {
        Responsible responsible = responsibleService.findByUserName(username);
        if (responsible == null) {
            throw new UsernameNotFoundException(username);
        }
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        responsible.getRoles().forEach(r ->
                grantedAuthorities.add(new SimpleGrantedAuthority(r.getName())));
        return new CurrentUser(responsible.getUsername(), responsible.getPassword(),
                grantedAuthorities, responsible);
    }



}
