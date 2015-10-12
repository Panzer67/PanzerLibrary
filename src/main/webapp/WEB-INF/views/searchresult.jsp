<div class="row">
    <div class="col-md-8 col-md-offset-2">
hallo
        <div ng-show="homeCtrl.noResults">{{homeCtrl.noResults}}</div>  
        <div class="librarytable" ng-show="homeCtrl.books" >
            <table class="table table-bordered table-hover">

                <tr>
                    <td>
                        No.
                    </td>
                    <td>
                        Title
                    </td>
                    <td >
                        Author(s)
                    </td>
                    <td>
                        Publisher
                    </td>
                    <td>
                        Year
                    </td>
                    <td>
                        ISBN
                    </td>                            
                </tr>
                <tr ng-repeat="book in homeCtrl.books">
                    <td>
                        {{$index + 1}}
                    </td>
                    <td>
                        {{book.title}}
                    </td>
                    <td>
                        <div ng-repeat="author in book.authors">
                            {{author.firstname}} {{author.lastname}}
                        </div>

                    </td>
                    <td>
                        {{book.publisher}}
                    </td>
                    <td>
                        {{book.year}}
                    </td>
                    <td>
                        {{book.isbn}}
                    </td>                            
                </tr>
            </table>
        </div>

    </div>
</div>
