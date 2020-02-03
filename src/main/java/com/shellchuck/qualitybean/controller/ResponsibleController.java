package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Category;
import com.shellchuck.qualitybean.entity.Commodity;
import com.shellchuck.qualitybean.entity.Department;
import com.shellchuck.qualitybean.entity.Responsible;
import com.shellchuck.qualitybean.repository.DepartmentRepository;
import com.shellchuck.qualitybean.repository.ResponsibleRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/responsible")
public class ResponsibleController {

    private ResponsibleRepository responsibleRepository;
    private DepartmentRepository departmentRepository;

    public ResponsibleController(ResponsibleRepository responsibleRepository, DepartmentRepository departmentRepository) {
        this.responsibleRepository = responsibleRepository;
        this.departmentRepository = departmentRepository;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addResponsible(Model model) {
        Responsible responsible = new Responsible();
        model.addAttribute("responsible", responsible);
        return "/responsible/app-responsible-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveResponsible(@Valid Responsible responsible, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/responsible/app-responsible-add";
        }
        responsibleRepository.save(responsible);
        model.addAttribute("responsible", responsible);
        return "redirect:/responsible/list";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.GET)
    public String editForm(Model model, @PathVariable Integer id) {
        Responsible responsible = responsibleRepository.findById(id).get();
        model.addAttribute("responsible", responsible);
        return "/responsible/app-responsible-add";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.POST)
    public String updateResponsible(@Valid Responsible responsible, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/responsible/app-responsible-add";
        }
        responsibleRepository.save(responsible);
        model.addAttribute("responsible", responsible);
        return "redirect:/responsible/list";
    }

    @RequestMapping("/delete/{id}")
    public String deleteResponsible(@PathVariable Integer id) {
        Responsible responsible = responsibleRepository.findById(id).get();
        responsibleRepository.delete(responsible);
        return "redirect:/responsible/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listResponsible(Model model) {
        List<Responsible> allResp = responsibleRepository.findAll();
        model.addAttribute("allResp", allResp);
        return "/responsible/app-responsible-list";
    }

    @ModelAttribute("allDepts")
    public List<Department> getAllDepts() {
        return departmentRepository.findAll();
    }

}