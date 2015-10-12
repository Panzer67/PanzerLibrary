
package com.panzerlibrary.dao;

import com.panzerlibrary.model.Journal;
import java.util.List;


public interface JournalDao {
    
    public List<Journal> list();

    public Journal get(int id);
    
    public List<Journal> getJournalByName(String journal_name);
    
    public Journal checkExistingJournalByName(String journal_name);
    
    public boolean checkJournalByName(String journal_name);

    public void saveOrUpdate(Journal journal);

    public void delete(int id);
}
