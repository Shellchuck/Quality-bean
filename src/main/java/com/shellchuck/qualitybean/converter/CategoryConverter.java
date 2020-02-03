package com.shellchuck.qualitybean.converter;

import com.shellchuck.qualitybean.entity.Category;
import com.shellchuck.qualitybean.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class CategoryConverter implements Converter<String, Category> {
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Category convert(String source) {
        return categoryRepository.findById(Integer.parseInt(source)).get();
    }
}