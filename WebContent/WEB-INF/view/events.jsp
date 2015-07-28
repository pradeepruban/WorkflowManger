<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8">
  <title>Workflow Manager-Event Status</title>
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
	
	$(document).ready(function () {
		  InitOverviewDataTable();
		  setTimeout(function(){AutoReload();}, 3000);
		  InitOverviewDataTable2();
		  setTimeout(function(){AutoReload2();}, 3000);
		});
	
	function RefreshTable(tableId, urlData)
	{
	  $.getJSON(urlData, null, function( json )
	  {
		 
	    table = $(tableId).dataTable();
	    oSettings = table.fnSettings();
	    
	    table.fnClearTable(this);

	    for (var i=0; i<json.aaData.length; i++)
	    {
	      table.oApi._fnAddData(oSettings, json.aaData[i]);
	    }

	    oSettings.aiDisplay = oSettings.aiDisplayMaster.slice();
	    table.fnDraw();
	  });
	}
	
	/* Refresh First Table */
	
	function InitOverviewDataTable()
	{
	  oOverviewTable =$('#example').dataTable(
	  {
	    "bPaginate": false,
	    "bJQueryUI": true,  // ThemeRoller-stöd
	    "bLengthChange": false,
	    "scrollY": "475px",
	    "bFilter": true,
	    "bSort": true,
	    "bInfo": true,
	    "bAutoWidth": false,
	    "bProcessing": false,
	    "iDisplayLength": 10,
	    "sAjaxSource": './eventsList2' , 
	    "oLanguage": {
            "sEmptyTable":     "There is no Event in Progress"
        },
	    	"aoColumns": [
				{ "data": "eventsummary" },
				{ "data": "status" }    
	  ],
	  
	  "aoColumnDefs": [ {
	        "aTargets": [ 1 ],
	        "mData": "status",
	        "mRender": function ( data, type, full ) {
	          return '<img src="images/loading.gif" width="20" height="20" aling ="center"/>'+' ' +'InPorgress...';
	        }
	      } ]
	  
	  
	     });
	
	}
	
	function AutoReload()
	{
		
	  RefreshTable('#example', './eventsList2');

	  setTimeout(function(){AutoReload();}, 3000);
	}
	
	
	/****** Second */
	
	function RefreshTable2(tableId, urlData)
	{
	  $.getJSON(urlData, null, function( json )
	  {
		 
	    table = $(tableId).dataTable();
	    oSettings = table.fnSettings();
	    
	    table.fnClearTable(this);

	    for (var i=0; i<json.aaData.length; i++)
	    {
	      table.oApi._fnAddData(oSettings, json.aaData[i]);
	    }

	    oSettings.aiDisplay = oSettings.aiDisplayMaster.slice();
	    table.fnDraw();
	  });
	}
	
	/* Refresh First Table */
	
	function InitOverviewDataTable2()
	{
	  oOverviewTable =$('#example2').dataTable(
	  {
	    "bPaginate": false,
	    "bJQueryUI": true,  // ThemeRoller-stöd
	    "scrollY": "475px",
	    "bLengthChange": false,
	    "bFilter": true,
	    "bSort": true,
	    "bInfo": true,
	    "bAutoWidth": false,
	    "bProcessing": false,
	    "iDisplayLength": 10,
	    "sAjaxSource": './eventsList3' , 
	    "oLanguage": {
            "sEmptyTable":     "Event in Progress"
        },
        
        
     
        
	    
	    	"aoColumns": [
				{ "data": "eventsummary" },
				{ "data": "status" } ,  
				{ "data": "DATETIMETRIGGERED" }  
	  ],
	  
	  
	  "aoColumnDefs": [ {
	        "aTargets": [ 1 ],
	        "mData": "status",
	        "mRender": function ( data, type, full ) {
	          return '<img src="images/Completed12.png" width="20" height="20" aling ="center">'+'  '+'Completed!';
	        }
	      } ]
	  
	  
	  
	     });
	
	}
	function AutoReload2()
	{
		
	  RefreshTable('#example2', './eventsList3');

	  setTimeout(function(){AutoReload2();}, 3000);
	}
	</script>
	
</head>

<body class=" theme-blue">

<form name="listForm">
<input type="hidden" value="" name="workflowId" id="workflowId"/>
<%@ include file="/includes/header.jsp"%>
   
  <div class="content">
        <div class="header">
            <h1 class="page-title">Event Status</h1>
               <ul class="breadcrumb">
                 <li><a href="./dashboard">Home</a> </li>
			     <li><a href="#">Events</a> </li>   
              </ul>
        </div>

<div class="main-content">	 
        
		 <div class="row">
         <div class="col-xs-6">
<!-- 		<div class="page-header"> -->
                 <h3>Current Events</h3>
               <!-- </div> -->
               
             <!--   First table desing -->
	<table  id="example"  class="display ">
        <thead>
         <tr style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
				 <th>WORKFLOW NAME</th>
				<th>STATUS</th>
				
            </tr>
		</thead>
        <tbody>
        	
        </tbody>
    </table>
      </div>
	  
	  
	       <div class="col-xs-6">
		   
		 <!--   <div class="page-header"> -->
                 <h3>Historical Events</h3>
             <!--   </div> -->
		<!-- Second table desing -->
	<table  id="example2"  class="display">
        <thead>
     <tr style="background: -moz-linear-gradient(center bottom , rgba(172, 185, 212, 1) 0%, #6F80A1 100%) repeat scroll 0% 0% transparent;">
               <th>WORKFLOW NAME</th>
				<th>STATUS</th>
				<th>TIMESTAMP</th>
				
            </tr>
		</thead>
		
        <tbody>
        	
        </tbody>
    </table>
      </div>
	  
	  </div>
   
 <!--   Foooter desing -->
   
   
        <footer style="padding-top:0px;"> 
                <hr>
                <p style="color:black;float:center;"> ©1998-2014 Syntel, Inc. | all rights reserved</p>
            </footer>
        </div>
    </div>

</form>
</body>
</html>
