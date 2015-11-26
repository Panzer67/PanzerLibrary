(function() {
    angular.module("PanzerLibrary").controller("paperController", paperController);
    
    paperController.$inject = ['$http', 'paper', 'editTask', 'GLOBALS'];
    function paperController($http, paper, editTask, GLOBALS) {
        var vm = this;
        vm.editTask = editTask;
        vm.authors = paper.authors;
        
        vm.paper = paper;
        
        vm.postForm = function (typeOfForm) {
            if (typeOfForm === 'paper') {
                vm.formData = vm.paper;
            }
            var response = $http.post(GLOBALS.baseUrl + '/edit/add' + typeOfForm, vm.formData);
            response.success(function (response) {
                response = response.message.concat(((editTask.edit === "Add") ? " added" : " updated"));
                vm.success = response;

            }).error(function (err) {
                alert("error" + err);
            });
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





