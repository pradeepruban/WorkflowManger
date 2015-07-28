
	 <script> 
		function autoRefresh_div()
   		{
		 	$("#RefreshGroupdiv").load("./groupCount");
		 	$("#RefreshWorkflowdiv").load("./workflowCount");
			$("#RefreshEventdiv").load("./eventCount");
			$("#RefreshServicediv").load("./serviceCount");
		 	
		}
 		setInterval('autoRefresh_div()',3000);
	</script> 

<div class="navbar navbar-default" role="navigation"  >
	<div class="navbar-header">
    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
        	<span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
   		<a class="" href="./dashboard"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> WorkFlow Manager</span></a>
   	</div>
	<div class="navbar-collapse collapse" style="height: 1px;">
		<ul id="main-menu" class="nav navbar-nav navbar-right">
       		<li class="dropdown hidden-xs">
        		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
        		<span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> Kalyan Raju
        		<i class="fa fa-caret-down"></i> </a>
            	<ul class="dropdown-menu">
              	 	<li><a href="#">My Account</a></li>
               	 	<li class="divider"></li>
               	 	<li><a tabindex="-1" href="./logout">Logout</a></li>
            	</ul>  
            </li>
		</ul>
	</div>
</div>

<div class="sidebar-nav">
   		<ul>
    		<li><a href="./dashboard" data-target=".dashboard-menu"   class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a></li>
    		<li><a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-briefcase"></i> Workflow <span id="RefreshWorkflowdiv" class="label label-success">${workflowCount}</span></a></li>
        	<li>
        		<ul class="accounts-menu nav nav-list collapse">
            		<li ><a href="./addWorkflow"><span class="fa fa-caret-right"></span> Add Workflow</a></li>
           			<li ><a href="./listWorkflow"><span class="fa fa-caret-right"></span> List Workflows</a></li>
    			</ul>
    		</li>
			<li><a href="#" data-target=".dashboard-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-comment"></i> Group <span class="label label-success" id="RefreshGroupdiv">${groupCount}</span></a></li>
        	<li>
        		<ul class="dashboard-menu nav nav-list collapse">
           			<li><a href="./addGroup"><span class="fa fa-caret-right"></span> Add Group</a></li>
            		<li><a href="./listGroups"><span class="fa fa-caret-right"></span> List Groups</a></li>
            			<li><a href="./listGroupaccord"><span class="fa fa-caret-right"></span> List Groups By Platform</a></li>
            		
    			</ul>
    		</li>
        	<li><a href="./events" data-target=".legal-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-legal"></i> Events <span id="RefreshEventdiv" class="label label-success">${eventCount}</span></a></li>
        	<li><a href="./services" class="nav-header"><i class="fa fa-fw fa-question-circle"></i> Services <span class="label label-success" id="RefreshServicediv">${serviceCount}</span></a></li>
        	
        	
        	
        	<li   data-placement="right"><a href="#" data-target=".premium-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-fighter-jet"></i> WebServices<i class="fa fa-collapse"></i></a></li>
        <li><ul class="premium-menu nav nav-list collapse">
             
            <li ><a href="./allInstances"><span class="fa fa-caret-right"></span>getAll Instances</a></li>
            <li ><a href="./allProcesses"><span class="fa fa-caret-right"></span>getAll Processes</a></li>
    </ul></li>
		</ul>
</div>
