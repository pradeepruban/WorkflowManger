<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Workflow Manager Login</title>
  

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    
	<script src="lib/bootstrap/js/bootstrap.js"></script>
    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
</head>
<body class=" theme-blue">
   <div class="dialog">
    <div class="panel panel-default">
        <p class="panel-heading no-collapse"><img  width="75%" src="images/syntel-logo.png"/></p>
        <div class="panel-body">
            <form action="./dashboard">
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" required="required" class="form-control span12">
                </div>
                <div class="form-group">
                <label>Password</label>
                    <input type="password" required="required" class="form-controlspan12 form-control">
                </div>
				 <button class="btn btn-primary pull-right" type="submit" >Sign In</button>  
                <!-- <a href="#" class="btn btn-primary pull-right">Sign In</a> -->
                <label class="remember-me"><input type="checkbox"> Remember me</label>
                <div class="clearfix"></div>
            </form>
        </div>
    </div>
</div>
</body></html>
