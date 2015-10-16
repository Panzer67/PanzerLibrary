<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="hasRole('ADMIN')">
    <div ng-show="authorCtrl.success" class="form-group">
        <h3 class="col-sm-offset-3">{{authorCtrl.success}}</h3>
    </div>
    <form ng-hide="authorCtrl.success" class="form-horizontal" data-ng-submit="authorCtrl.postAuthor('author')" name="authorForm" novalidate>

        <div class="form-group">
            <h3 class="col-sm-offset-3">New Author</h3>
        </div>
        <div class="form-group">
            <label for="firstname" class="col-sm-3 control-label">Firstname:</label>
            <div class="col-sm-6">
                <input type="text" ng-model="authorCtrl.author.author_firstname" class="form-control" id="firstname" name="author_firstname" placeholder="Firstname" required>
                <span ng-show="authorForm.$submitted || authorForm.author_firstname.$touched">
                    <span class="error" ng-show="authorForm.author_firstname.$error.required">Field required</span>
                </span>
            </div>
        </div>  
        <div class="form-group">
            <label for="lastname" class="col-sm-3 control-label">Lastname:</label>
            <div class="col-sm-6">
                <input type="text" ng-model="authorCtrl.author.author_lastname" class="form-control" id="lastname" name="author_lastname" placeholder="Lastname" required>
                <span ng-show="authorForm.$submitted || authorForm.author_lastname.$touched">
                    <span class="error" ng-show="authorForm.author_lastname.$error.required">Field required</span>
                </span>
            </div>
        </div>  
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-3">
                <input ng-disabled="authorForm.author_firstname.$error.required ||
                                authorForm.author_lastname.$error.required" class="btn btn-success" type="submit" id="submitauthor" value="Add Author">

            </div>
        </div>
        <input type="hidden" data-ng-model="authorId" value="{{authorCtrl.author.id}}" >
    </form>

</sec:authorize>