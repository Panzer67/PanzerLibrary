package com.panzerlibrary.controller;

import com.google.gson.Gson;
import com.panzerlibrary.dao.ArticleDao;
import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.dao.BookDao;
import com.panzerlibrary.dao.JournalDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.Book;
import com.panzerlibrary.model.Paper;
import com.panzerlibrary.search.LibrarySearch;
import flexjson.JSONSerializer;
import java.io.IOException;
import java.io.StringWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@PropertySource(value = {"classpath:application.properties"})
public class HomeController {
    
    private static final Logger log = Logger.getLogger(HomeController.class.getName());
    
    @Autowired
    private Environment environment;    

    @Autowired
    private LibrarySearch librarySearch;

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public ModelAndView displayHome() {
        ModelAndView model = new ModelAndView("index");
        model.addObject("user", getPrincipal());
        model.addObject("url", environment.getRequiredProperty("application.url"));
        
        return model;
    }
    
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView displaySearch() {
        ModelAndView model = new ModelAndView("search");
        
        return model;        
    }  
    
    @RequestMapping(value = "/search/{searchString}", method = RequestMethod.GET)
    @ResponseBody
    public String getSearch(@PathVariable("searchString") String searchString) {

        List<Article> searchArticlesResults = null;
        List<Book> searchBooksResults = null;
        List<Paper> searchPapersResults = null;
        List<Author> searchAuthorsResults = null;
        String searchResults = null;
        try {
            searchArticlesResults = librarySearch.searchArticlesInDatabase(searchString);
            searchBooksResults = librarySearch.searchBooksInDatabase(searchString);
            searchPapersResults = librarySearch.searchPapersInDatabase(searchString);
            searchAuthorsResults = librarySearch.searchAuthorsInDatabase(searchString);
            Set<Article> checkedArticlesResults = new HashSet<>(searchArticlesResults);
            Set<Book> checkedBooksResults = new HashSet<>(searchBooksResults);
            Set<Paper> checkedPapersResults = new HashSet<>(searchPapersResults);
            Set<Author> checkedAuthorsResults = new HashSet<>(searchAuthorsResults);
            JSONSerializer serializer = new JSONSerializer();
            String articles = serializer.include("authors").serialize(checkedArticlesResults);
            String books = serializer.include("authors").serialize(checkedBooksResults);
            String papers = serializer.include("authors").serialize(checkedPapersResults);
            String authors = serializer.include("books").include("articles").include("papers").serialize(checkedAuthorsResults);
            JSONParser jsonParser = new JSONParser();
            JSONArray arrArticles = (JSONArray) jsonParser.parse(articles);
            JSONArray arrBooks = (JSONArray) jsonParser.parse(books);
            JSONArray arrPapers = (JSONArray) jsonParser.parse(papers);
            JSONArray arrAuthors = (JSONArray) jsonParser.parse(authors);

            JSONObject results = new JSONObject();
            results.put("books", arrBooks);
            results.put("articles", arrArticles);
            results.put("papers", arrPapers);
            results.put("authors", arrAuthors);
            searchResults = JsonObjectToString(results);

        } catch (ParseException | IOException ex) {
            log.log( Level.SEVERE, ex.getMessage());
        } 
        return searchResults;

    }
    
    private String JsonObjectToString(JSONObject jsonObject) throws IOException {
        StringWriter out = new StringWriter();
        jsonObject.writeJSONString(out);
        String json = out.toString();

        return json;
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
