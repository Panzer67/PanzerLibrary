(function () {
    angular.module('PanzerLibrary', ['ngRoute']).config(moduleConfig);

    moduleConfig.$inject = ['$routeProvider'];

    function moduleConfig($routeProvider) {
        $routeProvider

                .when('/search/:param', {
                    templateUrl: 'search',
                    controller: 'searchController',
                    controllerAs: 'searchCtrl',
                    resolve: {
                        articles: function (searchFactory, $route) {
                            return searchFactory.getSearch($route.current.params.param);
                        }
                    }
                })
                .when('/author', {
                    templateUrl: 'author',
                    controller: 'authorController',
                    controllerAs: 'authorCtrl',
                    resolve: {
                        author: function(authorFactory) {
                            return authorFactory.getAuthor();
                        },
                        editTask: function() {
                            return { edit: "Add" };
                        }
                    }
                })
                .when('/book', {
                    templateUrl: 'book',
                    controller: 'bookController',
                    controllerAs: 'bookCtrl',
                    resolve: {
                        book: function(bookFactory) {
                            return bookFactory.getBook();
                        },
                        editTask: function() {
                            return { edit: "Add" };
                        }
                    }
                })
                .when('/article', {
                    templateUrl: 'article',
                    controller: 'articleController',
                    controllerAs: 'articleCtrl',
                    resolve: {
                        article: function(articleFactory) {
                            return articleFactory.getArticle();
                        },
                        editTask: function() {
                            return { edit: "Add" };
                        }
                    }
                })
                .when('/article/:article', {
                    templateUrl: 'article',
                    controller: 'articleController',
                    controllerAs: 'articleCtrl',
                    resolve: {
                        article: function ($route) {                            
                            return JSON.parse($route.current.params.article);
                        },
                        editTask: function() {
                            return { edit: "Update" };
                        }
                    }
                })
                .when('/journal', {
                    templateUrl: 'journal',
                    controller: 'journalController',
                    controllerAs: 'journalCtrl',
                    resolve: {
                        journal: function(journalFactory) {
                            return journalFactory.getJournal();
                        },
                        editTask: function() {
                            return { edit: "Add" };
                        }
                    }
                })
                .when('/paper', {
                    templateUrl: 'paper',
                    controller: 'paperController',
                    controllerAs: 'paperCtrl',
                    resolve: {
                        paper: function(paperFactory) {
                            return paperFactory.getPaper();
                        },
                        editTask: function () {
                            return {edit: "Add"};
                        }
                    }
                })
                .otherwise({
                    redirectTo: '/'
                });

    }
})();


