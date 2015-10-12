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
                    controller: 'editController',
                    controllerAs: 'editCtrl',
                    resolve: {
                        author: function(authorFactory) {
                            return authorFactory.getAuthor();
                        }
                    }
                })
                .when('/book', {
                    templateUrl: 'book',
                    controller: 'editController',
                    controllerAs: 'editCtrl'
                })
                .when('/article', {
                    templateUrl: 'article',
                    controller: 'articleController',
                    controllerAs: 'articleCtrl',
                    resolve: {
                        article: function(articleFactory) {
                            return articleFactory.getArticle();
                        },
                        editVar: function() {
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
                        editVar: function() {
                            return { edit: "Update" };
                        }
                    }
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


