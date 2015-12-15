
package com.panzerlibrary.dao;

import com.panzerlibrary.model.Author;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class AuthorDaoImpl implements AuthorDao {
    
    @Autowired
    private SessionFactory sessionFactory;

    public AuthorDaoImpl() {

    }

    public AuthorDaoImpl(SessionFactory sessionFactory) {

    }

    @Override
    @Transactional
    public List<Author> list() {

        @SuppressWarnings("unchecked")
        List<Author> listAuthors = (List<Author>) sessionFactory.getCurrentSession()
                .createCriteria(Author.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listAuthors;
    }

    @Override
    @Transactional
    public Author get(int id) {
        String hql = "from Author where author_id=" + id;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        @SuppressWarnings("unchecked")
        List<Author> listAuthor = (List<Author>) query.list();

        if (listAuthor != null && !listAuthor.isEmpty()) {
            return listAuthor.get(0);
        }
        return null;

    }
    
    @Transactional
    public List<Author> getAuthorByName(String lastname) {
        String hql = "from Author where author_lastname='" + lastname + "'";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        @SuppressWarnings("unchecked")
        List<Author> listAuthor = (List<Author>) query.list();
        if (listAuthor != null && !listAuthor.isEmpty()) {
            return listAuthor;
        }      
        
        return null;
    }

    @Override
    @Transactional
    public Author checkExistingAuthorByName(String firstname, String lastname, String initial) {
        String hql = "from Author where author_firstname='" + firstname + "' and author_lastname='" + lastname + "'";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        @SuppressWarnings("unchecked")
        List<Author> listAuthor = (List<Author>) query.list();
        if (listAuthor != null && !listAuthor.isEmpty()) {
            return listAuthor.get(0);
        }
        Author author = new Author();
        author.setAuthor_firstname(firstname);
        author.setAuthor_lastname(lastname);
        author.setInitial(initial);        

        return author;
    }
    
    @Override
    @Transactional
    public boolean checkAuthorByName(String firstname, String lastname) {
        String hql = "from Author where author_firstname='" + firstname + "' and author_lastname='" + lastname + "'";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        
        @SuppressWarnings("unchecked")
        List<Author> listAuthor = (List<Author>) query.list();
        return listAuthor != null && !listAuthor.isEmpty();
    }

    @Override
    @Transactional
    public void saveOrUpdate(Author author) {
        
        sessionFactory.getCurrentSession().saveOrUpdate(author);

    }

    @Override
    @Transactional
    public void delete(int id) {
        Author authorToDelete = new Author();
        authorToDelete.setId(id);
        sessionFactory.getCurrentSession().delete(authorToDelete);

    }
}
