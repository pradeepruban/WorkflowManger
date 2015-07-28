<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Workflow Manager-GROUPS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

 <style type="text/css">
    
    #footer {background-color: #2C2929;}
    .container .credit { margin: 20px 0 20px 1px;}
    .muted {color: #999;align:center;}
    </style>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
 <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    
    
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  
</head>
<body>

   <!-- Header Start -->
   <nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div  class="container">
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

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav ">
			  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Workflow <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a class="active" href="addWorkflow.jsp">Add Workflow</a></li>
                         <li><a  href="addGroup.jsp">Add Group</a></li>
		                 <li><a href="listWorkflow.jsp">Workflow List</a></li>
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



<br>

<div class="container">

<div class="page-header">
    <h1>Existing Groups  
	<span style="float:right">
    	<button class="btn btn-primary" data-target="#largeModal" data-toggle="modal">Create Group</button>
    </span>
	</h1>
	<div style="margin-right: 100px;float:right;">  <!-- class="bs-example" -->
    	<!--  modal -->
   		<div id="largeModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
        	<div class="modal-dialog modal-lg">
            	<div class="modal-content">
               		<div class="modal-header">
                   		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                   		<h4 class="modal-title">Create Group</h4>
              		</div> 
               	<div class="modal-body">
                	<form class="form-horizontal">
       				 	<fieldset>
          					<div class="control-group">
            					<label class="control-label" for="input01">Group Name</label>
            					<div class="controls">
              						<input type="text" class="input-xlarge" id="input01">
             						<p class="help-block">Enter meaningful group name</p>
           						</div>
         					</div>
        				</fieldset>
					</form>
               	</div>
               	<div class="modal-footer">
                  <button type="button" class="btn btn-primary" onclick="jsfunction();">Add Group</button>
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
               </div>
            </div>
        </div>
    </div>
	</div>
</div>

<!-- GROUPS PAGE - START -->
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">MSO</h4>
                </div>
                <!-- <div class="panel-body text-center">
                    <p class="lead">
                        <strong>MSO_Workflows</strong>
                    </p>
                </div> -->
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        MSO_WF1
                        <!-- <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       MSO_WF2
                        <!-- <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        MSO_WF3
                       <!--  <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       <a href="groupDetail.jsp">more...</a>
                    </li>
                </ul>
                <!-- <div class="panel-footer">
                    <a class="btn btn-lg btn-block btn-success">Download</a>
                </div> -->
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">AMEX</h4>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        AMEX_WF1
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        AMEX_WF2
                        <!-- <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        AMEX_WF3
                        <!-- <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                         <a href="groupDetail.jsp">more...</a>
                    </li>
                </ul>
                <!-- <div class="panel-footer">
                    <a class="btn btn-lg btn-block btn-info">Purchase</a>
                </div> -->
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">CISCO</h4>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        CISCO_WF1
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        CISCO_WF2
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       CISCO_WF3
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                         <a href="groupDetail.jsp">more...</a>
                    </li>
                </ul>
                 <!-- <div class="panel-footer">
                    <a class="btn btn-lg btn-block btn-primary">more...</a>
                </div>  -->
            </div>
        </div>
        <div class="additionalLine"><br></div>
        <!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">MOODY</h4>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        MOODY_WF1
                        <!-- <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       MOODY_WF2
                        <!-- <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       MOODY_WF3
                       <!--  <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       <a href="groupDetail.jsp">more...</a>
                    </li>
                </ul>
                <!-- <div class="panel-footer">
                    <a class="btn btn-lg btn-block btn-success">Download</a>
                </div> -->
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">DELL</h4>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        DELL_WF1
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        DELL_WF2
                        <!-- <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        DELL_WF3
                        <!-- <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        <a href="groupDetail.jsp">more...</a>
                    </li>
                </ul>
                <!-- <div class="panel-footer">
                    <a class="btn btn-lg btn-block btn-info">Purchase</a>
                </div> -->
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">HUMANA</h4>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        HUMANA_WF1
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        HUMANA_WF2
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        HUMANA_WF3
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        <a href="groupDetail.jsp">more...</a>
                    </li>
                </ul>
                <!-- <div class="panel-footer">
                    <a class="btn btn-lg btn-block btn-primary">Purchase</a>
                </div> -->
            </div>
        </div>
        <div class="additionalLine"><br></div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">MOODY222</h4>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        MOODY_WF1
                        <!-- <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       MOODY_WF2
                        <!-- <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       MOODY_WF3
                       <!--  <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                       <a href="groupDetail.jsp">more...</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">DELL2222</h4>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        DELL_WF1
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        DELL_WF2
                        <!-- <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        DELL_WF3
                        <!-- <span class="glyphicon glyphicon-remove pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        <a href="groupDetail.jsp">more...</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="text-center">HUMANA222</h4>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item">
                        HUMANA_WF1
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        HUMANA_WF2
                       <!--  <span class="glyphicon glyphicon-ok pull-right"></span> -->
                    </li>
                    <li class="list-group-item">
                        <a href="groupDetail.jsp">more...</a>
                    </li>
                 </ul>
            </div>
        </div>
        </div>
        </div>
        
<!-- GROUPS PAGE - END -->
</div>
	
<hr>
		
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