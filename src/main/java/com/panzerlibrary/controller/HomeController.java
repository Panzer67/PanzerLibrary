package com.panzerlibrary.controller;

import com.google.gson.Gson;
import com.panzerlibrary.dao.ArticleDao;
import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.dao.BookDao;
import com.panzerlibrary.dao.JournalDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Book;
import com.panzerlibrary.search.LibrarySearch;
import flexjson.JSONSerializer;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    private AuthorDao authorDao;

    @Autowired
    private BookDao bookDao;

    @Autowired
    private ArticleDao articleDao;

    @Autowired
    private JournalDao journalDao;

    @Autowired
    private LibrarySearch librarySearch;

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public ModelAndView displayHome() {
        ModelAndView model = new ModelAndView("index");
        model.addObject("user", getPrincipal());

        return model;
    }

//    @RequestMapping(value = "/search/{title}", method = RequestMethod.GET) 
//    @ResponseBody
//    public String getBooks(@PathVariable("title") String title) {
//        List<Book> bookList = bookDao.getBookByTitle(title);
//        
//        
//        JSONSerializer serializer = new JSONSerializer(); 
//        return serializer.include("authors").serialize( bookList );
//        
//    }
    
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView displaySearch() {
        ModelAndView model = new ModelAndView("search");
        
        return model;        
    }  
    
    @RequestMapping(value = "/search/{searchString}", method = RequestMethod.GET)
    @ResponseBody
    public String getSearch(@PathVariable("searchString") String searchString) {

        List<Article> searchResults = null;
        try {
            searchResults = librarySearch.searchDatabase(searchString);

        } catch (Exception ex) {
            System.out.println(ex.getMessage());

        }
        //remove possible duplicates
        Set<Article> checkedResults = new HashSet<>(searchResults);

        JSONSerializer serializer = new JSONSerializer();
        return serializer.include("authors").serialize(checkedResults);

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

}
