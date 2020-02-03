package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Customer;
import com.shellchuck.qualitybean.entity.Department;
import com.shellchuck.qualitybean.repository.DepartmentRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/department")
public class DepartmentController {

    private DepartmentRepository departmentRepository;

    public DepartmentController(DepartmentRepository departmentRepository) {
        this.departmentRepository = departmentRepository;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addDepartment(Model model) {
        Department department = new Department();
        model.addAttribute("department", department);
        return "/department/app-department-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveDepartment(@Valid Department department, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/department/app-department-add";
        }
        departmentRepository.save(department);
        model.addAttribute("department", department);
        return "/department/app-department-details";   // powinno byc na app admin page
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.GET)
    public String editForm(Model model, @PathVariable Integer id) {
        Department department = departmentRepository.findById(id).get();
        model.addAttribute("department", department);
        return "/department/app-department-add";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.POST)
    public String updateDepartment(@Valid Department department, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/department/app-department-add";
        }
        departmentRepository.save(department);
        model.addAttribute("department", department);
        return "/customer/app-department-details";   // powinno byc na app admin page
    }

    @RequestMapping("/delete/{id}")
    public String deleteDepartment(@PathVariable Integer id) {
        Department department = departmentRepository.findById(id).get();
        departmentRepository.delete(department);
        return "/department/app-department-details";   // powinno byc na app admin page
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listDepartments(Model model) {
        List<Department> allDepts = departmentRepository.findAll();
        model.addAttribute("allDepts", allDepts);
        return "/department/app-department-list";
    }


}
