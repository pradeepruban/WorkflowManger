<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8">
  <title>Workflow Manager-WebServices-All Processes</title>
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
	            "sEmptyTable":     "No processes available"
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
            <h1 class="page-title">List Process</h1>
               <ul class="breadcrumb">
                 <li><a href="./dashboard">Home</a> </li>
			     <li><a href="#">WebServices</a> </li>
                 <li class="active">List Process</li>
              </ul>
        </div>
     <div class="main-content">  
     
  
     
     
		<table  id="example"  class="display"  >
	      <thead>
            <tr style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
                <th>Process Name</th>
                <th>Package</th>
                <th>Status</th>
            </tr>
        </thead>
       <tbody>
       <c:forEach items="${processList}" var="process">
         <tr >
		 <td>${process.pid}</td>
		  <td>${process.deploymentInfo.package}</td>
		 
		 <%-- <td>${process.status}</td> --%>
		 
		 <c:set var="status" value="${process.status}"/> 
		 <td style="padding-left: 10px;">
	<c:choose>
    <c:when test="${ status=='ACTIVE'}">
      <span class="label label-success">${process.status}</span>
    </c:when>
     <c:when test="${ status=='RETIRED'}">
      <span class="label label-warning">${process.status}</span>
    </c:when>
    <c:otherwise>
        <span class="label label-danger">${process.status}</span>
    </c:otherwise>
   </c:choose>	 
    </td>
		 
		 
		 

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
