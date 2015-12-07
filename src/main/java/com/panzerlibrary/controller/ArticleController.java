
package com.panzerlibrary.controller;

import com.panzerlibrary.dao.ArticleDao;
import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.dao.JournalDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.Journal;
import com.panzerlibrary.model.ResponseObject;
import flexjson.JSONSerializer;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArticleController {
    
    private static final Logger log = Logger.getLogger(ArticleController.class.getName());
    
    private static final String UPLOAD_LOCATION = "C:/temp/";

    @Autowired
    private AuthorDao authorDao;

    @Autowired
    private ArticleDao articleDao;

    @Autowired
    private JournalDao journalDao;    

    @RequestMapping(value = "/article", method = RequestMethod.GET)
    public ModelAndView displayArticleForm() {
        ModelAndView model = new ModelAndView("formArticle");
         
        return model;
    }

    @RequestMapping(value = "/article/{title}", method = RequestMethod.GET)
    @ResponseBody
    public String getArticle(@PathVariable("title") String title) {

        Article article = articleDao.getArticleByTitle(title);

        JSONSerializer serializer = new JSONSerializer();
        return serializer.include("authors").include("").serialize(article);
    }

    @RequestMapping(value = "/edit/addarticle", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject addUpdateArticle(@RequestBody Article article) {
    
        List<Author> authors = article.getAuthors();
        List<Author> checkedAuthors = new ArrayList();
        for (Author author : authors) {
            author = authorDao.checkExistingAuthorByName(author.getAuthor_firstname(), author.getAuthor_lastname());
            checkedAuthors.add(author);
        }
        article.setAuthors(checkedAuthors);

        Journal journal = article.getJournal();
        Journal checkedJournal = journalDao.checkExistingJournalByName(journal.getJournal_name());
        article.setJournal(checkedJournal);

        articleDao.saveOrUpdate(article);

        return new ResponseObject("Article successfully");
    }

    @RequestMapping(value = "/delete/article/{articleId}", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject deleteArticle(@PathVariable("articleId") int articleId) {
        articleDao.delete(articleId);
        
        return new ResponseObject("Article successfully");
    }
    
}
