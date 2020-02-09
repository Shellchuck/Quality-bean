package com.shellchuck.qualitybean.converter;

import com.shellchuck.qualitybean.entity.Commodity;
import com.shellchuck.qualitybean.repository.CommodityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class CommodityConverter implements Converter<String, Commodity> {
    @Autowired
    private CommodityRepository commodityRepository;

    @Override
    public Commodity convert(String source) {
        return commodityRepository.findById(Integer.parseInt(source)).get();
    }
}
