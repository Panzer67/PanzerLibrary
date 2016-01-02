
package com.panzerlibrary.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import org.apache.solr.analysis.LowerCaseFilterFactory;
import org.apache.solr.analysis.SnowballPorterFilterFactory;
import org.apache.solr.analysis.StandardTokenizerFactory;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import org.hibernate.search.annotations.Analyze;
import org.hibernate.search.annotations.Analyzer;
import org.hibernate.search.annotations.AnalyzerDef;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.IndexedEmbedded;
import org.hibernate.search.annotations.Parameter;
import org.hibernate.search.annotations.Store;
import org.hibernate.search.annotations.TokenFilterDef;
import org.hibernate.search.annotations.TokenizerDef;

@Entity
@Indexed(index = "BOOKS")
@Table(name = "BOOKS")
@AnalyzerDef(name = "customanalyzer",
  tokenizer = @TokenizerDef(factory = StandardTokenizerFactory.class),
  filters = {
    @TokenFilterDef(factory = LowerCaseFilterFactory.class),
    @TokenFilterDef(factory = SnowballPorterFilterFactory.class, params = {
      @Parameter(name = "language", value = "English")
    })
  })
public class Book implements Serializable {
    
    @Id
    @GeneratedValue
    @Column(name = "BOOK_ID")
    private int id;

    //@Pattern(regexp="(^$|[0-9]{13})")
    @Field
    @Analyzer(definition = "customanalyzer")
    private String isbn;
    
    @Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
    @Analyzer(definition = "customanalyzer")
    private String title;
    
    @Field
    @Analyzer(definition = "customanalyzer")
    private String publisher;
    
    private int year;
    
    @Field
    @Analyzer(definition = "customanalyzer")
    private String abstractText;
        
    private String pdflink;
    
    /*
     @LazyCollection(LazyCollectionOption.FALSE)
     @ManyToMany(mappedBy = "authorBooks",  cascade = CascadeType.ALL)
     private List<Author> authors;	
     */
    @IndexedEmbedded
    @ManyToMany(cascade = CascadeType.ALL)
    @LazyCollection(LazyCollectionOption.FALSE)     
    @JoinTable(name = "authors_books", joinColumns = @JoinColumn(name = "book_id"), inverseJoinColumns = @JoinColumn(name = "author_id"))    
    private List<Author> bookAuthors;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }
    
    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }    
   
    public List<Author> getAuthors() {
        return bookAuthors;
    }    
    
    public void setAuthors(List<Author> bookAuthors) {
        this.bookAuthors = bookAuthors;
    }

    public String getAbstractText() {
        return abstractText;
    }

    public void setAbstractText(String abstractText) {
        this.abstractText = abstractText;
    }

    public String getPdflink() {
        return pdflink;
    }

    public void setPdflink(String pdflink) {
        this.pdflink = pdflink;
    }
}
