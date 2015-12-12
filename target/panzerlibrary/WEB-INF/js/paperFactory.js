(function () {
    angular.module("PanzerLibrary").factory("paperFactory", paperFactory);

    function paperFactory(authorFactory) {
        var factory = {};

        var paper = {
            "title": "",
            "authors": [
                authorFactory.getAuthor()
            ],
            "institute": "",
            "year": "",
            "pages": "",
            "abstractText": "",
            "pdflink": ""
        };
        
        factory.setPaper = function (title, authors, institute, year, pages, abstractText, pdflink) {
            paper.title = title;
            paper.authors = authors;
            paper.institute = institute;
            paper.year = year;
            paper.pages = pages;
            paper.abstractText = abstractText;
            paper.pdflink = pdflink;
        };
        
        factory.getPaper = function() {
            paper.title = "";
            paper.authors = [{
                    "author_firstname": "",
                    "author_lastname": ""
                }];
            paper.institute = "";
            paper.year = "";
            paper.pages = "";
            paper.abstractText = "";
            paper.pdflink = "";
            return paper;
        };
        
        return factory;
    }

})();





