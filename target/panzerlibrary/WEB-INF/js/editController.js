(function () {
    angular.module("PanzerLibrary").controller("editController", editController);
    
    editController.$inject = ['$http', 'authorFactory', 'bookFactory', 'articleFactory', 'journalFactory'];
    function editController($http, authorFactory, bookFactory, articleFactory, journalFactory) {
        var vm = this;
        
        vm.authors = [
            authorFactory.getAuthor()    
        ];
        vm.journal = journalFactory.getJournal();
        
        
        
        vm.author = authorFactory.getAuthor();
        
        vm.postForm = function (typeOfForm) {

            if (typeOfForm === "author") {
                authorFactory.setAuthor(vm.author.author_firstname, vm.author.author_lastname);
                vm.formData = authorFactory.getAuthor();                      
            }
            if (typeOfForm === 'book') {
                bookFactory.setBook(vm.book.title, vm.authors, vm.book.isbn, vm.book.publisher, vm.book.year, vm.book.abstractText);
                vm.formData = bookFactory.getBook();  
            }
            if (typeOfForm === 'article') {
                articleFactory.setArticle(vm.article.title, vm.authors, vm.journal, vm.article.volume,
                    vm.article.issue, vm.article.year, vm.article.pages,vm.article.abstractText, vm.article.pdflink);                    
                vm.formData = articleFactory.getArticle();                
            }
            if (typeOfForm === 'journal') {
                journalFactory.setJournal(vm.journal.journal_name);
                vm.formData = journalFactory.getJournal();                
            }
            var response = $http.post('http://localhost:8080/panzerlibrary/edit/add' + typeOfForm, vm.formData);   
            response.success(function (response) {
                vm.success = response;                
            }).error(function (err) {
                alert("error" + err);
            });
        };

        vm.addExtraAuthorInput = function () {
            var author = {
                firstname: "",
                lastname: ""
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