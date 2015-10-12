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
            return journal;
        };        
        
        return factory;
    }
})();

