(function () {
    angular.module("PanzerLibrary").controller("editController", editController);
    
    editController.$inject = ['message'];
    function editController(message) {
        var vm = this;        
        vm.message = message;
        
    }
})();