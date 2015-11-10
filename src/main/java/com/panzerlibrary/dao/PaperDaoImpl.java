
package com.panzerlibrary.dao;

import com.panzerlibrary.model.Paper;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class PaperDaoImpl implements PaperDao {
    
    @Autowired
    private SessionFactory sessionFactory;
   
    @Override
    @Transactional
    public List<Paper> list() {
        @SuppressWarnings("unchecked")
        List<Paper> listPapers = (List<Paper>) sessionFactory.getCurrentSession()
                .createCriteria(Paper.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listPapers;
    }

    @Override
    @Transactional
    public Paper get(int id) {
        String hql = "from Paper where paper_id=" + id;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        @SuppressWarnings("unchecked")
        List<Paper> listPaper = (List<Paper>) query.list();

        if (listPaper != null && !listPaper.isEmpty()) {
            return listPaper.get(0);
        }
        return null;
    }

    @Override
    @Transactional
    public Paper getPaperByTitle(String title) {
        String hql = "from Paper where title = '" + title + "'";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        
        @SuppressWarnings("unchecked")
        List<Paper> listPaper = (List<Paper>) query.list();
        
        if(listPaper != null && !listPaper.isEmpty()) {
            return listPaper.get(0);
        }        
        return null;
    }

    @Override
    @Transactional
    public void saveOrUpdate(Paper paper) {
        sessionFactory.getCurrentSession().saveOrUpdate(paper);
    }

    @Override
    @Transactional
    public void delete(int id) {
        Paper paperToDelete = new Paper();
        paperToDelete.setId(id);
        sessionFactory.getCurrentSession().delete(paperToDelete);
    }
}
