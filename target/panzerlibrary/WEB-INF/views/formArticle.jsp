<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="hasRole('ADMIN')">
    <div ng-show="articleCtrl.success" class="form-group">
        <h3 class="col-sm-offset-3">{{articleCtrl.success}}</h3>
    </div>
    <form ng-hide="articleCtrl.success" class="form-horizontal" data-ng-submit="articleCtrl.postArticle('article')" name="articleForm" novalidate>

        <div class="form-group">
            <h3 class="col-sm-offset-3">Article Form <small>{{articleCtrl.success}}</small></h3>
        </div>
        <div class="form-group">
            <label for="inputTitle" class="col-sm-3 control-label">Title:</label>
            <div class="col-sm-6">
                <input data-ng-model="articleCtrl.article.title" type="text" name="title" class="form-control" id="inputTitle" placeholder="Title" required>
                <span ng-show="articleForm.$submitted || articleForm.title.$touched">
                    <span class="error" ng-show="articleForm.title.$error.required">Field required</span>
                </span>
            </div>
        </div>                
        <div class="form-group">
            <label for="inputJournal" class="col-sm-3 control-label">Journal:</label>
            <div class="col-sm-6">
                <input data-ng-model="articleCtrl.journal.journal_name" type="text" class="form-control" id="inputJournal" placeholder="Journal" name="journal_name"  required>
                <span ng-show="articleForm.$submitted || articleForm.journal_name.$touched">
                    <span class="error" ng-show="articleForm.journal_name.$error.required">Field required</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputVolume" class="col-sm-3 control-label">Volume:</label>
            <div class="col-sm-6">
                <input data-ng-model="articleCtrl.article.volume" name="volume" type="text" class="form-control" id="inputVolume" placeholder="Volume" required>
                <span ng-show="articleForm.$submitted || articleForm.volume.$touched">
                    <span class="error" ng-show="articleForm.volume.$error.required">Field required</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputIssue" class="col-sm-3 control-label">Issue:</label>
            <div class="col-sm-6">
                <input data-ng-model="articleCtrl.article.issue" name="issue" type="text" class="form-control" id="inputIssue" placeholder="Issue" required>
                <span ng-show="articleForm.$submitted || articleForm.issue.$touched">
                    <span class="error" ng-show="articleForm.issue.$error.required">Field required</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputYear" class="col-sm-3 control-label">Year:</label>
            <div class="col-sm-6">
                <input data-ng-model="articleCtrl.article.year" ng-pattern="/^[0-9]{4}$/" name="year" type="text" class="form-control" id="inputYear" placeholder="Year" required>
                <span ng-show="articleForm.$submitted || articleForm.year.$touched">
                    <span class="error" ng-show="articleForm.year.$error.required">Field required</span>
                    <span class="error" ng-show="articleForm.year.$error.pattern">Fill in a year</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPages" class="col-sm-3 control-label">Pages:</label>
            <div class="col-sm-6">
                <input data-ng-model="articleCtrl.article.pages" name="pages" type="text" class="form-control" id="inputPages" placeholder="Pages" required>
                <span ng-show="articleForm.$submitted || articleForm.pages.$touched">
                    <span class="error" ng-show="articleForm.pages.$error.required">Field required</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="textAbstract" class="col-sm-3 control-label">Abstract:</label>
            <div class="col-sm-6">
                <textarea ng-model="articleCtrl.article.abstractText" name="abstractText" class="form-control" rows="3" placeholder="Abstract" required></textarea>
                <span ng-show="articleForm.$submitted || articleForm.abstractText.$touched">
                    <span class="error" ng-show="articleForm.abstractText.$error.required">Field required</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPdflink" class="col-sm-3 control-label">PDF link:</label>
            <div class="col-sm-6">
                <input ng-disabled="articleCtrl.editTask.edit === 'Add'" ng-model="articleCtrl.article.pdflink" name="pdflink" type="text" class="form-control" id="inputPdflink" placeholder="PDF link" >
                
            </div>
        </div>
        <div class="for-group">
            <label for="uploadFile" class="col-sm-3 control-label">
                <button ng-disabled="articleCtrl.progress === 100" class="btn btn-success btn-xs" type="file" ngf-select="articleCtrl.uploadFiles($file, $invalidFiles)"
                     accept=".pdf" ngf-max-height="1000" ngf-max-size="100MB" required>Select File
                </button>
            </label>
            <div class="col-sm-6">
                <uib-progressbar value="articleCtrl.progress"><b>{{articleCtrl.progress}}%</b></uib-progressbar> 
                <p>{{articleCtrl.result.message}}</p>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-3">
                <span class="">Author(s)</span>
                <div class="btn-group" role="group">
                    <button type="button" ng-click="articleCtrl.addExtraAuthorInput()" class="btn btn-default btn-xs addRemoveAuthorButton">+</button>
                    <button type="button" ng-click="articleCtrl.removeOneAuthorInput()" class="btn btn-default btn-xs addRemoveAuthorButton">-</button> 
                </div>
            </div>  
        </div>
        <div ng-repeat="author in articleCtrl.authors">
            <div class="form-group">
                <label for="inputAuthorFirstname" class="col-sm-3 control-label">Firstname:</label>
                <div class="col-sm-6">
                    <input data-ng-model="author.author_firstname" name="author_firstname" type="text" class="form-control" id="inputAuthorFirstname" placeholder="Firstname" required>
                    <span ng-show="articleForm.$submitted || articleForm.author_firstname.$touched">
                        <span class="error" ng-show="articleForm.author_firstname.$error.required">Field required</span>
                    </span> 
                </div>
            </div>  
            <div class="form-group">
                <label for="inputAuthorLastname" class="col-sm-3 control-label">Lastname:</label>
                <div class="col-sm-6">
                    <input data-ng-model="author.author_lastname" name="author_lastname" type="text" class="form-control" id="inputAuthorLastname" placeholder="Lastname" required>
                    <span ng-show="articleForm.$submitted || articleForm.author_lastname.$touched">
                        <span class="error" ng-show="articleForm.author_lastname.$error.required">Field required</span>
                    </span>
                </div>
            </div> 
        </div>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-3">
                <button ng-disabled="articleForm.title.$error.required || articleForm.author_firstname.$error.required || articleForm.author_lastname.$error.required ||
                            articleForm.journal_name.$error.required || articleForm.volume.$error.required || articleForm.issue.$error.required ||
                            articleForm.year.$error.required || articleForm.year.$error.pattern || articleForm.pages.$error.required"
                        type="submit" class="btn btn-success" >{{articleCtrl.editVar.edit}} Article</button>
                <button type="button" ng-show="articleCtrl.editTask.edit === 'Update'" ng-click="articleCtrl.deleteArticle()" class="btn btn-success">Delete</button>
            </div>
        </div>
        <input type="hidden" data-ng-model="articleId" value="{{articleCtrl.article.id}}" >
    </form>

</sec:authorize>