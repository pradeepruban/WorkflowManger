<%@ page import="com.syntel.isap.workflow.bean.GroupWFBean" %>
<%@ page import="com.syntel.isap.workflow.bean.GroupBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Workflow Manager-List Groups</title>
		<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrapgroup.css">
		<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" href="lib/bootstrap/css/jquery.dataTables.css">
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
		<script src="lib/bootstrap/js/jquery.dataTables.min.js"></script>
		<link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
		<script>
		function morefunction(value){
			document.getElementById("Id").value=value.id;
			document.getElementById("Name").value=value.name;
			document.groupmore.action="./more";
			document.groupmore.submit();
		}
		</script>
	</head>
	<body class=" theme-blue">
		<form name="groupmore">
		<input type="hidden" value="" id="Id" name="Id"/>
		<input type="hidden" value="" id="Name" name="Name">
		
	<%@ include file="/includes/header.jsp"%>	
	  <div class="content">
        <div class="header">
            <h1 class="page-title">List Group</h1>
               <ul class="breadcrumb">
                 <li><a href="./dashboard">Home</a> </li>
                  <li><a href="#">List Group</a> </li>
              </ul>
        </div>
	
			<div class="main-content">
			<div class="row">
				<c:forEach items="${finalGroupWorkflows}" var="group">
					<div class="col-xs-4">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h4 class="text-center">${group.grpBean.groupName}</h4>
							</div>
							<ul class="list-group list-group-flush text-center">
								<c:forEach items="${group.workflowName}" var="workflow"  begin="0" end="2">
								<li class="list-group-item">
									${workflow}
								</li>
								</c:forEach>
								<c:forEach items="${group.workflowName}" var="workflow"  begin="3" end="3">
								<li class="list-group-item">
									<a id="${group.grpBean.idGroups}" name="${group.grpBean.groupName}" href="#" onclick="morefunction(this)">More</a>
								 </li>
								</c:forEach>
							</ul>
						</div>
					</div>
					</c:forEach>
	</div>
		<footer style="padding-top:0px;"> 
      <hr>
        <p style="color:black;float:center;"> © 1998-2014 Syntel, Inc. | all rights reserved</p>
     </footer>	
    </div>		
		
	</div>
	
		</form>	
					
	</body>
</html>
