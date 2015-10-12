<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="stylesheet" href="http://localhost:8080/panzerlibrary/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://localhost:8080/panzerlibrary/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="http://localhost:8080/panzerlibrary/css/style.css">        
        <script src="http://localhost:8080/panzerlibrary/js/jquery.min.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/bootstrap.min.js"></script>    
        <base href="/panzerlibrary/" />
        <title>PanzerLibrary</title>
    </head>
    <body ng-app="PanzerLibrary" ng-controller="libController as libCtrl">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid ">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#/">PanzerLibrary</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <form class="navbar-form navbar-left" name="searchform" role="search" novalidate>
                        <div class="input-group">                            
                            <input type="text" ng-model="searchInput" class="form-control" placeholder="Search" required>
                            <span class="input-group-btn">
                                <button  type="submit" ng-click="libCtrl.search(searchInput)" class="btn btn-default">Search</button>
                            </span>
                        </div>
                    </form>
                    <sec:authorize access="hasRole('ADMIN')">
                        <ul class="nav navbar-nav navbar-left nav-pills">
                            <li><h4 class="navbar-text">Edit forms:</h4></li>
                            <li><div class="btn-group" role="group">
                                    <a href="#/author" class="btn btn-default navbar-btn">Author</a>
                                    <a href="#/book" class="btn btn-default navbar-btn">Book</a>
                                    <a href="#/article" class="btn btn-default navbar-btn">Article</a>
                                    <a href="#/journal" class="btn btn-default navbar-btn">Journal</a>
                                    <a href="" class="btn btn-default navbar-btn">Paper</a>
                                    <a href="" class="btn btn-default navbar-btn">Document</a>
                                    <a href="http://localhost:8080/panzerlibrary/edit/newuser" class="btn btn-default navbar-btn">User</a>
                                </div>
                            </li>
                        </ul>
                    </sec:authorize>
                    <ul class="nav navbar-nav navbar-right">
                        <li><p class="navbar-text navbar-right">Signed in as <sec:authentication property="name" /> | </p></li>
                        <li><a href="<c:url value='/j_spring_security_logout' />"> Logout</a></li>                        
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container-fluid" ng-view>

        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.17/angular-route.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/panzerLibrary.js"></script>        
        <script src="http://localhost:8080/panzerlibrary/js/libController.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/searchController.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/articleController.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/searchFactory.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/editController.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/authorFactory.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/bookFactory.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/articleFactory.js"></script>
        <script src="http://localhost:8080/panzerlibrary/js/journalFactory.js"></script>
    </body>
</html>
