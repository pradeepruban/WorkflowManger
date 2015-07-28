<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Workflow Manager-Events</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/jquery.dataTables.css">
<style type="text/css">
    body{padding-top: 70px;}
    h1 {background-color:#FFFFFF; 
    font-family:Verdana;
    font-size:18px;
    font-weight:bold; 
    color:#0099FF;
    text-align:center;
  }
  .bs-example{margin: 20px;}
   #footer {background-color: #2C2929;}
   .container .credit {margin: 20px 0 20px 1px;}
   .muted {color: #999;align:center;}
</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript">

  $(document).ready(function() {
    $('#example').dataTable({
				"bSort": false ,
				"oLanguage": {
				    "sSearch": "  Search With Workflow: "
				}
    	});
     
    $('#example1').dataTable({
				"bSort": false ,
				"oLanguage": {
				    "sSearch": "  Search With Workflow: "
				}
          });
    });

</script>
</head>
<body>

 <!-- Header Start -->
   <nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		<img alt="" src="images/home.png" width="30" height="30" style="margin:11px 15px 0px -16px ;">
		
		</div>
		<a class="navbar-brand" href="addWorkflow.jsp"><span style="color:#73A4C9; font-size: 21px;"><b>Workflow Manager</b></span></a>
			
	<!-- 	<a class="navbar-brand" href="index.jsp">Workflow Manager</a>
		</div> -->
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav ">
			  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Workflow <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a  href="addWorkflow.jsp">Add Workflow</a></li>
		                 <li><a  href="addGroup.jsp">Add Group</a></li>
		                 <li><a  href="listWorkflow.jsp">Workflow List</a></li>
		                 <li><a  href="listGroup.jsp">List Group</a></li>
                   </ul>
             </li>
             <li><a class="active" href="events.jsp">Events</a></li>
             <li><a href="services.jsp">Services</a></li>
	         </ul>
	         
			 <ul class="nav navbar-nav navbar-right">
			   <li><a href="#">Welcome User</a></li>
               <li><a href="index.jsp">Logout</a></li>
            </ul>	
		</div>
	</div>
</nav>
  <!-- Header End -->
  
<div class="container">

<div style ="width:1200px">
	   <div style="float: left; width: 600px; ">
	   <table  width="100%">
		<tr>
			<td>
				<div style="padding-left: 120px;" class="page-header">
                 <h3>Current Events</h3>
               </div>
			</td>
		</tr>
		<tr>
	</table>
     <table  id="example1"  class="display" 
      style="border:#ccc 1px solid;-moz-border-radius:3px;
      -webkit-border-radius:3px;border-radius:3px;
      moz-box-shadow: 0 1px 2px #d1d1d1;
      webkit-box-shadow: 0 1px 2px #d1d1d1;
      box-shadow: 0 1px 2px #d1d1d1;"  width="70%" >
		<thead>
        	<tr style="background-color: #AAD4FF;text-align:center; ">
				<th>Workflow Name</th>
				<th>Status</th>
				
            </tr>
		</thead>
        <tbody>
        	<tr>
            	<td>Temderflow</td>
                <td>inprogres</td>
                
            </tr>
            <tr>
            	<td>Humanakflow</td>
                <td>inprogres</td>
              
            </tr>
            <tr>
            	<td>Americaflow</td>
                <td>inprogres</td>
                
            </tr>
            <tr>
            	<td>Logicflow</td>
                <td>inprogres</td>
            </tr>
            <tr>
            	<td>Ciscokflow</td>
                <td>inprogres</td>
            </tr>
            <tr>
            	<td>Temderflow</td>
                
                <td>inprogress</td>
                
            </tr>
            <tr>
            	<td>Humanakflow</td>
               
                <td>inprogress</td>
                
            </tr>
            <tr>
            	<td>Americaflow</td>
               
                <td>inprogress</td>
                
            </tr>
            <tr>
            	<td>Logicflow</td>
               
                <td>inprogress</td>
              
            </tr>
            <tr>
            	<td>Ciscokflow</td>
            
                <td>inprogress</td>
              
            </tr>
            <tr>
            	<td>Temderflow</td>
               
                <td>inprogress</td>
            </tr>
            <tr>
            	<td>Humanakflow</td>
               <td>inprogress</td>
            </tr>
            <tr>
            	<td>Americaflow</td>
                <td>inprogress</td>
            </tr>
            <tr>
            	<td>Americaflow</td>
                <td>inprogress</td>
            </tr>
            <tr>
            	<td>Americaflow</td>
                <td>inprogress</td>
            </tr>
            <tr>
            	<td>Temderflow</td>
             <td>inprogress</td>
            </tr>
            <tr>
            	<td>Humanakflow</td>
           <td>inprogress</td>
            </tr>
            <tr>
            	<td>Americaflow</td>
           <td>inprogress</td>
            </tr>
            <tr>
            	<td>Logicflow</td>
              <td>inprogress</td>
            </tr>
            <tr>
            	<td>Ciscokflow</td>
              <td>inprogress</td>
            </tr>
        </tbody>
	</table>
  </div>
  
	<div style="float: left; width: 600px;">
     <table  width="100%">
		<tr>
			<td>
			
				<div style="padding-left: 120px;" class="page-header">
                 <h3>Historical Events</h3>
               </div>
			</td>
		</tr>
		<tr>
	</table>
    <table  id="example"  class="display" 
    style="border:#ccc 1px solid;-moz-border-radius:3px;
    -webkit-border-radius:3px;border-radius:3px;
     moz-box-shadow: 0 1px 2px #d1d1d1;
     webkit-box-shadow: 0 1px 2px #d1d1d1;
     box-shadow: 0 1px 2px #d1d1d1;"  width="80%" >
		<thead>
        	<tr style="background-color: #AAD4FF;text-align: left;">
				<th>Workflowname</th>
				<th>TimeStamp</th>
				<th>Status</th>
				<th>Createdby</th>
            </tr>
		</thead>
        <tbody>
        	<tr>
            	<td>Temderflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Humanakflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Americaflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>Dellas</td>
            </tr>
            <tr>
            	<td>Logicflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Ciscokflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Temderflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Humanakflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Americaflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>Dellas</td>
            </tr>
            <tr>
            	<td>Logicflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Ciscokflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Temderflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Humanakflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Americaflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>Dellas</td>
            </tr>
            <tr>
            	<td>Logicflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
            <tr>
            	<td>Ciscokflow</td>
                <td>02.06.2010</td>
                <td>completed</td>
                <td>cisco</td>
            </tr>
        </tbody>
	</table>
	</div>
   <br><br><br><br><br>
</div>	
	</div>
<!-- Container End -->
<br><hr>

<!-- footer Start -->
<div id="footer">
  <div class="container">
    <div class="muted credit" >
     ©1998-2014 Syntel, Inc. | all rights reserved
      <div style="float:right"><img src="images/logo.png" height="25px;" /></div>
    </div>
   </div>
  </div>
<!--  Footer End -->
 
