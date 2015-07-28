<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8">
  <title>Workflow Manager-List Workflow</title>
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
			     "sScrollY": "400px",
		        "fnDrawCallback": function() {
		        $table.dataTable()._fnScrollDraw();        
		        $table.closest(".dataTables_scrollBody").height(400); 
		   }  
		} 
			
	);
	});
	</script>
</head>

<body class=" theme-blue">
  <%@ include file="/includes/header.jsp"%>
  <div class="content">
        <div class="header">
            <h1 class="page-title">Services</h1>
               <ul class="breadcrumb">
                 <li><a href="./dashboard">Home</a> </li>
                 <li class="active">Services</li>
              </ul>
        </div>
     <div class="main-content">  
		<table  id="example"  class="display"  >
	      <thead>
             <tr style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
				<th>SERVICENAME </th>
				<th>SERVICEDESCRIPTION</th>
				<th>DATETIMECREATED</th>
				<th>DATETIMEUPDATED</th>
				<th>DATETIMEDELETED</th>
				<th>STATUS</th>
            </tr>
        </thead>
       <tbody>
       <c:forEach items="${ServiceList}" var="service">
         <tr>
		 <td>${service.SERVICENAME}</td>
		
		  <td>${service.SERVICEDESCRIPTION}</td>
	
		  <td>${service.DATETIMECREATED}</td>
		  
		    <td>${service.DATETIMEUPDATED}</td>
	
		  <td>${service.DATETIMEDELETED}</td>
		  <c:set var="status" value="${service.STATUS}"/> 
		    <td>
		    
		    <c:choose>
    <c:when test="${status=='Active'}">
      <span class="label label-success"> ${service.STATUS}</span>
    </c:when>
    <c:otherwise>
        <span class="label label-danger"> ${service.STATUS}</span>
    </c:otherwise>
   </c:choose>	 
		    
		    
		    
		    
		    
		   </td>
	
		  </tr>
		</c:forEach>
        </tbody>
    </table>
    
     <footer style="padding-top:90px;"> 
      <hr>
        <p style="color:black;float:center;"> © 1998-2014 Syntel, Inc. | all rights reserved</p>
     </footer>
  </div>
</div>
</body>
</html>
