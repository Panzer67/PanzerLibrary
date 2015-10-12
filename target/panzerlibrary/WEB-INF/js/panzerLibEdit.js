(function () {
    angular.module('editPanzerLibrary', ['ngRoute']).config(moduleConfig);

    moduleConfig.$inject = ['$routeProvider'];

    function moduleConfig($routeProvider) {
        $routeProvider
                .when('/', {
                    templateUrl: 'author',
                    controller: 'editController',
                    controllerAs: 'editCtrl'
                })
                .when('/author', {
                    templateUrl: 'author',
                    controller: 'editController',
                    controllerAs: 'editCtrl'

                })
                .when('/book', {
                    templateUrl: 'book',
                    controller: 'editController',
                    controllerAs: 'editCtrl'
                })
                .when('/article', {
                    templateUrl: 'article',
                    controller: 'editController',
                    controllerAs: 'editCtrl'
                })
                .when('/journal', {
                    templateUrl: 'journal',
                    controller: 'editController',
                    controllerAs: 'editCtrl'
                })                
                .otherwise({
                    redirectTo: '/'
                });
    }

})();

