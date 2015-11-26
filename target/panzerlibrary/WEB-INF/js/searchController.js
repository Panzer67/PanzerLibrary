(function() {
    angular.module("PanzerLibrary").controller("searchController", searchController);
    
    searchController.$inject = ['searchResults', 'GLOBALS'];
    function searchController(searchResults, GLOBALS) {
        var vm = this;
        vm.searchResults = searchResults;
        console.log(vm.searchResults);

    }
})();


