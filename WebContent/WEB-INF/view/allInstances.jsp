<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8">
  <title>Workflow Manager-WebServices-All Instances</title>
  <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
  <link rel="stylesheet" href="lib/bootstrap/css/jquery.dataTables.css">
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
    <script src="lib/bootstrap/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	 $table = $('#example');
	    // DataTable
	    var table = $('#example').DataTable(
		
		{
			 "bSort": true,
		    "sScrollY": "400px",
		    "oLanguage": {
	            "sEmptyTable":     "No Instances available"
	          }
	      
	      }
      ); 
	/* 	
		$('#example').dataTable({
				  "bSort": false
		});  */
	});
	
	
	</script>
	
</head>

<body class=" theme-blue">

<form name="listForm">
<input type="hidden" value="" name="workflowId" id="workflowId"/>
<%@ include file="/includes/header.jsp"%>
    
  <div class="content">
        <div class="header">
            <h1 class="page-title">List Instance</h1>
               <ul class="breadcrumb">
                 <li><a href="./dashboard">Home</a> </li>
			     <li><a href="#">WebServices</a> </li>
                 <li class="active">List Instance</li>
              </ul>
        </div>
     <div class="main-content">  
     
  
     
     
		<table  id="example"  class="display"  >
	      <thead>
            <tr style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
                <th>Name</th>
                <th>Package</th>
                <th>Status</th>
                <th>Started On </th>
                <th>Last Active Date </th>
            </tr>
        </thead>
       <tbody>
       <c:forEach items="${instanceList}" var="instance">
         <tr >
		 <td >${instance.processName}</td>
		   <td >${instance.processPackage}</td>
	<%-- 	 <td >${instance.status}</td> --%>
		 <c:set var="status" value="${instance.status}"/> 
		 <td style="padding-left: 10px;">
	<c:choose>
    <c:when test="${ status=='COMPLETED'}">
      <span class="label label-info">${instance.status}</span>
    </c:when>
       <c:when test="${ status=='ACTIVE'}">
      <span class="label label-success">${instance.status}</span>
    </c:when>
   
       <c:when test="${ status=='TERMINATED'}">
      <span class="label label-warning">${instance.status}</span>
    </c:when>
    <c:otherwise>
        <span class="label label-danger">${instance.status}</span>
    </c:otherwise>
   </c:choose>	 
    </td>
	
	
	
		  <td >${instance.dtStarted}</td>
		   <td>${instance.dtLastActive}</td>
		   
 </tr>
	</c:forEach>
   </tbody>
 </table>
     <footer style="padding-top:80px;"> 
      <hr>
        <p style="color:black;float:center;"> © 1998-2014 Syntel, Inc. | all rights reserved</p>
     </footer>
  </div>
</div>
</form>


</body>
</html>
