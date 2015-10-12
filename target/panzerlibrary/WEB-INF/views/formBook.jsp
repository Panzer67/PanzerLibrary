<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="hasRole('ADMIN')">
<form class="form-horizontal" name="bookForm" data-ng-submit="editCtrl.postForm('book')" novalidate>
    {{editCtrl.success}}
    <div class="form-group">
        <h3 class="col-sm-offset-3">New Book</h3>
    </div>
    <div class="form-group">
        <label for="inputTitle" class="col-sm-3 control-label">Title:</label>
        <div class="col-sm-6">
            <input data-ng-model="editCtrl.book.title" name="title"  type="text" class="form-control" id="inputTitle" placeholder="Title" required>
            <span ng-show="bookForm.$submitted || bookForm.title.$touched">
                <span class="error" ng-show="bookForm.title.$error.required">Field required</span>
            </span>
        </div>
    </div>                
    <div class="form-group">
        <label for="inputIsbn" class="col-sm-3 control-label">ISBN:</label>
        <div class="col-sm-6">
            <input data-ng-model="editCtrl.book.isbn" ng-pattern="/^[0-9]{13}$/" name="isbn" type="text" class="form-control" id="inputIsbn" placeholder="ISBN" required>
            <span ng-show="bookForm.$submitted || bookForm.isbn.$touched">
                <span class="error" ng-show="bookForm.isbn.$error.required">Field required</span>
                <span class="error" ng-show="bookForm.isbn.$error.pattern">Fill in a 13 digit ISBN number</span>
            </span>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPuslisher" class="col-sm-3 control-label">Publisher:</label>
        <div class="col-sm-6">
            <input data-ng-model="editCtrl.book.publisher" name="publisher" type="text" class="form-control" id="inputPublisher" placeholder="Publisher" required>
            <span ng-show="bookForm.$submitted || bookForm.publisher.$touched">
                <span class="error" ng-show="bookForm.publisher.$error.required">Field required</span>
            </span>
        </div>
    </div>
    <div class="form-group">
        <label for="inputYear" class="col-sm-3 control-label">Year:</label>
        <div class="col-sm-6">
            <input data-ng-model="editCtrl.book.year" ng-pattern="/^[0-9]{4}$/" name="year" type="text" class="form-control" id="inputYear" placeholder="Year" required>
            <span ng-show="bookForm.$submitted || bookForm.year.$touched">
                <span class="error" ng-show="bookForm.year.$error.required">Field required</span>
                <span class="error" ng-show="bookForm.year.$error.pattern">Fill in a year</span>
            </span>
        </div>
    </div>
    <div class="form-group">
        <label for="textAbstract" class="col-sm-3 control-label">Abstract:</label>
        <div class="col-sm-6">
            <textarea ng-model="editCtrl.book.abstractText" name="abstractText" class="form-control" rows="3" placeholder="Abstract" required></textarea>
            <span ng-show="bookForm.$submitted || bookForm.abstractText.$touched">
                <span class="error" ng-show="bookForm.abstractText.$error.required">Field required</span>
            </span>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-3">

            <span class="">Author(s)</span>
            <div class="btn-group" role="group">
                <button type="button" ng-click="editCtrl.addExtraAuthorInput()" class="btn btn-default btn-xs addRemoveAuthorButton">+</button>
                <button type="button" ng-click="editCtrl.removeOneAuthorInput()" class="btn btn-default btn-xs addRemoveAuthorButton">-</button> 
            </div>
        </div>     

    </div>
    <div ng-repeat="author in editCtrl.authors">
        <div class="form-group">

            <label for="inputAuthorFirstname" class="col-sm-3 control-label">Firstname:</label>

            <div class="col-sm-6">
                <input data-ng-model="author.author_firstname" name="author_firstname" type="text" class="form-control" id="inputAuthorFirstname" placeholder="Firstname" required>
                <span ng-show="bookForm.$submitted || bookForm.author_firstname.$touched">
                    <span class="error" ng-show="bookForm.author_firstname.$error.required">Field required</span>
                </span> 
            </div>
        </div>  
        <div class="form-group">
            <label for="inputAuthorLastname" class="col-sm-3 control-label">Lastname:</label>
            <div class="col-sm-6">
                <input data-ng-model="author.author_lastname" name="author_lastname" type="text" class="form-control" id="inputAuthorLastname" placeholder="Lastname" required>
                <span ng-show="bookForm.$submitted || bookForm.author_lastname.$touched">
                    <span class="error" ng-show="bookForm.author_lastname.$error.required">Field required</span>
                </span>
            </div>
        </div> 
    </div>
    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-3">
            <button ng-disabled="bookForm.title.$error.required || bookForm.author_firstname.$error.required || bookForm.author_lastname.$error.required ||
                        bookForm.isbn.$error.required || bookForm.isbn.$error.pattern ||
                        bookForm.publisher.$error.required || bookForm.year.$error.required || bookForm.year.$error.pattern"  type="submit" class="btn btn-success">Add Book</button>
        </div>
    </div>
</form>
</sec:authorize>