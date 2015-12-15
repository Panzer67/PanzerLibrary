
package com.panzerlibrary.controller;

import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.ResponseObject;
import flexjson.JSONSerializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthorController {
    
    @Autowired
    private AuthorDao authorDao; 
    
    @RequestMapping(value = "/author", method = RequestMethod.GET)
    public ModelAndView displayAuthorForm() {
        ModelAndView model = new ModelAndView("formAuthor");
        
        return model;
    }
    
    @RequestMapping(value = "/author/{authorId}", method = RequestMethod.GET)
    @ResponseBody
    public String getAuthor(@PathVariable("authorId") int authorId) {

        Author author = authorDao.get(authorId);
        JSONSerializer serializer = new JSONSerializer();
        
        return serializer.serialize(author);
    }
    
    @RequestMapping(value = "edit/addauthor", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject addUpdateAuthor(@RequestBody Author author) {
        if (authorDao.checkAuthorByName(author.getAuthor_firstname(), author.getAuthor_lastname())) {
            return new ResponseObject("authorExists");
        }
        authorDao.saveOrUpdate(author);

        return new ResponseObject("authorAdded");

    }  
    
    @RequestMapping(value = "/delete/author/{authorId}", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject deleteAuthor(@PathVariable("authorId") int authorId) {
        authorDao.delete(authorId);
        
        return new ResponseObject("authorDeleted");
    }
}
