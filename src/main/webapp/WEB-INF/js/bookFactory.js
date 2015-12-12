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
            "abstractText": "",
            "pdflink": ""
        };

        factory.setBook = function(title, authors, isbn, publisher, year, abstractText, pdflink) {
            book.title = title;
            book.authors = authors;
            book.isbn = isbn;
            book.publisher = publisher;
            book.year = year;
            book.abstractText = abstractText;
            book.pdflink = pdflink;
        };
        
        factory.getBook = function() {
            book.title = "";
            book.authors = [{
                    "author_firstname": "",
                    "author_lastname": ""
                }];
            book.isbn = "";
            book.publisher = "";
            book.year = "";
            book.abstractText = "";
            book.pdflink = "";
            return book;
        };

        return factory;
    }
})();

