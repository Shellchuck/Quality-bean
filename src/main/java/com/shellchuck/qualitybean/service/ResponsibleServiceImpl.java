package com.shellchuck.qualitybean.service;

import com.shellchuck.qualitybean.entity.Responsible;
import com.shellchuck.qualitybean.entity.Role;
import com.shellchuck.qualitybean.repository.ResponsibleRepository;
import com.shellchuck.qualitybean.repository.RoleRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashSet;

@Service
public class ResponsibleServiceImpl implements ResponsibleService {

    private final ResponsibleRepository responsibleRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    public ResponsibleServiceImpl(ResponsibleRepository responsibleRepository, RoleRepository roleRepository,
                                  BCryptPasswordEncoder passwordEncoder) {
        this.responsibleRepository = responsibleRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public Responsible findByUserName(String username) {
        return responsibleRepository.findByUsername(username);
    }
    @Override
    public void saveResponsible(Responsible responsible) {
        responsible.setPassword(passwordEncoder.encode(responsible.getPassword()));
        responsible.setEnabled(1);
        Role userRole = roleRepository.findByName("ROLE_USER");
        responsible.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        responsibleRepository.save(responsible);
    }



}
