package com.shellchuck.qualitybean.converter;

import com.shellchuck.qualitybean.entity.Status;
import com.shellchuck.qualitybean.repository.StatusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class StatusConverter implements Converter<String, Status> {
    @Autowired
    private StatusRepository statusRepository;

    @Override
    public Status convert(String source) {
        return statusRepository.findById(Integer.parseInt(source)).get();
    }
}