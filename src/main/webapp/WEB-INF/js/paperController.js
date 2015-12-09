(function() {
    angular.module("PanzerLibrary").controller("paperController", paperController);
    
    paperController.$inject = ['$http', 'paper', 'editTask', 'GLOBALS', 'Upload', '$timeout'];
    function paperController($http, paper, editTask, GLOBALS, Upload, $timeout) {
        var vm = this;
        vm.progress = 0;
        vm.editTask = editTask;
        vm.authors = paper.authors;
        
        vm.paper = paper;
        vm.paper.pdflink = (editTask.edit === "Add") ? "" : paper.pdflink;
        
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
        
        vm.uploadFiles = function (file) {     
            vm.f = file; 
            console.log(file);            
            
            if (file) {
                file.upload = Upload.upload({
                    url: GLOBALS.baseUrl + '/singleUpload',
                    file: file   
                });
                file.upload.then(function (response) {
                    $timeout(function () {
                        file.result = response.data;
                        vm.result = response.data;
                        vm.paper.pdflink = response.data.filename;
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





