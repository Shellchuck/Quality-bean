package com.shellchuck.qualitybean.converter;

import com.shellchuck.qualitybean.entity.Claim;
import com.shellchuck.qualitybean.repository.ClaimRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class ClaimConverter implements Converter<String, Claim> {
    @Autowired
    private ClaimRepository claimRepository;

    @Override
    public Claim convert(String source) {
        return claimRepository.findById(Integer.parseInt(source)).get();
    }
}