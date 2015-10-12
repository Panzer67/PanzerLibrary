package com.panzerlibrary.search;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

@Component
public class BuildSearchIndex implements ApplicationListener {
    
    @Autowired
    private SessionFactory sessionFactory;   
   

    @Override
    public void onApplicationEvent(ApplicationEvent event) {
        FullTextSession fullTextSession = Search.getFullTextSession(sessionFactory.openSession());
        try {
            fullTextSession.createIndexer().startAndWait();
        } catch (InterruptedException ex) {
            Logger.getLogger(BuildSearchIndex.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
