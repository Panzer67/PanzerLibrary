
package com.panzerlibrary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView displayLogin() {
        ModelAndView model = new ModelAndView("login");
        
        return model;
    }
    
    @RequestMapping(value = "/loginFailed", method = RequestMethod.GET) 
    public String loginFailed(ModelMap model) { 
        System.out.println("login failed");
        
        model.addAttribute("error", "true");
        return "login";
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout() {
        ModelAndView model = new ModelAndView("login");
        model.addObject("logout", "true");
        
        return model;
    }
    
    @RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
    public ModelAndView accessDenied() {
        ModelAndView model = new ModelAndView("denied");
        
        return model;
    }
    
}
