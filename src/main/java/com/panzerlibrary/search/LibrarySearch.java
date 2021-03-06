package com.panzerlibrary.search;

import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Author;
import com.panzerlibrary.model.Book;
import com.panzerlibrary.model.Paper;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class LibrarySearch {

    @Autowired
    private SessionFactory sessionFactory;

    public List searchArticlesInDatabase(String text) {

        FullTextSession fullTextSession = Search.getFullTextSession(sessionFactory.openSession());
        Transaction tx = fullTextSession.beginTransaction();

        QueryBuilder qb = fullTextSession.getSearchFactory()
                .buildQueryBuilder().forEntity(Article.class).get();
        

        org.apache.lucene.search.Query query
                = qb
                .keyword()
                .onFields("title", "articleAuthors.author_firstname", "articleAuthors.author_lastname", "pages", "abstractText")
                .matching(text)
                .createQuery();

        org.hibernate.Query hibQuery
                = fullTextSession.createFullTextQuery(query, Article.class);
        
        // execute search
        List result = hibQuery.list();
        
        return result;
    }
    
    public List searchBooksInDatabase(String text) {

        FullTextSession fullTextSession = Search.getFullTextSession(sessionFactory.openSession());
        Transaction tx = fullTextSession.beginTransaction();

        QueryBuilder qb = fullTextSession.getSearchFactory()
                .buildQueryBuilder().forEntity(Book.class).get();
        

        org.apache.lucene.search.Query query
                = qb
                .keyword()
                .onFields("title", "bookAuthors.author_firstname", "bookAuthors.author_lastname", "abstractText")
                .matching(text)
                .createQuery();

        org.hibernate.Query hibQuery
                = fullTextSession.createFullTextQuery(query, Book.class);
        
        // execute search
        List result = hibQuery.list();
        
        return result;
    }
    
    public List searchPapersInDatabase(String text) {

        FullTextSession fullTextSession = Search.getFullTextSession(sessionFactory.openSession());
        Transaction tx = fullTextSession.beginTransaction();

        QueryBuilder qb = fullTextSession.getSearchFactory()
                .buildQueryBuilder().forEntity(Paper.class).get();
        

        org.apache.lucene.search.Query query
                = qb
                .keyword()
                .onFields("title", "paperAuthors.author_firstname", "paperAuthors.author_lastname", "abstractText")
                .matching(text)
                .createQuery();

        org.hibernate.Query hibQuery
                = fullTextSession.createFullTextQuery(query, Paper.class);
        
        // execute search
        List result = hibQuery.list();
        
        return result;
    }
    
    public List searchAuthorsInDatabase(String text) {

        FullTextSession fullTextSession = Search.getFullTextSession(sessionFactory.openSession());
        Transaction tx = fullTextSession.beginTransaction();

        QueryBuilder qb = fullTextSession.getSearchFactory()
                .buildQueryBuilder().forEntity(Author.class).get();
        

        org.apache.lucene.search.Query query
                = qb
                .keyword()
                .onFields("author_firstname", "author_lastname")
                .matching(text)
                .createQuery();

        org.hibernate.Query hibQuery
                = fullTextSession.createFullTextQuery(query, Author.class);
        
        // execute search
        List result = hibQuery.list();
        
        return result;
    }
}
