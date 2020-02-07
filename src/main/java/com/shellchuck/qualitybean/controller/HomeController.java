package com.shellchuck.qualitybean.controller;

import com.shellchuck.qualitybean.entity.Claim;
import com.shellchuck.qualitybean.repository.ClaimRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDateTime;
import java.time.Period;
import java.time.temporal.ChronoUnit;
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
    public String app(RedirectAttributes redirectAttributes) {
        List<Claim> allClaims = claimRepository.findAll();
        List<Claim> delayedClaims = allClaims.stream().filter(c -> (("opened").equals(c.getStatus()) || ("delayed").equals(c.getStatus())) && ChronoUnit.SECONDS.between(LocalDateTime.now(), c.getCreatedOn()) >= 6 * 60 * 60).collect(Collectors.toList());
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Warning. Delayed responses for following claims: ");
        for (Claim claim : delayedClaims) { stringBuilder.append(claim.getDescription()).append(", ");
        }
        System.out.println(stringBuilder.toString());
        redirectAttributes.addFlashAttribute("message", stringBuilder.toString());
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