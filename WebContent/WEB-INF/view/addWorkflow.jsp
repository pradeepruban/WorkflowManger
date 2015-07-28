<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
   <title>Workflow Manager-Add Workflow</title>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-duallistbox.css">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-tagsinput.css">
   <style type="text/css">
	.bootstrap-tagsinput { width: 100%; }
	
     #line-chart {
        height:300px;
        width:800px;
        margin: 0px auto;
        margin-top: 1em;
      }
    .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
       color: #fff;
      }
	#WORKFLOWDESC{ 
	min-width: 318px;
	max-width: 318px;
	min-height: 50px;
	max-height: 50px;
	}
	
	#attributeList{ 
	min-width: 318px;
	max-width: 318px;
	
	}
	
</style>
    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
	<script src="lib/bootstrap/js/jquery.bootstrap-duallistbox.js"></script>
	<script src="lib/bootstrap/js/bootstrap-tagsinput.js"></script>

<script type="text/javascript">
function addData()
{
var name=$( "#attributeName" ).val( );
var value=$( "#defaultValue" ).val( );
var defaultCheck= $( "#defaultCheck" ).is(':checked');
var encryptCheck= $( "#encryptCheck" ).is(':checked');

var attributeList=$( "#attributeList" ).val( );

if(name==""||value==""){
alert("Some attribute fields are empty");
return;
}
else{
if(attributeList!="")
$('#attributeList').val( $('#attributeList').val() +'\n');
$('#attributeList').val( $('#attributeList').val() +name+','+value+','+defaultCheck+','+encryptCheck);
$("#attributeName" ).val('');
$("#defaultValue" ).val('');
$("#encryptCheck").attr('checked', false); 
$("#defaultCheck").attr('checked', false); 
}
}


function addWorkflowDetais()
{
	var WORKFLOWDESC=$( "#WORKFLOWDESC" ).val( );
	var WORKFLOWNAME=$( "#WORKFLOWNAME" ).val( );
	var PRIORITY=$( "#PRIORITY" ).val( );
	var selectedHosts=$( "#bootstrap-duallistbox-selected-list_selectedHosts" ).val( );
	if(WORKFLOWNAME==""||WORKFLOWDESC=="" || PRIORITY==null || selectedHosts==null){
	alert("Some fields are empty");
	return;
	}	
	else{
		document.addWorkflow.action="./saveWorkflowDetails";
		document.addWorkflow.submit();
	}

}


</script>
	   
 <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
</head>

<body class="theme-blue">
<form name="addWorkflow" method="POST">
<%@ include file="/includes/header.jsp"%>

   
<div class="content">
        <div class="header">
            
            <h1 class="page-title">Add Workflow</h1>
                    <ul class="breadcrumb">
            <li><a href="./dashboard">Home</a> </li>
			<li><a href="#">Workflow</a> </li>
            <li class="active">Add Workflow</li>
        </ul>

        </div>
     <div class="main-content">
	  <div class="row">
     <div class="col-xs-4">
       <label class="control-label" for="field1">Workflow Name</label>
          <input type="text" id="WORKFLOWNAME" name="WORKFLOWNAME" class="form-control" placeholder=" ">
      </div>
     <div class="col-xs-4">
        <label class="control-label" for="field1">Workflow Description</label>
          <textarea style="" name="WORKFLOWDESC" id="WORKFLOWDESC" class="form-control"  ></textarea>
     </div>
   </div>  
 <br>
  <div class="row">
       <div class="col-xs-4">
        <label class="control-label" for="field1">Priority</label>
          <select class="form-control" name="PRIORITY" id="PRIORITY"> 
                  <option>Select </option>
                  <option value="Critical">Critical</option>
                  <option value="High">High</option>
                  <option value="Medium">Medium</option>
                  <option value="Low">Low</option>
          </select>
     </div>
     
       <div class="col-xs-4">
      
	   
	    <label class="control-label" for="field1">Status</label> 
           <br>
             <label class="radio-inline">
              <input type="radio" name="STATUS"  value="Active"  checked="checked"/> Active 
            </label>
            <label class="radio-inline">
                <input type="radio" name="STATUS" value="Inactive" /> Inactive
            </label>   
     </div>
     
  </div>  
 <br>
    <div class="row">
     <div class="col-xs-4">
      <label class="control-label" for="field1">Attribute Name</label>
          <input class="form-control" id="attributeName" name="attributeName"  type="text" placeholder=" " />
      </div>
      
        <div class="col-xs-4">
      <label class="control-label" for="field1">Default Value </label>
          <input class="form-control" id="defaultValue" name="defaultValue"  type="text" placeholder=" " />
      </div>
      
      
         <div class="col-xs-2">
      <label class="control-label" for="field1">  
      <input type="checkbox"  id="defaultCheck"  name="defaultCheck"> 
      </label>
      <br>
      Use Default Value
      </div>
      
          <div class="col-xs-1">
      <label class="control-label" for="field1">  
      <input type="checkbox" id="encryptCheck" name="encryptCheck"> 
      </label>
      <br>
      Encrypt
      </div>
      
          <div class="col-xs-1">
       <button type="button" onclick="addData();" class="btn btn-success btn-add">+Add</button>
      </div>  
   </div>  
 <br>  
 
 <div class="row">
  <div class="col-xs-4">
        <label class="control-label" for="field1">Selected Attribute List</label>
          <textarea readonly name="attributeList" id="attributeList" class="form-control"  ></textarea>
     </div>
 
 </div>
 <br> 
     <div class="control-group" id="fields">
        <div class="controls"> 
           <div class="entry input-group col-xs-8">
             <select multiple="multiple" size="5" name="selectedHosts" id="selectedHosts" class="demo2">
             
         <c:forEach items="${hostList}" var="host">
		 <option value="${host.HOSTID}">${host.IPADDRESS}</option>
		</c:forEach>

          </select>
      <script>
        var demo2 = $('.demo2').bootstrapDualListbox({
          nonSelectedListLabel: 'Available Hosts',
          selectedListLabel: 'Selected Hosts',
          preserveSelectionOnMove: 'moved',
          moveOnSelect: false
        });
      </script>
     </div>  
   </div>
  <br>
    <div>
       <button type="button" class="btn btn-primary" onclick="addWorkflowDetais();">Add Workflow</button>
       <button type="button"  class="btn btn-default" data-dismiss="modal">Cancel</button>
    </div>
  </div>
 </div>
 </div>
</form>


   <hr>
 <%--   <center> --%>
      <p style="color:black;float:center;"> ©1998-2014 Syntel, Inc. | all rights reserved</p>
<%--     </center> --%>

</body></html>
