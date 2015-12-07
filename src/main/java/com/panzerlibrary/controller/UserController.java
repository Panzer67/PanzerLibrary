
package com.panzerlibrary.controller;

import com.panzerlibrary.dao.ArticleDao;
import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.dao.BookDao;
import com.panzerlibrary.dao.JournalDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.Book;
import com.panzerlibrary.model.Journal;
import com.panzerlibrary.model.ResponseObject;
import com.panzerlibrary.model.User;
import com.panzerlibrary.model.UserProfile;
import com.panzerlibrary.service.UserProfileService;
import com.panzerlibrary.service.UserService;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    
    @Autowired
    UserProfileService userProfileService;

    @Autowired
    UserService userService;     
    
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView displayEdit() {
        ModelAndView model = new ModelAndView("edit");

        return model;
    }

    @RequestMapping(value = "/edit/newuser", method = RequestMethod.GET)
    public ModelAndView displayNewUser() {
        User user = new User();
        ModelAndView model = new ModelAndView("newuser");
        model.addObject("user", user);

        return model;
    }

    @RequestMapping(value = "/edit/newuser", method = RequestMethod.POST)
    public ModelAndView saveRegistration(@Valid User user,
            BindingResult result) {

        if (result.hasErrors()) {
            System.out.println("There are errors");
            ModelAndView model = new ModelAndView("newuser");
            return model;
        }
        userService.save(user);

        System.out.println("First Name : " + user.getFirstName());
        System.out.println("Last Name : " + user.getLastName());
        System.out.println("SSO ID : " + user.getSsoId());
        System.out.println("Password : " + user.getPassword());        
        System.out.println("Checking UsrProfiles....");
        if (user.getUserProfiles() != null) {
            for (UserProfile profile : user.getUserProfiles()) {
                System.out.println("Profile : " + profile.getType());
            }
        }
        ModelAndView model = new ModelAndView("registrationsuccess");

        model.addObject("success", "User " + user.getFirstName() + " has been registered successfully");
        return model;
    }  

    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

    @ModelAttribute("roles")
    public List<UserProfile> initializeProfiles() {
        return userProfileService.findAll();
    }
}
