(function () {
    angular.module("PanzerLibrary").controller("articleController", articleController);

    articleController.$inject = ['$http', 'article', 'editTask', 'GLOBALS'];
    function articleController($http, article, editTask, GLOBALS) {
        var vm = this;
        vm.editTask = editTask;
        vm.authors = article.authors;
        
        vm.journal = article.journal;

        vm.article = article;     

        vm.postArticle = function (typeOfForm) {
            if (typeOfForm === 'article') {             
                vm.formData = vm.article;                
            }
            var response = $http.post(GLOBALS.baseUrl + '/edit/add' + typeOfForm, vm.formData);   
            response.success(function (response) {
                response = response.message.concat(((editTask.edit === "Add") ? " added" : " updated" ));
                vm.success = response; 
               
            }).error(function (err) {
                alert("error" + err);
            });
        };
        
        vm.deleteArticle = function() {
            var articleId = vm.article.id;
            var response = $http.post(GLOBALS.baseUrl + '/delete/article/' + articleId);   
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


