package com.mindhaven.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {

    @GetMapping("/dashboard")
    public String showDashboard() {
        return "dashboard"; // Resolves to /WEB-INF/views/dashboard.jsp
    }
}
