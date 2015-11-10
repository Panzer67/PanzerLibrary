
package com.panzerlibrary.dao;

import com.panzerlibrary.model.Paper;
import java.util.List;


public interface PaperDao {
    
    public List<Paper> list();
    
    public Paper get(int id);
    
    public Paper getPaperByTitle(String title);
     
    public void saveOrUpdate(Paper paper);
     
    public void delete(int id);
}
