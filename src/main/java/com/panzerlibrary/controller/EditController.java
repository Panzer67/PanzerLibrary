
package com.panzerlibrary.controller;

import com.panzerlibrary.dao.ArticleDao;
import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.dao.BookDao;
import com.panzerlibrary.dao.JournalDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.Book;
import com.panzerlibrary.model.Journal;
import com.panzerlibrary.model.ResponseMessage;
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
public class EditController {
    
    @Autowired
    UserProfileService userProfileService;

    @Autowired
    UserService userService;
    
    @Autowired
    private AuthorDao authorDao;
    
    @Autowired
    private BookDao bookDao;
    
    @Autowired
    private ArticleDao articleDao;

    @Autowired
    private JournalDao journalDao;  
    
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
    
    @RequestMapping(value = "/author", method = RequestMethod.GET)
    public ModelAndView displayAuthorForm() {
        ModelAndView model = new ModelAndView("formAuthor");
        
        return model;
    }
    
    @RequestMapping(value = "edit/addauthor", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseMessage addNewAuthor(@RequestBody Author author) {
        if (authorDao.checkAuthorByName(author.getAuthor_firstname(), author.getAuthor_lastname())) {
            return new ResponseMessage("Author already exist.");
        }
        authorDao.saveOrUpdate(author);

        return new ResponseMessage("Author successfully added.");

    }
    
    @RequestMapping(value = "/book", method = RequestMethod.GET)
    public ModelAndView displayBookForm() {
        ModelAndView model = new ModelAndView("formBook");
        
        return model;
    }
    
    @RequestMapping(value = "edit/addbook", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseMessage addNewBook(@RequestBody Book book) {
        List<Author> authors = book.getAuthors();
        List<Author> checkedAuthors = new ArrayList<>();
        for (Author author : authors) {
            author = authorDao.checkExistingAuthorByName(author.getAuthor_firstname(), author.getAuthor_lastname());
            checkedAuthors.add(author);
        }
        book.setAuthors(checkedAuthors);
        bookDao.saveOrUpdate(book);

        return new ResponseMessage("Book successfully added.");
    }
    
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
        return serializer.include("authors").include("").serialize( article );    
    }
    
    @RequestMapping(value = "/edit/addarticle", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseMessage addUpdateArticle(@RequestBody Article article) {
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
       

        return new ResponseMessage("Article successfully");
    }
    
    @RequestMapping(value = "/delete/article/{articleId}", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseMessage deleteArticle(@PathVariable("articleId") int articleId) {
        articleDao.delete(articleId);

        //return new ModelAndView("redirect:/articles");
        return new ResponseMessage("Article successfully");
    }
    
    
    @RequestMapping(value = "/journal", method = RequestMethod.GET)
    public ModelAndView displayJournalForm() {
        ModelAndView model = new ModelAndView("formJournal");
        
        return model;
    }
    
    @RequestMapping(value = "edit/addjournal", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseMessage addNewJournal(@RequestBody Journal journal) {
        if(journalDao.checkJournalByName(journal.getJournal_name())) {
            return new ResponseMessage("Journal already exists");
        }        
        journalDao.saveOrUpdate(journal);
        
        return new ResponseMessage("Journal susseccfully added");
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
