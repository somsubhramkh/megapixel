<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script src="https://use.fontawesome.com/034feea29c.js"></script>
        <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
        <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
        </head>
    
<body>
      
            <div class="navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="<c:url value='/' />"><img src="<c:url value='/resources/img/megapixel-logo.png'/>" class="img-rounded" height="40px"></a>
                    </div>
                    <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="<c:url value='/' />">Home</a>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown"> Products <span class="fa fa-caret-down"></span></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="<c:url value='/Products/Camera' />">Camera</a>
                                    </li>
                                    <li>
                                        <a href="<c:url value='/Products/Lens' />">Lens</a>
                                    </li>
                                    <li>
                                        <a href="<c:url value='/Products/Accessories' />">Accessories</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Contact Us</a>
                            </li>
                            <li>
                                <a href="#">About Us</a>
                            </li>
                        </ul>
                        
                         <sec:authorize access="hasRole('ADMIN')">
                        <ul class="nav navbar-nav navbar-right">
                        
                            <li>
                                <a href="">Welcome <b><sec:authentication property="principal.username"/></b></a>
                            </li>
                        	
                            <li>
                                <a href="<c:url value='/ProductAdmin' />">Product Admin</a>
                            </li>
                            <li>
                                <a href="<c:url value='/logout' />">Sign Out</a>
                            </li>
                           
                        </ul>
                        </sec:authorize>
                        
                        
                         <sec:authorize access="hasRole('USER')">
                        <ul class="nav navbar-nav navbar-right">
                        	<li>
                                <a href="">Welcome <b><sec:authentication property="principal.username"/></b></a>
                            </li>
                        	<li>
                                <a href="<c:url value='/ShowCart' />"><i class="fa fa-2x fa-shopping-cart" aria-hidden="true"></i></a>
                            </li>
                            <li>
                                <a href="<c:url value='/logout' />">Sign Out</a>
                            </li>
                           
                        </ul>
                        </sec:authorize>
                        
                        <sec:authorize access="isAnonymous()">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="<c:url value='/Login' />">Sign In</a>
                            </li>
                            <li>
                                <a href="<c:url value='/Register' />">Register</a>
                            </li>
                        </ul>
                        </sec:authorize>
                    </div>
                </div>
            </div>
