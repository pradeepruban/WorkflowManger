<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Workflow Manager-Workflow List</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/jquery.dataTables.css">
<style type="text/css">
    body{padding-top: 70px;}
   .bs-example{margin: 20px;}
    #footer { background-color: #2C2929;}
    .container .credit {margin: 20px 0 20px 1px;}
    .muted {color: #999;align:center;}
</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#example').dataTable({
			  "bSort": false
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
		                 <li><a class="active" href="listWorkflow.jsp">Workflow List</a></li>
		                 <li><a  href="listGroup.jsp">List Group</a></li>
                   </ul>
             </li>
             <li><a href="events.jsp">Events</a></li>
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

<!--  Container Body Start -->
<div class="container">
   <div class="row" style="margin-left:3%">
    <div style="padding-left: 120px;" class="page-header">
        <h3>Workflow List</h3>
     </div>
   <table  id="example"  class="display" 
    style="border:#ccc 1px solid;-moz-border-radius:3px;
   -webkit-border-radius:3px;border-radius:3px;
    moz-box-shadow: 0 1px 2px #d1d1d1;
    webkit-box-shadow: 0 1px 2px #d1d1d1;
    box-shadow: 0 1px 2px #d1d1d1;"  width="80%" >
        <thead>
            <tr style="background-color: #AAD4FF;text-align: left;">
                <th>Workflow Name</th>
                <th>Workflow Description</th>
            </tr>
        </thead>
        <tfoot>
            <tr style="background-color: #AAD4FF;text-align: left;">
                <th>Workflow Name</th>
                <th>Workflow Description</th>
            </tr>
        </tfoot>
       <tbody>
            <tr>
                <td>Apache Restart</td>
                <td>Apache restart workflow</td>
            </tr>
            <tr>
                <td>Weblogic Restart</td>
                <td>Weblogic Restart workflow</td>
            </tr>
            <tr>
                <td>Approval</td>
                <td>Approval workflow</td>
            </tr>
            <tr>
                <td>Calculator</td>
                <td>Calculator workflow</td>
            </tr>
            <tr>
                <td>Timer</td>
                <td>Timer workflow</td>
            </tr>
            <tr>
                <td>SFT</td>
                <td>SFT workflow</td>
            </tr>
            <tr>
                <td>Mysql</td>
                <td>Mysql Workflow</td>
            </tr>
            <tr>
                <td>ActiveMQ </td>
                <td>ActiveMQ  Workflow</td>
            </tr>
            <tr>
                <td>GetToken </td>
                <td>GetToken Workflow</td>
            </tr>
            <tr>
                <td>Monitor</td>
                <td>Monitor Workflow</td>
            </tr>
            <tr>
                <td>Terminate</td>
                <td>Terminate Workflow</td>
            </tr>
            <tr>
                <td>Launch</td>
                <td>Launch Workflow</td>
            </tr>
            <tr>
                <td>OTRS </td>
                <td>OTRS Workflow</td>
            </tr>
            <tr>
                <td>BSST</td>
                <td>BSST Workflow</td>
            </tr>
            <tr>
                <td> Reassign Task</td>
                <td>Reassign Workflow</td>
            </tr>
            <tr>
                <td>Pooling</td>
                <td>Pooling Workflow</td>
            </tr>
            <tr>
                <td>Escalate</td>
                <td>Escalate Workflow</td>
            </tr>
            <tr>
                <td>DevOps</td>
                <td>DevOps Workflow</td>
            </tr>
            <tr>
                <td>Puppet</td>
                <td>Puppet Workflow</td>
            </tr>
            <tr>
                <td>Chef </td>
                <td>Chef Workflow</td>
            </tr>
            <tr>
                <td>Svn</td>
                <td>Svn Workflow</td>
            </tr>
            <tr>
                <td>Jenkins</td>
                <td>Jenkins Workflow</td>
            </tr>
            <tr>
                <td>Notification</td>
                <td>Notification Workflow</td>
            </tr>
            <tr>
                <td>REST Connector</td>
                <td>REST Connector Workflow</td>
            </tr>
            <tr>
                <td>Axis Version</td>
                <td>Axis Version Workflow</td>
            </tr>
            <tr>
                <td>Migration</td>
                <td>Migration  Workflow</td>
            </tr>
        </tbody>
    </table>
 </div>
  <br/><br/><hr>
</div>	
	
<!-- Container End -->
	
	
<!-- footer Start -->
<div id="footer">
  <div class="container">
    <div class="muted credit" >
     ©1998-2014 Syntel, Inc. | all rights reserved
      <div style="float:right"><img src="images/logo.png" height="25px;" /></div>
    </div>
   </div>
  </div>
 <!-- Footer End -->
 
</body>
</html>                         		