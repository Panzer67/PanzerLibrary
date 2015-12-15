(function () {
    angular.module('PanzerLibrary', ['ngRoute', 'ngFileUpload', 'ngAnimate', 'ui.bootstrap']).config(moduleConfig);

    moduleConfig.$inject = ['$routeProvider'];

    function moduleConfig($routeProvider) {
        $routeProvider
                .when('/search/:param', {
                    templateUrl: 'search',
                    controller: 'searchController',
                    controllerAs: 'searchCtrl',
                    resolve: {
                        searchResults: function (searchFactory, $route) {
                            return searchFactory.getSearch($route.current.params.param);
                        }
                    }
                })
                .when('/author', {
                    templateUrl: 'author',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (objectFactory) {
                            return objectFactory.getObject("author");
                        },
                        editTask: function () {
                            return {edit: "Add", type: "author"};
                        }
                    }
                })
                .when('/author/:id', {
                    templateUrl: 'author',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (searchFactory, $route) {
                            return searchFactory.getLibObject("author", $route.current.params.id);
                        },
                        editTask: function () {
                            return {edit: "Update", type: "author"};
                        }
                    }
                })
                .when('/book', {
                    templateUrl: 'book',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (objectFactory) {
                            return objectFactory.getObject("book");
                        },
                        editTask: function () {
                            return {edit: "Add", type: "book"};
                        }
                    }
                })
                .when('/book/:id', {
                    templateUrl: 'book',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (searchFactory, $route) {
                            return searchFactory.getLibObject("book", $route.current.params.id);
                        },
                        editTask: function () {
                            return {edit: "Update", type: "book"};
                        }
                    }
                })
                .when('/article', {
                    templateUrl: 'article',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (objectFactory) {
                            return objectFactory.getObject("article");
                        },
                        editTask: function () {
                            return {edit: "Add", type: "article"};
                        }
                    }
                })
                .when('/article/:id', {
                    templateUrl: 'article',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (searchFactory, $route) {
                            return searchFactory.getLibObject("article", $route.current.params.id);
                        },
                        editTask: function () {
                            return {edit: "Update", type: "article"};
                        }
                    }
                })
                .when('/journal', {
                    templateUrl: 'journal',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (objectFactory) {
                            return objectFactory.getObject("journal");
                        },
                        editTask: function () {
                            return {edit: "Add", type: "journal"};
                        }
                    }
                })
                .when('/journal/:id', {
                    templateUrl: 'journal',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (searchFactory, $route) {
                            return searchFactory.getLibObject("journal", $route.current.params.id);
                        },
                        editTask: function () {
                            return {edit: "Update", type: "journal"};
                        }
                    }
                })
                .when('/paper', {
                    templateUrl: 'paper',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (objectFactory) {
                            return objectFactory.getObject("paper");
                        },
                        editTask: function () {
                            return {edit: "Add", type: "paper"};
                        }
                    }
                })
                .when('/paper/:id', {
                    templateUrl: 'paper',
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        libObject: function (searchFactory, $route) {
                            return searchFactory.getLibObject("paper", $route.current.params.id);
                        },
                        editTask: function () {
                            return {edit: "Update", type: "paper"};
                        }
                    }
                })
                .when('/edit/:param', {
                    templateUrl: 'editmessage',
                    controller: 'postEditController',
                    controllerAs: 'postEditCtrl',
                    resolve: {
                        message: function(messageFactory, $route) {
                            return messageFactory.getMessage($route.current.params.param);
                        }
                    }
                })
                .otherwise({
                    redirectTo: '/'
                });

    }
})();


