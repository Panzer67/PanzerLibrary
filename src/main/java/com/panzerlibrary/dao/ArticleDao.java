
package com.panzerlibrary.dao;

import com.panzerlibrary.model.Article;
import java.util.List;


public interface ArticleDao {
    
    public List<Article> list();
    
    public Article get(int id);
    
    public Article getArticleByTitle(String title);
     
    public void saveOrUpdate(Article article);
     
    public void delete(int id);
}
