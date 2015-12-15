(function () {
    angular.module("PanzerLibrary").controller("editController", editController);

    editController.$inject = ['$http', '$location', 'editTask', 'GLOBALS', 'Upload', '$timeout', 'libObject'];
    function editController($http, $location, editTask, GLOBALS, Upload, $timeout, libObject) {
        var vm = this;
        vm.progress = 0;
        vm.editTask = editTask;

        vm.libObject = libObject;
        if(editTask.type === "book" || editTask.type === "article" || editTask.type === "paper") {
            vm.libObject.pdflink = (editTask.edit === "Add") ? "" : libObject.pdflink;
        }
        vm.postLibObject = function () {

            vm.formData = vm.libObject;

            var response = $http.post(GLOBALS.baseUrl + '/edit/add' + editTask.type, vm.formData);
            response.success(function (response) {
                $location.path("edit/" + response.message);
            }).error(function (err) {
                alert("error" + err);
            });
        };

        vm.deleteLibObject = function () {
            var objectId = vm.libObject.id;
            var response = $http.post(GLOBALS.baseUrl + '/delete/' + editTask.type + '/' + objectId);
            response.success(function (response) {
                $location.path("edit/" + response.message);
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
                    file: file,
                    fields: {'dir': editTask.type + "s"}
                });
                file.upload.then(function (response) {
                    $timeout(function () {
                        file.result = response.data;
                        vm.result = response.data;
                        vm.libObject.pdflink = response.data.filename;
                    });
                }, function (response) {
                    if (response.status > 0) {
                        vm.errorMsg = response.status + ': ' + response.data;
                    }
                }, function (evt) {
                    vm.progress = Math.min(100, parseInt(100.0 * evt.loaded / evt.total));
                });
            }
        };

        vm.addExtraAuthorInput = function () {
            var author = {
                "author_firstname": "",
                "author_lastname": "",
                "initial": ""
            };
            vm.libObject.authors.push(author);
        };

        vm.removeOneAuthorInput = function () {
            var lastElement = vm.libObject.authors.length - 1;
            if (lastElement !== 0) {
                vm.libObject.authors.splice(lastElement);
            }
        };

    }
})();


