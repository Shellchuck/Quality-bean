package com.shellchuck.qualitybean.service;

import com.shellchuck.qualitybean.entity.Responsible;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

public class CurrentUser extends User {

    private final Responsible responsible;

    public CurrentUser(String username, String password,
                       Collection<? extends GrantedAuthority> authorities,
                       Responsible responsible) {
        super(username, password, authorities);
        this.responsible = responsible;
    }

    public Responsible getResponsible() {
        return responsible;
    }
}