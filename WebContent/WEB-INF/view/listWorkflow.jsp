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
			 "bSort": true,
		    "sScrollY": "400px",
		    "oLanguage": {
	            "sEmptyTable":     "No workflows available"
	          }
	      
	      }
      ); 
	/* 	
		$('#example').dataTable({
				  "bSort": false
		});  */
	});
	
	
	</script>
	
	<script>
	
	function deleteWorkFlow(value){
		    var workflowId=value.id;
			document.getElementById('workflowId').value = workflowId;
			document.listForm.action = "./deleteWorkflow";
		   	document.listForm.submit();
	}
	
	function editWorkFlow(value){
		    var workflowId=value.id;
			document.getElementById('workflowId').value = workflowId;
			document.listForm.action = "./editWorkflow";
		   	document.listForm.submit();
	}
	
	
	</script>
</head>

<body class=" theme-blue">

<form name="listForm">
<input type="hidden" value="" name="workflowId" id="workflowId"/>
<%@ include file="/includes/header.jsp"%>
    
  <div class="content">
        <div class="header">
            <h1 class="page-title">List Workflow</h1>
               <ul class="breadcrumb">
                 <li><a href="./dashboard">Home</a> </li>
			     <li><a href="#">Workflow</a> </li>
                 <li class="active">List Workflow</li>
              </ul>
        </div>
     <div class="main-content">  
     
  
     
     
		<table  id="example"  class="display"  >
	      <thead>
            <tr style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
                <th>Workflow Name</th>
                <th>Workflow Description</th>
                <th>Status</th>
                <th>ACTIONS</th>
            </tr>
        </thead>
       <tbody>
       <c:forEach items="${WorkflowMasterList}" var="workflow">
         <tr >
		 <td style="padding-left: 30px;">${workflow.WORKFLOWNAME}</td>
		 <td style="padding-left: 30px;">${workflow.WORKFLOWDESC}</td>
		<c:set var="status" value="${workflow.STATUS}"/> 
		 <td style="padding-left: 10px;">
	<c:choose>
    <c:when test="${ status=='Active'}">
      <span class="label label-success">${workflow.STATUS}</span>
    </c:when>
    <c:otherwise>
        <span class="label label-danger">${workflow.STATUS}</span>
    </c:otherwise>
   </c:choose>	 
    </td>
   <td style="padding-left: 30px;">
	    <a title="edit" id="${workflow.WORKFLOWID}" onclick="editWorkFlow(this);"  href="#"><i class="fa fa-pencil"></i></a>
        <a title="delete" href="#myModal${workflow.WORKFLOWID}" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
   
 <div class="modal small fade" id="myModal${workflow.WORKFLOWID}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
           <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Delete Confirmation</h3>
           </div>
          <div class="modal-body">
            <p class="error-text"><i class="fa fa-warning modal-icon"></i>Are you sure you want to delete the workflow : ${workflow.WORKFLOWNAME} ?  <br>This cannot be undone.</p>
          </div>
            <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cancel</button>
            <button class="btn btn-danger" onclick="deleteWorkFlow(this);" id="${workflow.WORKFLOWID}">Delete</button>
            </div>
          </div>
        </div>
     </div>
    
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
