(function () {
    angular.module("PanzerLibrary").factory("articleFactory", articleFactory);

    function articleFactory(authorFactory, journalFactory) {

        var factory = {};

        var article = {
            "title": "",
            "authors": [
                authorFactory.getAuthor()
            ],
            "journal": journalFactory.getJournal(),
            "volume": "",
            "issue": "",
            "year": "",
            "pages": "",
            "abstractText": "",
            "pdflink": ""
        };

        factory.setArticle = function (title, authors, journal, volume, issue, year, pages, abstractText, pdflink) {
            article.title = title;
            article.authors = authors;
            article.journal = journal;
            article.volume = volume;
            article.issue = issue;
            article.year = year;
            article.pages = pages;
            article.abstractText = abstractText;
            article.pdflink = pdflink;
        };

        factory.getArticle = function () {
            article.title = "";
            article.authors = [{
                    "author_firstname": "",
                    "author_lastname": ""
                }];
            article.journal = {
                "journal_name": ""
            };
            article.volume = "";
            article.issue = "";
            article.year = "";
            article.pages = "";
            article.abstractText = "";
            article.pdflink = "";
            return article;
        };

        return factory;
    }

})();
