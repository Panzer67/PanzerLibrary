<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="hasRole('ADMIN')">    
    <form  class="form-horizontal" data-ng-submit="editCtrl.postLibObject()" name="journalForm" novalidate>

        <div class="form-group">
            <h3 class="col-sm-offset-3">Journal Form</h3>
        </div>
        <div class="form-group">
            <label for="inputJournal" class="col-sm-3 control-label">Journal:</label>
            <div class="col-sm-6">
                <input data-ng-model="editCtrl.libObject.journal_name" name="journal_name" type="text" class="form-control" id="inputJournal" placeholder="Journal" required>
                <span ng-show="journalForm.$submitted || journalForm.journal_name.$touched">
                    <span class="error" ng-show="journalForm.journal_name.$error.required">Field required</span>
                </span>
            </div>
        </div>                  
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-3">
                <input class="btn btn-success" ng-disabled="journalForm.journal_name.$error.required" type="submit" id="submitjournal" value="Add Journal">

            </div>
        </div>
        <input type="hidden" data-ng-model="objectId" value="{{editCtrl.libObject.id}}" >
    </form>
</sec:authorize>