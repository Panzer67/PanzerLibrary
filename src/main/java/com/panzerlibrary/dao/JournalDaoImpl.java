
package com.panzerlibrary.dao;

import com.panzerlibrary.model.Journal;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class JournalDaoImpl implements JournalDao {
    
    @Autowired
    private SessionFactory sessionFactory;

    public JournalDaoImpl() {

    }

    public JournalDaoImpl(SessionFactory sessionFactory) {

    }

    @Override
    @Transactional
    public List<Journal> list() {
        @SuppressWarnings("unchecked")
        List<Journal> listJournals = (List<Journal>) sessionFactory.getCurrentSession()
                .createCriteria(Journal.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listJournals;
    }

    @Override
    @Transactional
    public Journal get(int id) {
        String hql = "from Journal where journal_id=" + id;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        @SuppressWarnings("unchecked")
        List<Journal> listJournal = (List<Journal>) query.list();

        if (listJournal != null && !listJournal.isEmpty()) {
            return listJournal.get(0);
        }
        return null;
    }
    
    @Override
    @Transactional
    public List<Journal> getJournalByName(String journal_name) {
        String hql = "from Journal where journal_name = '" + journal_name + "'";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        
        List<Journal> listJournals = (List<Journal>) query.list();
        if(listJournals != null && ! listJournals.isEmpty()) {
            return listJournals;
        }
        
        return null;
    }
    
    @Override
    @Transactional
    public Journal checkExistingJournalByName(String journal_name) {
        String hql = "from Journal where journal_name = '" + journal_name + "'";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        
        List<Journal> listJournals = (List<Journal>) query.list();
        if(listJournals != null && ! listJournals.isEmpty()) {
            return listJournals.get(0);
        }
        Journal journal = new Journal();
        journal.setJournal_name(journal_name);
        
        return journal;
    }
    
    
    @Override
    @Transactional
    public boolean checkJournalByName(String journal_name) {
        String hql = "from Journal where journal_name = '" + journal_name + "'";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        
        List<Journal> listJournals = (List<Journal>) query.list();
        return listJournals != null && !listJournals.isEmpty();
    }

    @Override
    @Transactional
    public void saveOrUpdate(Journal journal) {
        sessionFactory.getCurrentSession().saveOrUpdate(journal);

    }

    @Override
    @Transactional
    public void delete(int id) {
        Journal journalToDelete = new Journal();
        journalToDelete.setId(id);
        sessionFactory.getCurrentSession().delete(journalToDelete);

    }
}
