package com.shellchuck.qualitybean.converter;

import com.shellchuck.qualitybean.entity.Customer;
import com.shellchuck.qualitybean.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class CustomerConverter implements Converter<String, Customer> {
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public Customer convert(String source) {
        return customerRepository.findById(Integer.parseInt(source)).get();
    }
}