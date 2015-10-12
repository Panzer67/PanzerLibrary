(function () {
    angular.module("PanzerLibrary").factory("bookFactory", bookFactory);

    function bookFactory(authorFactory) {
        var factory = {};

        var book = {
            "title": "",
            "authors": [
                authorFactory.getAuthor()
            ],
            "isbn": "",
            "publisher": "",
            "year": "",
            "abstractText": ""
        };

        factory.setBook = function(title, authors, isbn, publisher, year, abstractText) {
            book.title = title;
            book.authors = authors;
            book.isbn = isbn;
            book.publisher = publisher;
            book.year = year;
            book.abstractText = abstractText;
        };
        
        factory.getBook = function() {
            return book;
        };

        return factory;
    }
})();

