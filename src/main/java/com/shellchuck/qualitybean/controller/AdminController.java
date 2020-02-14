package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Department;
import com.shellchuck.qualitybean.entity.Responsible;
import com.shellchuck.qualitybean.repository.DepartmentRepository;
import com.shellchuck.qualitybean.service.ResponsibleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.List;

@Controller
public class AdminController {

    private ResponsibleService responsibleService;
    private DepartmentRepository departmentRepository;

    public AdminController(ResponsibleService responsibleService, DepartmentRepository departmentRepository) {
        this.responsibleService = responsibleService;
        this.departmentRepository = departmentRepository;
    }

    @RequestMapping(value = "/create-user", method = RequestMethod.GET)
    public String createUser(Model model) {
        Responsible responsible = new Responsible();
        model.addAttribute("responsible", responsible);
        return "home/register";
    }


    @RequestMapping(value = "/create-user", method = RequestMethod.POST)
    public String saveResponsible(@Valid Responsible responsible, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("responsible", responsible);
            return "home/register";
        }
        responsibleService.saveResponsible(responsible);
        return "redirect:/app";
    }

    @ModelAttribute("allDepts")
    public List<Department> getAllDepts() {
        return departmentRepository.findAll();
    }






}
