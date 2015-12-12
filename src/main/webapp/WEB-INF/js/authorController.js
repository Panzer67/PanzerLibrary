(function () {
    angular.module("PanzerLibrary").controller("authorController", authorController);

    authorController.$inject = ['$http','$location' , 'authorFactory', 'author', 'editTask', 'GLOBALS']
    function authorController($http, $location, authorFactory, author, editTask, GLOBALS) {
        var vm = this;
        vm.author = author;
        vm.editTask = editTask;

        vm.postAuthor = function (typeOfForm) {
            if (typeOfForm === 'author') {
                vm.formData = vm.author;
            }
            var response = $http.post(GLOBALS.baseUrl + '/edit/add' + typeOfForm, vm.formData);
            response.success(function (response) {
                $location.path("edit/" + response.message); 
            }).error(function (err) {
                alert("error" + err);
            });
        };

        vm.deleteAuthor = function () {
            var authorId = vm.author.id;
            var response = $http.post(GLOBALS.baseUrl + '/delete/author/' + authorId);
            response.success(function (response) {
                $location.path("edit/" + response.message); 
            }).error(function (err) {
                alert("error" + err);
            });
        };

    }

})();

