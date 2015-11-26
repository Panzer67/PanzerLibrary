(function() {
    angular.module('PanzerLibrary').factory('searchFactory', searchFactory);
    
    searchFactory.$inject = ['$http', '$q', '$timeout', '$log', 'GLOBALS'];
    function searchFactory($http, $q, $timeout, $log, GLOBALS) {
        var factory = {};

        
        factory.getSearch = function(searchInput) {
            var deferred = $q.defer();
            $http.get(GLOBALS.baseUrl + '/search/' + searchInput)
                    .success(function(data) {
                        deferred.resolve(data);
            }).error(function(msg) {
                deferred.reject(msg);
                $log.error(msg);        
            });
            return deferred.promise;   
        };
        
        factory.getArticle = function(title) {
            var deferred = $q.defer();
            $http.get('http://localhost:8080/PanzerLibrary/article/' + title)
                    .success(function(data) {
                        deferred.resolve(data);
            }).error(function(msg) {
                deferred.reject(msg);
                $log.error(msg);        
            });
            return deferred.promise;  
        },
        
        factory.getGreeting = function () {
            var deferred = $q.defer();
            $timeout(function () {
                deferred.resolve("Allo!");
            }, 1000);
            return deferred.promise;
        };
        
        factory.returnSearch = function(searchInput) {
            return searchInput;
        };
        
        return factory;
    }
    
})();


