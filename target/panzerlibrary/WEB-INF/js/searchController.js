(function() {
    angular.module("PanzerLibrary").controller("searchController", searchController);
    
    searchController.$inject = ['searchFactory', 'articleFactory', 'articles'];
    function searchController(searchFactory, articleFactory, articles) {
        var vm = this;
        vm.articles = articles;
//        var authors = [
//            {
//                author_firstname: "Tjeerdjan",
//                author_lastname: "Nieuwenhuis"
//            }            
//        ];
//        var journal = {
//           journal_name: "Journal of Tjeerdism" 
//        };
//        articleFactory.setArticle("Panzer the Beast", authors, journal, "3", "1", "2002", "44-66", "Panzer the Beast. The ruler of Deliplein", "" );
//        vm.articles = [
//            articleFactory.getArticle()  
//        ];
        
//        vm.getSearch = function (searchInput) {
//            searchFactory.getSearch(searchInput)
//                    .success(function (response) {
//                        if (response === null) {
//                            vm.noResults = "No matching results";
//                            //vm.books = response;
//                        }
//                        else {
//                            vm.articles = response;
//                            console.log(response);
//
//                            vm.noResults = "";
//                        }
//                    })
//                    .error(function (err) {
//                        alert("er is een fout");
//                    });
//        };
    }
})();


