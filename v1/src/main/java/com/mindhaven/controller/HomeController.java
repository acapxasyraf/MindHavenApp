package com.mindhaven.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/home")
    public String home() {
        return "home"; // Maps to home.jsp
    }

    @GetMapping("/")
    public String index() {
        return "redirect:/home"; // Redirects to /home
    }
}
