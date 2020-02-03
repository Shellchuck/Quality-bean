package com.shellchuck.qualitybean.converter;

import com.shellchuck.qualitybean.entity.Department;
import com.shellchuck.qualitybean.repository.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class DepartmentConverter implements Converter<String, Department> {
    @Autowired
    private DepartmentRepository departmentRepository;

    @Override
    public Department convert(String source) {
        return departmentRepository.findById(Integer.parseInt(source)).get();
    }
}