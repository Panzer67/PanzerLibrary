(function() {
    angular.module("PanzerLibrary").controller("journalController", journalController);
    
    journalController.$inject = ['$http', 'journalFactory', 'journal', 'editTask'];
    function journalController($http, journalFactory, journal, editTask) {
        var vm = this;
        vm.journal = journal;
        vm.editTask = editTask;
        
        vm.postJournal = function (typeOfForm) {
            if (typeOfForm === 'journal') {
                vm.formData = vm.journal;
            }
            var response = $http.post('http://localhost:8080/panzerlibrary/edit/add' + typeOfForm, vm.formData);
            response.success(function (response) {
                response = response.message.concat(((editTask.edit === "Add") ? " added" : " updated"));
                vm.success = response;

            }).error(function (err) {
                alert("error" + err);
            });
        };

        vm.deleteJournal = function () {
            var journalId = vm.journal.id;
            var response = $http.post('http://localhost:8080/panzerlibrary/delete/journal/' + journalId);
            response.success(function (response) {
                response = response.message.concat(" deleted");
                vm.success = response;

            }).error(function (err) {
                alert("error" + err);
            });
        };
    }
    
    
})();


