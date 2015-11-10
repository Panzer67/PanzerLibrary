<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="hasRole('ADMIN')">
    <div ng-show="paperCtrl.success" class="form-group">
        <h3 class="col-sm-offset-3">{{paperCtrl.success}}</h3>
    </div>
    <form ng-hide="paperCtrl.success" class="form-horizontal" name="paperForm" data-ng-submit="paperCtrl.postForm('paper')" novalidate>
        {{paperCtrl.success}}
        <div class="form-group">
            <h3 class="col-sm-offset-3">New Paper</h3>
        </div>
        <div class="form-group">
            <label for="inputTitle" class="col-sm-3 control-label">Title:</label>
            <div class="col-sm-6">
                <input data-ng-model="paperCtrl.paper.title" name="title"  type="text" class="form-control" id="inputTitle" placeholder="Title" required>
                <span ng-show="paperForm.$submitted || paperForm.title.$touched">
                    <span class="error" ng-show="paperForm.title.$error.required">Field required</span>
                </span>
            </div>
        </div>                
        <div class="form-group">
            <label for="inputInstitute" class="col-sm-3 control-label">Institute:</label>
            <div class="col-sm-6">
                <input data-ng-model="paperCtrl.paper.institute" name="institute" type="text" class="form-control" id="inputInstitute" placeholder="Institute" required>
                <span ng-show="paperForm.$submitted || paperForm.institute.$touched">
                    <span class="error" ng-show="paperForm.institute.$error.required">Field required</span>                
                </span>
            </div>
        </div>    
        <div class="form-group">
            <label for="inputYear" class="col-sm-3 control-label">Year:</label>
            <div class="col-sm-6">
                <input data-ng-model="paperCtrl.paper.year" ng-pattern="/^[0-9]{4}$/" name="year" type="text" class="form-control" id="inputYear" placeholder="Year" required>
                <span ng-show="paperForm.$submitted || paperForm.year.$touched">
                    <span class="error" ng-show="paperForm.year.$error.required">Field required</span>
                    <span class="error" ng-show="paperForm.year.$error.pattern">Fill in a year</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPages" class="col-sm-3 control-label">Pages:</label>
            <div class="col-sm-6">
                <input data-ng-model="paperCtrl.paper.pages" name="pages" type="text" class="form-control" id="inputPages" placeholder="Pages" required>
                <span ng-show="paperForm.$submitted || paperForm.pages.$touched">
                    <span class="error" ng-show="paperForm.pages.$error.required">Field required</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="textAbstract" class="col-sm-3 control-label">Abstract:</label>
            <div class="col-sm-6">
                <textarea ng-model="paperCtrl.paper.abstractText" name="abstractText" class="form-control" rows="3" placeholder="Abstract" required></textarea>
                <span ng-show="paperForm.$submitted || paperForm.abstractText.$touched">
                    <span class="error" ng-show="paperForm.abstractText.$error.required">Field required</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPdflink" class="col-sm-3 control-label">PDF link:</label>
            <div class="col-sm-6">
                <input ng-model="paperCtrl.article.pdflink" name="pdflink" type="text" class="form-control" id="inputPdflink" placeholder="PDF link" required>
                <span ng-show="paperForm.$submitted || paperForm.pdflink.$touched">
                    <span class="error" ng-show="paperForm.pdflink.$error.required">Field required</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-3">

                <span class="">Author(s)</span>
                <div class="btn-group" role="group">
                    <button type="button" ng-click="paperCtrl.addExtraAuthorInput()" class="btn btn-default btn-xs addRemoveAuthorButton">+</button>
                    <button type="button" ng-click="paperCtrl.removeOneAuthorInput()" class="btn btn-default btn-xs addRemoveAuthorButton">-</button> 
                </div>
            </div>  
        </div>
        <div ng-repeat="author in paperCtrl.authors">
            <div class="form-group">

                <label for="inputAuthorFirstname" class="col-sm-3 control-label">Firstname:</label>

                <div class="col-sm-6">
                    <input data-ng-model="author.author_firstname" name="author_firstname" type="text" class="form-control" id="inputAuthorFirstname" placeholder="Firstname" required>
                    <span ng-show="paperForm.$submitted || paperForm.author_firstname.$touched">
                        <span class="error" ng-show="paperForm.author_firstname.$error.required">Field required</span>
                    </span> 
                </div>
            </div>  
            <div class="form-group">
                <label for="inputAuthorLastname" class="col-sm-3 control-label">Lastname:</label>
                <div class="col-sm-6">
                    <input data-ng-model="author.author_lastname" name="author_lastname" type="text" class="form-control" id="inputAuthorLastname" placeholder="Lastname" required>
                    <span ng-show="paperForm.$submitted || paperForm.author_lastname.$touched">
                        <span class="error" ng-show="paperForm.author_lastname.$error.required">Field required</span>
                    </span>
                </div>
            </div> 
        </div>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-3">
                <button ng-disabled="paperForm.title.$error.required || paperForm.author_firstname.$error.required || paperForm.author_lastname.$error.required ||
                            paperForm.year.$error.required || paperForm.year.$error.pattern || paperForm.pages.$error.required || paperForm.institute.$error.required ||
                            paperForm.abstractText.$error.required"
                    type="submit" class="btn btn-success">Add Paper</button>
                    <button type="button" ng-show="paperCtrl.editTask.edit === 'Update'" ng-click="paperCtrl.deleteArticle()" class="btn btn-success">Delete</button>
            </div>
        </div>
        <input type="hidden" data-ng-model="paperId" value="{{paperCtrl.article.id}}" >
    </form>
</sec:authorize>