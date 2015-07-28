<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Workflow Manager-Add Group</title>
		<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-duallistbox.css">
	 
		<script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
		<script src="lib/bootstrap/js/bootstrap.js"></script>
		<script src="lib/bootstrap/js/jquery.bootstrap-duallistbox.js"></script>
		<link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
		<script>
			function addgrp(){
				document.addgroup.action="./saveGroup";
				document.addgroup.submit();
			}
		</script>
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
	</head>
	<body class=" theme-blue">
		<form name="addgroup" method="POST">
			<%@ include file="/includes/header.jsp"%>
			<div class="content">
				<div class="header">
					<h1 class="page-title">Add Group
					</h1>
					<ul class="breadcrumb">
						<li>
							<a href="./dashboard">Home
							</a>
						</li>
						<li>
							<a href="#">Group
							</a>
						</li>
						<li class="active">Add Group
						</li>
					</ul>
				</div>
				<div class="main-content">
					<div class="row">
						<div class="col-xs-4">
							<label class="control-label" for="field1">Group Name
							</label>
							<input type="text" name="groupName" class="form-control" placeholder=" ">
						</div>
						<div class="col-xs-4">
							<label class="control-label" for="field1">Group Description
							</label>
							<input type="text" name="groupDescription" class="form-control" placeholder=" ">
						</div>
					</div>
							
      <div class="row">
          <div class="col-xs-4"></div>
       </div>
      <br> 
     <div class="control-group" id="fields">
        <div class="controls"> 
           <div class="entry input-group col-xs-8">
             <select multiple="multiple" size="5" name="selectedWorkflows" class="demo2">
				<c:forEach items="${workflownameslist}" var="wfnlist">
					<option value="${wfnlist.WORKFLOWID}">${wfnlist.WORKFLOWNAME}</option>
				</c:forEach>
		</select>
      <script>
        var demo2 = $('.demo2').bootstrapDualListbox({
          nonSelectedListLabel: 'Available Workflows',
          selectedListLabel: 'Selected Workflows',
          preserveSelectionOnMove: 'moved',
          moveOnSelect: false
        });
      </script>
     </div>  
   </div>
  <br>
    <div>
     <button type="button" class="btn btn-primary" onclick="addgrp();">Add Group</button>
	  <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
    </div>
	</div>
	<footer style="padding-top:240px;"> 
	  <hr>
		<p style="color:black;float:center;"> ©1998-2014 Syntel, Inc. | all rights reserved
		</p>
	</footer>
</div>
</form>
</body>
</html>
