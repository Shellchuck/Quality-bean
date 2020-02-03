package com.shellchuck.qualitybean.converter;

import com.shellchuck.qualitybean.entity.Analysis;
import com.shellchuck.qualitybean.repository.AnalysisRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class AnalysisConverter implements Converter<String, Analysis> {
    @Autowired
    private AnalysisRepository analysisRepository;

    @Override
    public Analysis convert(String source) {
        return analysisRepository.findById(Integer.parseInt(source)).get();
    }
}
