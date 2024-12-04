package com.springboot.FirstApplication;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
    @GetMapping("/")
    public String redirectToWelcome() {
        return "welcome"; // Redirects to the "/welcome" endpoint
    }
    @PostMapping("/")
    String home(){
        return "welcome";
    }
}
