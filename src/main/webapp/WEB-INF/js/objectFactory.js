(function() {
    angular.module("PanzerLibrary").factory("objectFactory", objectFactory);
    
    objectFactory.$inject = ['authorFactory', 'bookFactory', 'articleFactory', 'paperFactory', 'journalFactory'];
    function objectFactory(authorFactory, bookFactory, articleFactory, paperFactory, journalFactory) {
       
        var factory = {};
        
        factory.getObject = function(object) {            
            switch(object) {
                case "author":
                    return authorFactory.getAuthor();
                case "book":
                    return bookFactory.getBook();
                case "article":
                    return articleFactory.getArticle();
                case "paper":
                    return paperFactory.getPaper();
                case "journal":
                    return journalFactory.getJournal();
            }            
        };
        
        return factory;
    }
})();