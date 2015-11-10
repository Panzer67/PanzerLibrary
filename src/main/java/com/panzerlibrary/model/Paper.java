
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
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name = "PAPERS")
public class Paper implements Serializable {
    
    @Id
    @GeneratedValue
    @Column(name = "PAPER_ID")
    private int id;
    
    private String title;
    
    private String institute;
    
    private int year;
    
    private String pages;
    
    private String abstractText;
    
    private String pdflink;
    
    @ManyToMany(cascade = CascadeType.ALL)
    @LazyCollection(LazyCollectionOption.FALSE)     
    @JoinTable(name = "authors_papers", joinColumns = @JoinColumn(name = "paper_id"), inverseJoinColumns = @JoinColumn(name = "author_id"))    
    private List<Author> paperAuthors;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getPages() {
        return pages;
    }

    public void setPages(String pages) {
        this.pages = pages;
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

    public List<Author> getAuthors() {
        return paperAuthors;
    }

    public void setAuthors(List<Author> paperAuthors) {
        this.paperAuthors = paperAuthors;
    }  
}
