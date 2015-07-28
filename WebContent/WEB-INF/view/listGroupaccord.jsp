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
		<title>Workflow Manager-List Groups by platform</title>
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

	<script>
	
	
	
	function editWorkFlow(value){
		    var workflowId=value.id;
			document.getElementById('workflowId').value = workflowId;
			document.listForm.action = "./editWorkflow";
		   	document.listForm.submit();
	}
	
	
	</script>


		
		<script type="text/javascript">
			$(document).ready(function() {
				try{
					 $('#wintel').dataTable({
						  "bSort": false,
						   "sScrollY": "200px"
					});

				}catch(e){
					alert("Error Occured @ Wintel" + e);
				}
				

				try{
					 $('#middleware').dataTable({
						  "bSort": false,
						   "sScrollY": "200px"
				});
				}catch(e){
					alert("Error Occured @ middleware" + e);
				}


				try{
					 $('#database').dataTable({
						  "bSort": false,
						   "sScrollY": "200px"
				});
				}catch(e){
					alert("Error Occured @ database" + e);
				}
				

				try{
					 $('#unix').dataTable({
							  "bSort": false,
							   "sScrollY": "200px"
					});
				}catch(e){
					alert("Error Occured @ unix" + e);
				}

				try{
					 $('#vmware').dataTable({
						  "bSort": false,
						   "sScrollY": "200px"
				});
				}catch(e){
					alert("Error Occured @ vmware" + e);
				}		
				
				/* $('#collapseFive').each(function(){
				    if ($(this).hasClass('in')) {
				        $(this).collapse('toggle');
				    }
				});	 */
				
				$('#collapseFive').collapse('hide');
				
				$('#collapseFour').collapse('hide');
				
				$('#collapseThree').collapse('hide');
				$('#collapseTwo').collapse('hide');
				$('#collapseOne').collapse('hide');
			});
		</script>
<!-- 		
	<script type="text/javascript">
	$(document).ready(function() {
		 $('#middleware').dataTable({
				  "bSort": false,
				   "sScrollY": "200px"
		});
		 
	});
	</script> -->
	
<!-- 		<script type="text/javascript">
	$(document).ready(function() {
		 
		 
		 $('#database').dataTable({
				  "bSort": false,
				   "sScrollY": "200px"
		});
		 
	});
	</script>
	 -->
	
	
<!-- 		<script type="text/javascript">
	$(document).ready(function() {
		 
		 
		 $('#unix').dataTable({
				  "bSort": false,
				   "sScrollY": "200px"
		});
		 
	});
	</script>
	 -->
	
	
<!-- 		<script type="text/javascript">
	$(document).ready(function() {
		 
		 
		 $('#vmware').dataTable({
				  "bSort": false,
				   "sScrollY": "200px"
		});
		 
	});
	</script> -->
	
		
	</head>
	<body class=" theme-blue">
	
	
		<form name="listForm">
		<input type="hidden" value="" id="Id" name="Id"/>
		<input type="hidden" value="" id="Name" name="Name">
		
		<input type="hidden" value="" name="workflowId" id="workflowId"/>
		
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
			
			
			
		 
    <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
      			${wintel.grpBean.groupName}
        </a>
      </h4>
    </div>
    <div id="collapseFive" class="panel-collapse collapse in ">
      <div class="panel-body">
	  	 <table  id="wintel"  class="display">
	  	 	<thead>
             <tr  style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
				<th style="width: 100%">Workflow Name  </th>
            </tr>
            </thead>
       <tbody>
         <c:forEach items="${wintel.workflow}" var="wintellist">
         <tr >
		 <td  style="padding-left: 30px;"><a href="#" id="${wintellist.WORKFLOWID}" onclick="editWorkFlow(this);"> ${wintellist.WORKFLOWNAME}</a> </td>
	</tr>
</c:forEach>
   </tbody>
    </table>
      </div>
    </div>
  </div>
		
			
		
		
			 
    <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
      ${unix.grpBean.groupName}
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse in ">
      <div class="panel-body">
	  	 <table  id="unix"  class="display" style="margin-left: 0px; width: 815px; " >
	      <thead>
             <tr  style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
				<th style="width: 779px;">Workflow Name  </th>
			
            </tr>
        </thead>
       <tbody>
       
         <c:forEach items="${unix.workflow}" var="unix">
         <tr >
		 <td style="padding-left: 30px;"><a href="#" id="${unix.WORKFLOWID}" onclick="editWorkFlow(this);"> ${unix.WORKFLOWNAME}</a></td>
	</tr>
</c:forEach>
   </tbody>
    </table>
      </div>
    </div>
  </div>	
			
		
		
				 
    <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
      ${middleware.grpBean.groupName}
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse in ">
      <div class="panel-body">

	  
	  	 <table  id="database"  class="display" style="margin-left: 0px; width: 815px; " >
	      <thead>
             <tr  style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
				<th style="width: 779px;">Workflow Name  </th>
			
            </tr>
        </thead>
       <tbody>
       
         <c:forEach items="${middleware.workflow}" var="md">
         <tr >
		 <td style="padding-left: 30px;"><a href="#" id="${md.WORKFLOWID}" onclick="editWorkFlow(this);"> ${md.WORKFLOWNAME}</a></td>
	</tr>
</c:forEach>
   </tbody>
    </table>
      </div>
    </div>
  </div>		
			
		
		
					 
    <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
      ${database.grpBean.groupName}
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse in ">
      <div class="panel-body">

	  
	  	 <table  id="middleware"  class="display" style="margin-left: 0px; width: 815px; " >
	      <thead>
             <tr  style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
				<th style="width: 779px;">Workflow Name  </th>
			
            </tr>
        </thead>
       <tbody>
       
         <c:forEach items="${database.workflow}" var="db">
         <tr >
		 <td style="padding-left: 30px;"><a href="#" id="${db.WORKFLOWID}" onclick="editWorkFlow(this);"> ${db.WORKFLOWNAME}</a></td>
	</tr>
</c:forEach>
   </tbody>
    </table>
      </div>
    </div>
  </div>	
  
  
      <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
      ${vmware.grpBean.groupName}
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in ">
      <div class="panel-body">

	  
	  	 <table  id="vmware"  class="display" style="margin-left: 0px; width: 815px; " >
	      <thead>
             <tr  style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
				<th style="width: 779px;">Workflow Name  </th>
			
            </tr>
        </thead>
       <tbody>
       
         <c:forEach items="${vmware.workflow}" var="vm">
         <tr >
		 <td style="padding-left: 30px;"><a href="#" id="${vm.WORKFLOWID}" onclick="editWorkFlow(this);"> ${vm.WORKFLOWNAME}</a></td>
	</tr>
</c:forEach>
   </tbody>
    </table>
      </div>
    </div>
  </div>		
				
			
			
			
			<%-- 
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
	</div> --%>
		<footer style="padding-top:0px;"> 
      <hr>
        <p style="color:black;float:center;"> © 1998-2014 Syntel, Inc. | all rights reserved</p>
     </footer>	
    </div>		
		
	</div>
	
		</form>	
					
	</body>
</html>
