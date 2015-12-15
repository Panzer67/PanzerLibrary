(function () {

    angular.module("PanzerLibrary").factory("authorFactory", authorFactory);

    function authorFactory() {

        var factory = {};
        
        var author = {
                "author_firstname": "",
                "author_lastname": "",
                "initial": ""
        };
        
        
        factory.setAuthor = function (firstname, lastname, initial) {
            author.author_firstname = firstname;
            author.author_lastname = lastname;
            author.initial = initial;
        };
        
        factory.getAuthor = function() {
            author.author_firstname = "";
            author.author_lastname = "";  
            author.initial = "";
            return author;
        };

        return factory;
    }

})();


