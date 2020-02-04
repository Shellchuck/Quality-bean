package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Customer;
import com.shellchuck.qualitybean.repository.ClaimRepository;
import com.shellchuck.qualitybean.repository.CustomerRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.persistence.criteria.CriteriaBuilder;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/app/customer")
public class CustomerController {

    private CustomerRepository customerRepository;
    private ClaimRepository claimRepository;

    public CustomerController(CustomerRepository customerRepository, ClaimRepository claimRepository) {
        this.customerRepository = customerRepository;
        this.claimRepository = claimRepository;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addForm(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "/customer/app-customer-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveCustomer(@Valid Customer customer, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/customer/app-customer-add";
        }
        customerRepository.save(customer);
        model.addAttribute("customer", customer);
        return "redirect:/app/customer/list";   // powinno byc na app main page
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.GET)
    public String editForm(Model model, @PathVariable Integer id) {
        Customer customer = customerRepository.findById(id).get();
        model.addAttribute("customer", customer);
        return "/customer/app-customer-add";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.POST)
    public String updateCustomer(@Valid Customer customer, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/customer/app-customer-add";
        }
        customerRepository.save(customer);
        model.addAttribute("customer", customer);
        return "redirect:/app/customer/list";   // powinno byc na app main page
    }

    @RequestMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable Integer id) {
        Customer customer = customerRepository.findById(id).get();
        customerRepository.delete(customer);
        return "redirect:/app/customer/list";   // powinno byc na app main page
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listCustomer(Model model) {
        List<Customer> allCustomers = customerRepository.findAll();
        model.addAttribute("allCustomers", allCustomers);
        return "/customer/app-customer-list";
    }

    @RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
    public String customerDetails(@PathVariable Integer id, Model model) {
        Customer customer = customerRepository.findById(id).get();
        model.addAttribute("customer", customer);
        return "/customer/app-customer-details";
    }





}
