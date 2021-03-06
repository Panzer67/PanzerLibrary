<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="btn-group" role="group">            
            <button class="btn btn-default navbar-btn" ng-disabled="{{searchCtrl.searchResults.books.length == 0}}" ng-click="form = 1" >({{searchCtrl.searchResults.books.length}}) Books</button>
            <button class="btn btn-default navbar-btn" ng-disabled="{{searchCtrl.searchResults.articles.length == 0}}" ng-click="form = 2" >({{searchCtrl.searchResults.articles.length}}) Articles</button>
            <button class="btn btn-default navbar-btn" ng-disabled="{{searchCtrl.searchResults.papers.length == 0}}" ng-click="form = 3" >({{searchCtrl.searchResults.papers.length}}) Papers</button>
            <button class="btn btn-default navbar-btn" ng-disabled="true" ng-click="form = 4" >() Documents</button>
            <button class="btn btn-default navbar-btn" ng-disabled="true" ng-click="form = 5" >() Journals</button>
            <button class="btn btn-default navbar-btn" ng-disabled="{{searchCtrl.searchResults.authors.length == 0}}" ng-click="form = 6" >({{searchCtrl.searchResults.authors.length}}) Authors</button>
        </div>
    </div>
    <div ng-show="form == 1" class="col-md-8 col-md-offset-2">
        <div ng-show="searchCtrl.searchResults.books">
            <div class="panel-heading"><h3>Books</h3></div>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" ng-repeat="book in searchCtrl.searchResults.books| orderBy:'title'">
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
                                    <td align="justify">
                                        {{book.abstractText}}
                                    </td>
                                    <td>
                                        <a ng-if="book.pdflink" target="_blank" href="{{libCtrl.baseUrl}}/pdfs/books/{{book.pdflink}}">pdf</a>
                                    </td>
                                </tr>
                            </table> 
                            <sec:authorize access="hasRole('ADMIN')"><a href="{{libCtrl.bookUrl}}/{{book.id}}">Edit</a></sec:authorize>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <div ng-show="form == 2" class="col-md-8 col-md-offset-2">
            <div ng-show="searchCtrl.searchResults.articles">
                <div class="panel-heading"><h3>Articles</h3></div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" ng-repeat="article in searchCtrl.searchResults.articles| orderBy:'title'">
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
                                        <td align="justify">
                                            {{article.abstractText}}
                                        </td>
                                        <td>
                                            <a ng-if="article.pdflink" target="_blank" href="{{libCtrl.baseUrl}}/pdfs/articles/{{article.pdflink}}">pdf</a>
                                        </td>
                                    </tr>
                                </table> 
                            <sec:authorize access="hasRole('ADMIN')"><a href="{{libCtrl.articleUrl}}/{{article.id}}">Edit</a></sec:authorize>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <div ng-show="form == 3" class="col-md-8 col-md-offset-2">
            <div ng-show="searchCtrl.searchResults.papers">
                <div class="panel-heading"><h3>Papers</h3></div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" ng-repeat="paper in searchCtrl.searchResults.papers| orderBy:'title'">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                {{$index + 1}}.&nbsp;
                                <a role="button" data-toggle="collapse" data-parent="#accordion" onclick="return false;" href="#paperresult{{$index + 1}}" aria-expanded="true" aria-controls="collapseOne">
                                    {{paper.title}}
                                </a>
                            </h4>
                        </div>
                        <div id="paperresult{{$index + 1}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <table class="table table-bordered table-hover">
                                    <tr>                                                
                                        <td>
                                            Author(s)
                                        </td> 
                                        <td>
                                            Institute
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
                                            <div ng-repeat="author in paper.authors">
                                                {{author.author_firstname}} {{author.author_lastname}}
                                            </div>

                                        </td>     
                                        <td>
                                            {{paper.institute}}
                                        </td>                                        
                                        <td>
                                            {{paper.year}}
                                        </td>
                                        <td>
                                            {{paper.pages}}
                                        </td>
                                        <td align="justify">
                                            {{paper.abstractText}}
                                        </td>
                                        <td>
                                            <a ng-if="paper.pdflink" target="_blank" href="{{libCtrl.baseUrl}}/pdfs/papers/{{paper.pdflink}}">pdf</a>
                                        </td>
                                    </tr>
                                </table> 
                            <sec:authorize access="hasRole('ADMIN')"><a href="{{libCtrl.paperUrl}}/{{paper.id}}">Edit</a></sec:authorize>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <div ng-show="form == 6" class="col-md-8 col-md-offset-2">
            <div ng-show="searchCtrl.searchResults.authors">
                <div class="panel-heading"><h3>Authors</h3></div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" ng-repeat="author in searchCtrl.searchResults.authors">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                {{$index + 1}}.&nbsp;
                                <a role="button" data-toggle="collapse" data-parent="#accordion" onclick="return false;" href="#authorresult{{$index + 1}}" aria-expanded="true" aria-controls="collapseOne">
                                    {{author.author_firstname }} {{author.author_lastname}}
                                </a>
                            </h4>
                        </div>
                        <div id="authorresult{{$index + 1}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <table class="table table-bordered table-hover">
                                    <tr>                                                
                                        <td>
                                            Books
                                        </td> 
                                        <td>
                                            Articles
                                        </td>                                        
                                        <td>
                                            Papers
                                        </td>                                        
                                    </tr>
                                    <tr> 
                                        <td>
                                            {{author.books.length}}
                                        </td>                                        
                                        <td>
                                            {{author.articles.length}}
                                        </td>
                                        <td>
                                            {{author.papers.length}}
                                        </td>                                        
                                    </tr>
                                </table> 
                            <sec:authorize access="hasRole('ADMIN')"><a href="{{libCtrl.authorUrl}}/{{author.id}}">Edit</a></sec:authorize>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
</div>