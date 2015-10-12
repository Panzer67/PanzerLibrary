/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.panzerlibrary.dao;

import com.panzerlibrary.model.Author;
import java.util.List;

/**
 *
 * @author tni20865
 */
public interface AuthorDao {

    public List<Author> list();

    public Author get(int id);

    public List<Author> getAuthorByName(String lastname);

    public Author checkExistingAuthorByName(String firstname, String lastname);

    public boolean checkAuthorByName(String lastname, String firstname);

    public void saveOrUpdate(Author author);

    public void delete(int id);
}
