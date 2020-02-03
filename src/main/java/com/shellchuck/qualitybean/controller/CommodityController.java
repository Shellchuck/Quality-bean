package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Category;
import com.shellchuck.qualitybean.entity.Commodity;
import com.shellchuck.qualitybean.entity.Department;
import com.shellchuck.qualitybean.repository.CategoryRepository;
import com.shellchuck.qualitybean.repository.CommodityRepository;
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
@RequestMapping("/commodity")
public class CommodityController {

    private CommodityRepository commodityRepository;
    private CategoryRepository categoryRepository;

    public CommodityController(CommodityRepository commodityRepository, CategoryRepository categoryRepository) {
        this.commodityRepository = commodityRepository;
        this.categoryRepository = categoryRepository;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addCommodity(Model model) {
        Commodity commodity = new Commodity();
        model.addAttribute("commodity", commodity);
        return "/commodity/app-commodity-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveCommodity(@Valid Commodity commodity, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/commodity/app-commodity-add";
        }
        commodityRepository.save(commodity);
        model.addAttribute("commodity", commodity);
        return "redirect:/commodity/list";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.GET)
    public String editForm(Model model, @PathVariable Integer id) {
        Commodity commodity = commodityRepository.findById(id).get();
        model.addAttribute("commodity", commodity);
        return "/commodity/app-commodity-add";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.POST)
    public String updateCommodity(@Valid Commodity commodity, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/commodity/app-commodity-add";
        }
        commodityRepository.save(commodity);
        model.addAttribute("commodity", commodity);
        return "redirect:/commodity/list";
    }

    @RequestMapping("/delete/{id}")
    public String deleteCommodity(@PathVariable Integer id) {
        Commodity commodity = commodityRepository.findById(id).get();
        commodityRepository.delete(commodity);
        return "redirect:/commodity/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listCommodity(Model model) {
        List<Commodity> allComm = commodityRepository.findAll();
        model.addAttribute("allComm", allComm);
        return "/commodity/app-commodity-list";
    }

//    @RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
//    public String departmentCommodity(@PathVariable Integer id, Model model) {
//        Commodity commodity = commodityRepository.findById(id).get();
//        model.addAttribute("commodity", commodity);
//        return "/commodity/app-commodity-details";
//    }

    @ModelAttribute("allCategories")
    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }



}
