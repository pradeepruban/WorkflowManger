<!DOCTYPE html>
<html>
  <head>
    <title>Workflow Manager-Add Workflow</title>
  
    <!-- CSS Start -->
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-duallistbox.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <style type="text/css">
    body{padding-top: 70px;}
   .bs-example{margin: 20px;}
   .entry:not(:first-of-type){ margin-top: 10px;}
   .glyphicon{font-size: 12px;}
   #footer {background-color: #2C2929;}
   .container .credit {margin: 20px 0 20px 3px;}
   .muted { color: #999;align:center;}
    </style> 
   <!-- CSS End -->
    	
    <!-- JS Start -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="js/jquery.bootstrap-duallistbox.js"></script>
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

<!--  Container Body Start -->
<div class="container">
   <div class="row" style="margin-left:3%">
    <div class="page-header">
        <h3>Add Workflow</h3>
      </div>
      
  <div class="row">
     <div class="col-xs-4">
       <label class="control-label" for="field1">Workflow Name</label>
          <input type="text" class="form-control" placeholder=" ">
      </div>
     <div class="col-xs-1">

     </div>
     <div class="col-xs-6">
        <label class="control-label" for="field1">Workflow Description</label>
          <textarea style="width:100%;height:100%" class="form-control" rows="2" ></textarea>
     </div>
   </div>  
 <br> <br>
 
  <div class="row">
     <div class="col-xs-4">
       <label class="control-label" for="field1">Attribute List</label>
         <input class="form-control"  type="text" placeholder=" " />
     </div>
      <div class="col-xs-1"></div>
       <div class="col-xs-4">
        <label class="control-label" for="field1">Priority</label>
          <select class="form-control"> 
                  <option>Select </option>
                  <option>Critical</option>
                  <option>High</option>
                  <option>Medium</option>
                  <option>Low</option>
          </select>
     </div>
     
  </div>  
 <br> <br>
    <div class="row">
     <div class="col-xs-4">
           <label class="control-label" for="field1">Status</label> 
           <br>
           
           
             <label class="radio-inline">
              <input type="radio" name="rating" value="Active" /> Active 
            </label>
            <label class="radio-inline">
                <input type="radio" name="rating" value="Inactive" /> Inactive
            </label>   
      </div>
   </div>  
 <br><br>   
     <div class="control-group" id="fields">
        <div class="controls"> 
           <div class="entry input-group col-xs-10">
             <select multiple="multiple" size="5" name="duallistbox_demo2" class="demo2">
              <option value="172.168.29.19">172.168.29.19</option>
              <option value="172.168.29.19">172.168.29.26</option>
              <option value="192.168.29.201" selected="selected">192.168.29.201</option>
              <option value="172.26.184.21">172.26.184.21</option>
              <option value="172.26.184.20">172.26.184.21</option>
              <option value="172.26.184.26" selected="selected">172.26.184.26</option>
              <option value="172.26.184.29">172.26.184.29</option>
              <option value="172.26.184.30">172.26.184.30</option>
              <option value="172.26.184.31">172.26.184.31</option>
              <option value="172.26.184.32">172.26.184.32</option>
              <option value="172.26.184.33">172.26.184.33</option>
              <option value="172.26.184.34">172.26.184.34</option>
              <option value="172.26.184.35">172.26.184.35</option>
              <option value="172.26.184.36">172.26.184.36</option>
              <option value="172.26.184.37">172.26.184.37</option>
              <option value="172.26.184.48">172.26.184.48</option>
              <option value="172.26.184.51">172.26.184.51</option>
              <option value="172.26.184.53">172.26.184.53</option>
              <option value="172.26.184.54">172.26.184.54</option>
              <option value="172.26.184.60">172.26.184.60</option>
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
  <br>  <br>
    <div>
       <button type="button" class="btn btn-primary">Add Workflow</button>
       <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
    </div>
  </div>
</div>
</div>
<!-- Container Body End -->
	
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

