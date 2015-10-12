(function () {
    angular.module("PanzerLibrary").controller('libController', libController);
    
    libController.$inject = ['searchFactory', '$location'];
    function libController(searchFactory, $location) {
        var vm = this;
        vm.search = function (input) {
            $location.path("search/" + input);
            
        };   
        
        
        vm.addExtraAuthorInput = function () {
            var author = {
                author_firstname: "",
                author_lastname: ""
            };
            vm.authors.push(author);
        };

        vm.removeOneAuthorInput = function () {
            var lastElement = vm.authors.length - 1;
            if (lastElement !== 0) {
                vm.authors.splice(lastElement);
            }
        };
    }
})();
