(function() {
    angular.module("PanzerLibrary").controller("journalController", journalController);
    
    journalController.$inject = ['$http', 'journalFactory', 'journal', 'editTask', 'GLOBALS'];
    function journalController($http, journalFactory, journal, editTask, GLOBALS) {
        var vm = this;
        vm.journal = journal;
        vm.editTask = editTask;
        
        vm.postJournal = function (typeOfForm) {
            if (typeOfForm === 'journal') {
                vm.formData = vm.journal;
            }
            var response = $http.post(GLOBALS.baseUrl + '/edit/add' + typeOfForm, vm.formData);
            response.success(function (response) {
                response = response.message.concat(((editTask.edit === "Add") ? " added" : " updated"));
                vm.success = response;

            }).error(function (err) {
                alert("error" + err);
            });
        };

        vm.deleteJournal = function () {
            var journalId = vm.journal.id;
            var response = $http.post(GLOBALS.baseUrl + '/delete/journal/' + journalId);
            response.success(function (response) {
                response = response.message.concat(" deleted");
                vm.success = response;

            }).error(function (err) {
                alert("error" + err);
            });
        };
    }
    
    
})();


