
package com.panzerlibrary.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import org.apache.solr.analysis.LowerCaseFilterFactory;
import org.apache.solr.analysis.SnowballPorterFilterFactory;
import org.apache.solr.analysis.StandardTokenizerFactory;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.search.annotations.Analyzer;
import org.hibernate.search.annotations.AnalyzerDef;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Parameter;
import org.hibernate.search.annotations.TokenFilterDef;
import org.hibernate.search.annotations.TokenizerDef;

@Entity
@Indexed
@Table(name = "AUTHORS")
public class Author implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AUTHOR_ID")
    private int id;
    
    @Field
    @Column(name = "AUTHOR_FIRSTNAME")    
    private String author_firstname;
    
    @Field
    @Column(name = "AUTHOR_LASTNAME")    
    private String author_lastname;
    
    
    @LazyCollection(LazyCollectionOption.FALSE)     
    @ManyToMany(mappedBy = "articleAuthors")     
    private List<Article> articles;

    @LazyCollection(LazyCollectionOption.FALSE)    
    @ManyToMany(mappedBy = "bookAuthors", fetch = FetchType.EAGER)     
    private List<Book> books;

    /*
     @ManyToMany(fetch=FetchType.EAGER, cascade = CascadeType.ALL)
     @JoinTable(name = "authors_articles", joinColumns = @JoinColumn(name = "author_id"), inverseJoinColumns = @JoinColumn(name = "article_id"))	
     private List<Article> authorArticles;
     */
    /*
     @ManyToMany(cascade = CascadeType.ALL)
     @LazyCollection(LazyCollectionOption.FALSE)
     @JoinTable(name = "authors_books", joinColumns = @JoinColumn(name = "author_id"), inverseJoinColumns = @JoinColumn(name = "book_id"))    
     private List<Book> authorBooks;
    */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor_firstname() {
        return author_firstname;
    }

    public void setAuthor_firstname(String author_firstname) {
        this.author_firstname = author_firstname;
    }

    public String getAuthor_lastname() {
        return author_lastname;
    }

    public void setAuthor_lastname(String author_lastname) {
        this.author_lastname = author_lastname;
    }    
    
    public List<Article> getArticles() {
        return articles;
    }
        
    public void setArticles(List<Article> articles) {
        this.articles = articles;
    }    
    
    public List<Book> getBooks() {
        return books;
    }
   
    public void setBooks(List<Book> books) {
        this.books = books;
    }
}
