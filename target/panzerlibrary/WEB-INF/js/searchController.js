(function() {
    angular.module("PanzerLibrary").controller("searchController", searchController);
    
    searchController.$inject = ['searchResults'];
    function searchController(searchResults) {
        var vm = this;
        vm.searchResults = searchResults;
        console.log(vm.searchResults);

    }
})();


