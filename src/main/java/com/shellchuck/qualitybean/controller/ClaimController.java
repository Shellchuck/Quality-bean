package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Analysis;
import com.shellchuck.qualitybean.entity.Claim;
import com.shellchuck.qualitybean.entity.Commodity;
import com.shellchuck.qualitybean.entity.Customer;
import com.shellchuck.qualitybean.entity.Responsible;
import com.shellchuck.qualitybean.entity.Status;
import com.shellchuck.qualitybean.repository.AnalysisRepository;
import com.shellchuck.qualitybean.repository.ClaimRepository;
import com.shellchuck.qualitybean.repository.CommodityRepository;
import com.shellchuck.qualitybean.repository.CustomerRepository;
import com.shellchuck.qualitybean.repository.ResponsibleRepository;
import com.shellchuck.qualitybean.repository.StatusRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/claim")
public class ClaimController {

    private ClaimRepository claimRepository;
    private CustomerRepository customerRepository;
    private ResponsibleRepository responsibleRepository;
    private StatusRepository statusRepository;
    private AnalysisRepository analysisRepository;
    private CommodityRepository commodityRepository;

    public ClaimController(ClaimRepository claimRepository, CustomerRepository customerRepository,
                           ResponsibleRepository responsibleRepository, StatusRepository statusRepository,
                           AnalysisRepository analysisRepository, CommodityRepository commodityRepository) {
        this.claimRepository = claimRepository;
        this.customerRepository = customerRepository;
        this.responsibleRepository = responsibleRepository;
        this.statusRepository = statusRepository;
        this.analysisRepository = analysisRepository;
        this.commodityRepository = commodityRepository;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addForm(Model model) {
        Claim claim = new Claim();
        model.addAttribute("claim", claim);
        return "/claim/app-claim-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveClaim(@Valid Claim claim, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/claim/app-claim-add";
        }
        claimRepository.save(claim);
        model.addAttribute("claim", claim);
        return "redirect:/claim/list";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.GET)
    public String editForm(Model model, @PathVariable Integer id) {
        Claim claim = claimRepository.findById(id).get();
        model.addAttribute("claim", claim);
        return "/claim/app-claim-add";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.POST)
    public String updateClaim(@Valid Claim claim, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/claim/app-claim-add";
        }
        claimRepository.save(claim);
        model.addAttribute("claim", claim);
        return "redirect:/claim/list";
    }

    @RequestMapping("/delete/{id}")
    public String deleteClaim(@PathVariable Integer id) {
        Claim claim = claimRepository.findById(id).get();
        claimRepository.delete(claim);
        return "redirect:/claim/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listClaims(Model model) {
        List<Claim> allClaims = claimRepository.findAll();
        model.addAttribute("allClaims", allClaims);
        return "/claim/app-claim-list";
    }

    @RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
    public String customerClaims(@PathVariable Integer id, Model model) {
        Claim claim = claimRepository.findById(id).get();
        model.addAttribute("claim", claim);
        return "/claim/app-claim-details";
    }

    @ModelAttribute("allCustomers")
    public List<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    @ModelAttribute("allCommodities")
    public List<Commodity> getAllCommodities() {
        return commodityRepository.findAll();
    }

    @ModelAttribute("allResponsibles")
    public List<Responsible> getAllResponsibles() {
        return responsibleRepository.findAll();
    }

    @ModelAttribute("allStatuses")
    public List<Status> getAllStatuses() {
        return statusRepository.findAll();
    }

    @ModelAttribute("allAnalyses")
    public List<Analysis> getAllAnalyses() {
        return analysisRepository.findAll();
    }

}
