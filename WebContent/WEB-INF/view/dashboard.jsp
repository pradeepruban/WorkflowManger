<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en"><head>
<meta charset="utf-8">
<title>Workflow Manager-Dashboard</title>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-duallistbox.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
 
	<style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
            color: #fff;
        }
    </style>
 
 
    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
	<script src="lib/bootstrap/js/jquery.bootstrap-duallistbox.js"></script>


</head>
<body class=" theme-blue">
<%@ include file="/includes/header.jsp"%>
	<div class="content">
		<div class="header">
    		<h1 class="page-title">Dashboard</h1>
    	</div>
    	<div class="main-content">
			<div class="row">
				<div style ="padding-left:100px;padding-top: 50px;float:left;">
		    		<h4 style="padding-left:100px;padding-bottom: 20px">Workflow Manager</h4>
					<img src ="images/Cloud-map.png" width="300px">
				</div>
				<div style ="padding-left:100px;padding-top:50px;float:left;">
				    <h4 style="padding-left:100px;padding-bottom: 20px">Workflow Manager</h4>
					<img src ="images/Cloud3.png" width="300px">
				</div>
			</div>  
			<br>
 		</div>
		<footer style="padding-top:240px;"> 
        	<hr>
            <p style="color:black;float:center;"> ©1998-2014 Syntel, Inc. | all rights reserved</p>
    	</footer>
	</div>

</body></html>
