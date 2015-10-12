
package com.panzerlibrary.dao;

import com.panzerlibrary.model.Book;
import java.util.List;


public interface BookDao {
    
    public List<Book> list();
    
    public Book get(int id);
    
    public List<Book> getBookByTitle(String title);
     
    public void saveOrUpdate(Book book);
     
    public void delete(int id);
}
