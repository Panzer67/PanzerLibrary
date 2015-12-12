(function() {
    angular.module("PanzerLibrary").factory("messageFactory", messageFactory);
    
    function messageFactory() {
        
        var messages = {
            "authorAdded" : "Author successfully added",
            "authorDeleted" : "Author successfully deleted",
            "authorExists" : "Author already exists",
            "articleAdded" : "Article successfully added",
            "articleDeleted" : "Article successfully deleted",
            "bookAdded" : "Book successfully added",
            "bookDeleted" : "Book successfully deleted",
            "journalAdded" : "Journal successfully added",
            "journalDeleted" : "Journal successfully deleted",
            "journalExists" : "Journal already exists",
            "paperAdded" : "Paper successfully added",
            "paperDeleted" : "Paper successfully deleted",
            "documentAdded" : "Document successfully added",
            "documentDeleted" : "Document successfully deleted"
        };
        
        var factory = {};
        
        factory.getMessage = function(key) {
            var message = messages[key];
            return message;
        };
        
        return factory;
        
    }
})();

