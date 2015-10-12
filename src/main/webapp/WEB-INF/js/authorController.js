(function () {
    angular.module("PanzerLibrary").controller("authorController", authorController);

    authorController.$inject = ['$http', 'authorFactory', 'author', 'editTask']
    function authorController($http, authorFactory, author, editTask) {
        var vm = this;
        vm.author = author;
        vm.editTask = editTask;

        vm.postAuthor = function (typeOfForm) {
            if (typeOfForm === 'author') {
                vm.formData = vm.author;
            }
            var response = $http.post('http://localhost:8080/panzerlibrary/edit/add' + typeOfForm, vm.formData);
            response.success(function (response) {
                response = response.message.concat(((editTask.edit === "Add") ? " added" : " updated"));
                vm.success = response;

            }).error(function (err) {
                alert("error" + err);
            });
        };

        vm.deleteAuthor = function () {
            var authorId = vm.author.id;
            var response = $http.post('http://localhost:8080/panzerlibrary/delete/author/' + authorId);
            response.success(function (response) {
                response = response.message.concat(" deleted");
                vm.success = response;

            }).error(function (err) {
                alert("error" + err);
            });
        };

    }

})();

