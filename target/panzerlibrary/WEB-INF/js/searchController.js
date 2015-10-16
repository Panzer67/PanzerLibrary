(function() {
    angular.module("PanzerLibrary").controller("searchController", searchController);
    
    searchController.$inject = ['articles'];
    function searchController(articles) {
        var vm = this;
        vm.articles = articles;

    }
})();


