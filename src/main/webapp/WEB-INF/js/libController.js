(function () {
    angular.module("PanzerLibrary").controller('libController', libController);
    
    libController.$inject = ['$location', 'GLOBALS'];
    function libController($location, GLOBALS) {
        var vm = this;
        vm.baseUrl = GLOBALS.baseUrl;
        vm.authorUrl = GLOBALS.authorUrl;
        vm.bookUrl = GLOBALS.bookUrl;
        vm.articleUrl = GLOBALS.articleUrl;
        vm.paperUrl = GLOBALS.paperUrl;
        vm.journalUrl = GLOBALS.journalUrl;
        vm.search = function (input) {
            $location.path("search/" + input);
            
        };   
        
        
//        vm.addExtraAuthorInput = function () {
//            var author = {
//                author_firstname: "",
//                author_lastname: ""
//            };
//            vm.authors.push(author);
//        };
//
//        vm.removeOneAuthorInput = function () {
//            var lastElement = vm.authors.length - 1;
//            if (lastElement !== 0) {
//                vm.authors.splice(lastElement);
//            }
//        };
    }
})();
