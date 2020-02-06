package com.shellchuck.qualitybean.service;

import com.shellchuck.qualitybean.entity.Responsible;

public interface ResponsibleService {

    Responsible findByUserName(String name);

    void saveResponsible(Responsible responsible);


}
