
package com.panzerlibrary.controller;


import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.dao.PaperDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.Paper;
import com.panzerlibrary.model.ResponseObject;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
    
    @RequestMapping(value = "/paper/{paperId}", method = RequestMethod.GET)
    @ResponseBody
    public String getPaper(@PathVariable("paperId") int paperId) {

        Paper paper = paperDao.get(paperId);
        JSONSerializer serializer = new JSONSerializer();
        
        return serializer.include("authors").serialize(paper);
    }

    @RequestMapping(value = "edit/addpaper", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject addUpdatePaper(@RequestBody Paper paper) {        
        List<Author> authors = paper.getAuthors();
        List<Author> checkedAuthors = new ArrayList<>();
        for (Author author : authors) {
            author = authorDao.checkExistingAuthorByName(author.getAuthor_firstname(), author.getAuthor_lastname(), author.getInitial());
            checkedAuthors.add(author);
        }
        paper.setAuthors(checkedAuthors);
        
        paperDao.saveOrUpdate(paper);

        return new ResponseObject("paperAdded");
    }
    
    @RequestMapping(value = "/delete/paper/{paperId}", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject deletePaper(@PathVariable("paperId") int paperId) {
        paperDao.delete(paperId);
        
        return new ResponseObject("paperDeleted");
    }
    
}
