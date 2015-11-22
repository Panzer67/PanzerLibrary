<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="btn-group" role="group">            
            <button class="btn btn-default navbar-btn" ng-disabled="{{searchCtrl.searchResults.books.length == 0}}" ng-click="form = 1" >({{searchCtrl.searchResults.books.length}}) Books</button>
            <button class="btn btn-default navbar-btn" ng-disabled="{{searchCtrl.searchResults.articles.length == 0}}" ng-click="form = 2" >({{searchCtrl.searchResults.articles.length}}) Articles</button>
            <button class="btn btn-default navbar-btn" ng-disabled ng-click="form = 3" >() Papers</button>
            <button class="btn btn-default navbar-btn" ng-disabled ng-click="form = 4" >() Documents</button>
            <button class="btn btn-default navbar-btn" ng-disabled ng-click="form = 5" >() Journals</button>
            <button class="btn btn-default navbar-btn" ng-disabled ng-click="form = 6" >() Authors</button>
        </div>
    </div>
    <div ng-show="form == 1" class="col-md-8 col-md-offset-2">
        <div ng-show="searchCtrl.searchResults.books">
            <div class="panel-heading"><h3>Books</h3></div>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" ng-repeat="book in searchCtrl.searchResults.books | orderBy:'title'">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            {{$index + 1}}.&nbsp;
                            <a role="button" data-toggle="collapse" data-parent="#accordion" onclick="return false;" href="#bookresult{{$index + 1}}" aria-expanded="true" aria-controls="collapseOne">
                                {{book.title}}
                            </a>
                        </h4>
                    </div>
                    <div id="bookresult{{$index + 1}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <table class="table table-bordered table-hover">
                                <tr>                                                
                                    <td>
                                        Author(s)
                                    </td> 
                                    <td>
                                        ISBN
                                    </td>
                                    <td>
                                        Publisher
                                    </td>
                                    <td>
                                        Year
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
                                        <div ng-repeat="author in book.authors">
                                            {{author.author_firstname}} {{author.author_lastname}}
                                        </div>

                                    </td>     
                                    <td>
                                        {{book.isbn}}
                                    </td>
                                    <td>
                                        {{book.publisher}}
                                    </td>
                                    <td>
                                        {{book.year}}
                                    </td>
                                    <td>
                                        {{book.abstractText}}
                                    </td>
                                    <td>
                                        <a ng-if="book.pdflink" target="_blank" href="http://localhost:8080/PanzerLibrary/pdfs/{{book.pdflink}}.pdf">pdf</a>
                                    </td>
                                </tr>
                            </table> 
                            <sec:authorize access="hasRole('ADMIN')"><a href="#/book/{{book}}">Edit</a></sec:authorize>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <div ng-show="form == 2" class="col-md-8 col-md-offset-2">
            <div ng-show="searchCtrl.searchResults.articles">
                <div class="panel-heading"><h3>Articles</h3></div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" ng-repeat="article in searchCtrl.searchResults.articles | orderBy:'title'">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                {{$index + 1}}.&nbsp;
                                <a role="button" data-toggle="collapse" data-parent="#accordion" onclick="return false;" href="#articleresult{{$index + 1}}" aria-expanded="true" aria-controls="collapseOne">
                                    {{article.title}}
                                </a>
                            </h4>
                        </div>
                        <div id="articleresult{{$index + 1}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
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
                                            <a ng-if="article.pdflink" target="_blank" href="http://localhost:8080/PanzerLibrary/pdfs/{{article.pdflink}}.pdf">pdf</a>
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