<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div ng-show="searchCtrl.articles">
            <div class="panel-heading"><h3>({{searchCtrl.articles.length}}) Results</h3></div>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" ng-repeat="article in searchCtrl.articles">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            {{$index + 1}}.&nbsp;
                            <a role="button" data-toggle="collapse" data-parent="#accordion" onclick="return false;" href="#result{{$index + 1}}" aria-expanded="true" aria-controls="collapseOne">
                                {{article.title}}
                            </a>
                        </h4>
                    </div>
                    <div id="result{{$index + 1}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <table class="table table-bordered table-hover">
                                <tr>                                                
                                    <td>
                                        Author(s)
                                    </td>
                                    <td>
                                        Journal
                                    </td>
                                    <td>
                                        Volume
                                    </td>
                                    <td>
                                        Issue
                                    </td>
                                    <td>
                                        Year
                                    </td>
                                    <td>
                                        Pages
                                    </td>
                                    <td>
                                        Abstract
                                    </td>
                                    <td>
                                        Link
                                    </td>
                                </tr>
                                <tr>                                                
                                    <td>
                                        <div ng-repeat="author in article.authors">
                                            {{author.author_firstname}} {{author.author_lastname}}
                                        </div>

                                    </td>
                                    <td>                        
                                        {{article.journal.journal_name}}
                                    </td>
                                    <td>
                                        {{article.volume}}
                                    </td>
                                    <td>
                                        {{article.issue}}
                                    </td>
                                    <td>
                                        {{article.year}}
                                    </td>
                                    <td>
                                        {{article.pages}}
                                    </td>
                                    <td>
                                        {{article.abstractText}}
                                    </td>
                                    <td>
                                        <a ng-if="article.pdflink" target="_blank" href="http://localhost:8080/panzerlibrary/pdfs/{{article.pdflink}}.pdf">pdf</a>
                                    </td>
                                </tr>
                            </table> 
                            <sec:authorize access="hasRole('ADMIN')"><a href="#/article/{{article}}">Edit</a></sec:authorize>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
</div>