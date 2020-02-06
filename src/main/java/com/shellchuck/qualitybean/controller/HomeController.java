package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Claim;
import com.shellchuck.qualitybean.repository.ClaimRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    private ClaimRepository claimRepository;
    public HomeController(ClaimRepository claimRepository) {
        this.claimRepository = claimRepository;
    }

    @RequestMapping("/")
    public String index() {
        return "/home/index";
    }

    @RequestMapping("/home")
    public String home() {
        return "/home/index";
    }

    @RequestMapping("/app")
    public String app() {
        return "/home/app-main-page";
    }

    @ModelAttribute("recentClaims")
    public List<Claim> getRecentClaims() {
        return claimRepository.findFirst3ByOrderByCreatedOnDesc();
    }

    @RequestMapping("/list")
    public String test() {
        return "/list";
    }

}