package com.mindhaven.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class TestController {
    @GetMapping("/list")
    public String showTestListPage() {
        // Returns the view name, which resolves to /WEB-INF/views/test/list_test.jsp
        return "test/list_test";
    }

    @GetMapping("/dass")
    public String showTestDassPage() {
        // Returns the view name, which resolves to /WEB-INF/views/test/dass_test.jsp
        return "test/dass_test";
    }

    @GetMapping("/testResult")
    public String showTestResultPage() {
        // Returns the view name, which resolves to /WEB-INF/views/test/result_test.jsp
        return "test/result_test";
    }
}
