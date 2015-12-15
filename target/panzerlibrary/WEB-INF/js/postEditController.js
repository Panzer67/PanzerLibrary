(function () {
    angular.module("PanzerLibrary").controller("postEditController", postEditController);
    
    postEditController.$inject = ['message'];
    function postEditController(message) {
        var vm = this;        
        vm.message = message;
        
    }
})();