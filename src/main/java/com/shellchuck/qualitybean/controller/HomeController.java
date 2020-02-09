package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Claim;
import com.shellchuck.qualitybean.repository.ClaimRepository;
import org.apache.catalina.filters.RemoteIpFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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
    public String app(Model model) {
        List<Claim> allClaims = claimRepository.findAll();
        List<Claim> delayedClaims = allClaims.stream().filter(c -> /*(("opened").equals(c.getStatus()) || ("delayed").equals(c.getStatus())) &&*/ Math.abs((Duration.between(LocalDateTime.now(), c.getCreatedOn()).getSeconds())) >= (24 * 60 * 60)).collect(Collectors.toList());
        model.addAttribute("delayedClaims", delayedClaims);
        return "/home/app-main-page";
    }


    @ModelAttribute("recentClaims")
    public List<Claim> getRecentClaims() {
        return claimRepository.findFirst3ByOrderByCreatedOnDesc();
    }

//    @ModelAttribute("delayedClaims")
//    public List<Claim> getDelayedClaims() {
//        return claimRepository.findFirst3ByOrderByCreatedOnDesc();
//    }

}