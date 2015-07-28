<!DOCTYPE html>
<html>
  <head>
    <title>Workflow Manager-Services</title>
    
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
       $('#example').dataTable(
    		{
				"bSort": false 
         });
     });
   </script>
   <!-- JS End -->
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
		                 <li><a href="listWorkflow.jsp">Workflow List</a></li>
		                 <li><a  href="listGroup.jsp">List Group</a></li>
                   </ul>
             </li>
             <li><a href="events.jsp">Events</a></li>
             <li><a class="active" href="services.jsp">Services</a></li>
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
        <h3>Services List</h3>
     </div>
   <table  id="example"  class="display" 
    style="border:#ccc 1px solid;-moz-border-radius:3px;
    -webkit-border-radius:3px;border-radius:3px;
    moz-box-shadow: 0 1px 2px #d1d1d1;
     webkit-box-shadow: 0 1px 2px #d1d1d1;
     box-shadow: 0 1px 2px #d1d1d1;"  width="80%" >
		<thead>
        	<tr style="background-color: #AAD4FF;text-align: left;">
				<th>Workflow Name </th>
				<th>Service URL</th>
            </tr>
		</thead>
        <tbody>
        	<tr>
            	<td>Amex</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1&Interface=http://test/xi/Test^test_Out</td>
                
            </tr>
            <tr>
            	<td>cloud</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
            <tr>
            	<td>cloud</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
             <tr>
            	<td>cloud</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
            <tr>
            	<td>logisct</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
             <tr>
            	<td>Retail</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
            <tr>
            	<td>Fedex</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
             <tr>
            	<td>Hadoop</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
             <tr>
            	<td>Hummana</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
           <tr>
            	<td>cisco</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
            </tr>
               <tr>
            	<td>Syntel</td>
                <td>http://host:port/XISOAPAdapter/MessageServlet?channel=:BS1:BS1Channel&version=3.0&Sender.Service=BS1</td>
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