
package com.panzerlibrary.controller;

import com.panzerlibrary.dao.JournalDao;
import com.panzerlibrary.model.Article;
import com.panzerlibrary.model.Journal;
import com.panzerlibrary.model.ResponseObject;
import flexjson.JSONSerializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
    
    @RequestMapping(value = "/journal/{journalId}", method = RequestMethod.GET)
    @ResponseBody
    public String getJournal(@PathVariable("journalId") int journalId) {

        Journal journal = journalDao.get(journalId);
        JSONSerializer serializer = new JSONSerializer();
        
        return serializer.serialize(journal);
    }
    
    @RequestMapping(value = "edit/addjournal", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResponseObject addNewJournal(@RequestBody Journal journal) {
        if(journalDao.checkJournalByName(journal.getJournal_name())) {
            return new ResponseObject("journalExists");
        }        
        journalDao.saveOrUpdate(journal);
        
        return new ResponseObject("journalAdded");
    }
}
