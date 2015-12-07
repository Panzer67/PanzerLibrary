
package com.panzerlibrary.controller;


import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.dao.PaperDao;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.Paper;
import com.panzerlibrary.model.ResponseObject;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaperController {
    
    @Autowired
    private PaperDao paperDao;
    
    @Autowired
    private AuthorDao authorDao;
    
    @RequestMapping(value = "/paper", method = RequestMethod.GET)
    public ModelAndView displayPaperForm() {
        ModelAndView model = new ModelAndView("formPaper");

        return model;
    }

    @RequestMapping(value = "edit/addpaper", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject addNewAuthor(@RequestBody Paper paper) {        
        List<Author> authors = paper.getAuthors();
        List<Author> checkedAuthors = new ArrayList<>();
        for (Author author : authors) {
            author = authorDao.checkExistingAuthorByName(author.getAuthor_firstname(), author.getAuthor_lastname());
            checkedAuthors.add(author);
        }
        paper.setAuthors(checkedAuthors);
        
        paperDao.saveOrUpdate(paper);

        return new ResponseObject("Paper successfully added.");
    }
    
}
