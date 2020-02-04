package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Analysis;
import com.shellchuck.qualitybean.entity.Claim;
import com.shellchuck.qualitybean.repository.AnalysisRepository;
import com.shellchuck.qualitybean.repository.ClaimRepository;
import com.shellchuck.qualitybean.repository.DefectRepository;
import com.shellchuck.qualitybean.repository.ResponsibleRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/analysis")
public class AnalysisController {

    private AnalysisRepository analysisRepository;
    private ClaimRepository claimRepository;
    private ResponsibleRepository responsibleRepository;
    private DefectRepository defectRepository;

    public AnalysisController(AnalysisRepository analysisRepository, ClaimRepository claimRepository,
                              ResponsibleRepository responsibleRepository, DefectRepository defectRepository) {
        this.analysisRepository = analysisRepository;
        this.claimRepository = claimRepository;
        this.responsibleRepository = responsibleRepository;
        this.defectRepository = defectRepository;
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addForm(Model model) {
        Analysis analysis = new Analysis();
        model.addAttribute("analysis", analysis);
        return "/analysis/app-analysis-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveAnalysis(@Valid Analysis analysis, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/analysis/app-analysis-add";
        }
        analysisRepository.save(analysis);
        model.addAttribute("analysis", analysis);
        return "redirect:/analysis/list";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.GET)
    public String editForm(Model model, @PathVariable Integer id) {
        Analysis analysis = analysisRepository.findById(id).get();
        model.addAttribute("analysis", analysis);
        return "/analysis/app-analysis-add";
    }

    @RequestMapping(value = "/change/{id}", method = RequestMethod.POST)
    public String updateAnalysis(@Valid Analysis analysis, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/analysis/app-analysis-add";
        }
        analysisRepository.save(analysis);
        model.addAttribute("analysis", analysis);
        return "redirect:/analysis/list";
    }

    @RequestMapping("/delete/{id}")
    public String deleteAnalysis(@PathVariable Integer id) {
        Analysis analysis = analysisRepository.findById(id).get();
        analysisRepository.delete(analysis);
        return "redirect:/analysis/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listAnalysis(Model model) {
        List<Analysis> allAnalyses = analysisRepository.findAll();
        model.addAttribute("allAnalyses", allAnalyses);
        return "/analysis/app-analysis-list";
    }

    @RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
    public String customerAnalysis(@PathVariable Integer id, Model model) {
        Analysis analysis = analysisRepository.findById(id).get();
        model.addAttribute("analysis", analysis);
        return "/analysis/app-claim-analysis";
    }


}
