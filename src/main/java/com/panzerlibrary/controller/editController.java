
package com.panzerlibrary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class editController {
    
    @RequestMapping(value = "/editmessage", method = RequestMethod.GET)
    public ModelAndView displayEditMessage() {
        ModelAndView model = new ModelAndView("editmessage");
        
        return model;        
    }    
}
