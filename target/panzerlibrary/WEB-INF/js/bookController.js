(function () {
    angular.module('PanzerLibrary').controller('bookController', bookController);

    bookController.$inject = ['$http', 'book', 'editTask'];
    function bookController($http, book, editTask) {
        var vm = this;
        vm.editTask = editTask;
        
        vm.authors = book.authors;
        vm.book = book;
        
        vm.postBook = function (typeOfForm) {
            if (typeOfForm === 'book') {                
                vm.formData = vm.book;
            }
            var response = $http.post('http://localhost:8080/PanzerLibrary/edit/add' + typeOfForm, vm.formData);   
            response.success(function (response) {
                response = response.message.concat(((editTask.edit === "Add") ? " added" : " updated" ));
                vm.success = response;                
            }).error(function (err) {
                alert("error" + err);
            });
        };
        
        vm.deleteBook = function() {
            var bookId = vm.book.id;
            var response = $http.post('http://localhost:8080/PanzerLibrary/delete/book/' + bookId);   
            response.success(function (response) {
                response = response.message.concat(" deleted");
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

