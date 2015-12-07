
package com.panzerlibrary.model;

import java.io.Serializable;


public class ResponseObject implements Serializable {
    
    private String message;
    
    private String filename;
    
    public ResponseObject(String message) {
        this.message = message;
    }
    
    public ResponseObject(String message, String filename) {
        this.message = message;
        this.filename = filename;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }  

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}
