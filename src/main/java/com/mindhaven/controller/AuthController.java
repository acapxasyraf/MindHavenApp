package com.mindhaven.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthController {

    @GetMapping("/loginUser")
    public String login() {
        return "login"; // Refers to login.jsp
    }

    @PostMapping("/loginUser")
    public ModelAndView handleLogin(
            @RequestParam("email") String email,
            @RequestParam("password") String password) {
        
        // Simulated login validation (replace with real authentication logic)
        if ("admin@test.com".equals(email) && "admin123".equals(password)) {
            // Redirect to the dashboard if login is successful
            return new ModelAndView("redirect:/dashboard");
        }

        // Return to the login page with an error message if login fails
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject("error", "Invalid email or password");
        return modelAndView;
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup"; // Refers to signup.jsp
    }

    @GetMapping("/logout")
    public String logout() {
        // Invalidate session or perform other logout operations here
        return "redirect:/home"; // Redirect to home page after logout
    }
}
