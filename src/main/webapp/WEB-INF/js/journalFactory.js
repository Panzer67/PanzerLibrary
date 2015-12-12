(function() {
    angular.module("PanzerLibrary").factory("journalFactory", journalFactory);
    
    function journalFactory() {
        
        var factory = {};
        
        var journal = {
            "journal_name": ""
        };
        
        factory.setJournal = function(journal_name) {
            journal.journal_name = journal_name;
        };
        
        factory.getJournal = function() {
            journal.journal_name = "";
            return journal;
        };
        
        return factory;
    }
})();

