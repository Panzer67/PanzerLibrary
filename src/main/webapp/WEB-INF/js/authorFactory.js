(function () {

    angular.module("PanzerLibrary").factory("authorFactory", authorFactory);

    function authorFactory() {

        var factory = {};
        
        var author = {
                "author_firstname": "",
                "author_lastname": ""
        };
        
        
        factory.setAuthor = function (firstname, lastname) {
            author.author_firstname = firstname;
            author.author_lastname = lastname;            
        };
        
        factory.getAuthor = function() {
            author.author_firstname = "";
            author.author_lastname = "";  
            return author;
        };

        return factory;
    }

})();


