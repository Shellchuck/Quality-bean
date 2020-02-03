package com.shellchuck.qualitybean.converter;

import com.shellchuck.qualitybean.entity.Responsible;
import com.shellchuck.qualitybean.repository.ResponsibleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class ResponsibleConverter implements Converter<String, Responsible> {
    @Autowired
    private ResponsibleRepository responsibleRepository;

    @Override
    public Responsible convert(String source) {
        return responsibleRepository.findById(Integer.parseInt(source)).get();
    }
}