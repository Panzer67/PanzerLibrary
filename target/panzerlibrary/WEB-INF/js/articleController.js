(function () {
    angular.module("PanzerLibrary").controller("articleController", articleController);

    articleController.$inject = ['$http', 'article', 'editTask', 'GLOBALS', 'Upload', '$timeout'];
    function articleController($http, article, editTask, GLOBALS, Upload, $timeout) {
        var vm = this;
        vm.progress = 0;
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
        
        vm.uploadFiles = function (file) {     
            vm.f = file; 
            file.name = vm.helper(file.name);
            console.log(file);
            vm.article.pdflink = vm.helper(file.name);
            
            if (file) {
                file.upload = Upload.upload({
                    url: GLOBALS.baseUrl + '/singleUpload',
                    file: file   
                });
                file.upload.then(function (response) {
                    $timeout(function () {
                        file.result = response.data;
                        vm.result = response.data;
                    });
                }, function (response) {
                    if (response.status > 0) {
                        vm.errorMsg = response.status + ': ' + response.data;
                    }  
                }, function (evt) {                    
                    vm.progress = Math.min(100, parseInt(100.0 *  evt.loaded / evt.total));                    
                });
            }            
        };
        
        vm.helper = function(text) {
            var linkStr = String(text).replace(/\s*/mg, "");
            linkStr = linkStr.replace(/\.*/mg, "");
            linkStr = linkStr.substring(0, linkStr.length -3);
            return linkStr;
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


