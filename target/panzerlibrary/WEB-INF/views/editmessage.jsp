<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="hasRole('ADMIN')">
    <div ng-show="postEditCtrl.message" class="form-group">
        <h3 class="col-sm-offset-3">{{postEditCtrl.message}}</h3>
    </div>
</sec:authorize>
