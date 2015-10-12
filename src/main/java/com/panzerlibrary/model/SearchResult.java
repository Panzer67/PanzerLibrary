
package com.panzerlibrary.model;

import java.util.List;


public class SearchResult {
    
    private int id;
    
    private String title;
        
    private String author;
    
    private List authorList;
    
    private String journalName;
    
    private String type;
    
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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public List getAuthorList() {
        return authorList;
    }

    public void setAuthorList(List authorList) {
        this.authorList = authorList;
    }

    public String getJournalName() {
        return journalName;
    }

    public void setJournalName(String journalName) {
        this.journalName = journalName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
