
package com.panzerlibrary.controller;

import com.panzerlibrary.dao.AuthorDao;
import com.panzerlibrary.dao.BookDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.Book;
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
public class BookController {
    
    @Autowired
    private AuthorDao authorDao;
    
    @Autowired
    private BookDao bookDao;  
    
    @RequestMapping(value = "/book", method = RequestMethod.GET)
    public ModelAndView displayBookForm() {
        ModelAndView model = new ModelAndView("formBook");
        
        return model;
    }
    
    @RequestMapping(value = "/book/{bookId}", method = RequestMethod.GET)
    @ResponseBody
    public String getBook(@PathVariable("bookId") int bookId) {

        Book book = bookDao.get(bookId);
        JSONSerializer serializer = new JSONSerializer();
        
        return serializer.include("authors").serialize(book);
    }
    
    @RequestMapping(value = "edit/addbook", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject addUpdateBook(@RequestBody Book book) {
        List<Author> authors = book.getAuthors();
        List<Author> checkedAuthors = new ArrayList<>();
        for (Author author : authors) {
            author = authorDao.checkExistingAuthorByName(author.getAuthor_firstname(), author.getAuthor_lastname(), author.getInitial());
            checkedAuthors.add(author);
        }
        book.setAuthors(checkedAuthors);
        bookDao.saveOrUpdate(book);

        return new ResponseObject("bookAdded");
    }
    
    @RequestMapping(value = "/delete/book/{bookId}", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject deleteBook(@PathVariable("bookId") int bookId) {
        bookDao.delete(bookId);
        
        return new ResponseObject("bookDeleted");
    }
}
