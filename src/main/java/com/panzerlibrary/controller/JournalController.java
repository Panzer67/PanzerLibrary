
package com.panzerlibrary.controller;

import com.panzerlibrary.dao.JournalDao;
import com.panzerlibrary.model.Journal;
import com.panzerlibrary.model.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JournalController {
    
    @Autowired
    private JournalDao journalDao;  
    
    @RequestMapping(value = "/journal", method = RequestMethod.GET)
    public ModelAndView displayJournalForm() {
        ModelAndView model = new ModelAndView("formJournal");
        
        return model;
    }
    
    @RequestMapping(value = "edit/addjournal", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseMessage addNewJournal(@RequestBody Journal journal) {
        if(journalDao.checkJournalByName(journal.getJournal_name())) {
            return new ResponseMessage("Journal already exists");
        }        
        journalDao.saveOrUpdate(journal);
        
        return new ResponseMessage("Journal susseccfully added");
    }
}
