<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="<%=request.getContextPath() %>/Admin/img/favicon.png" type="image/png">

  <title>Bracket Responsive Bootstrap3 Admin</title>

  <link href="<%=request.getContextPath() %>/Admin/css/style.default.css" rel="stylesheet">
</head>
<body style="background-color: #ffffff !important; ">

    <div>
        <section>
  
    <div class="signinpanel">
        
        <div class="row">
            
           <!--  <div class="col-md-7">
                
                <div class="signin-info">
                    <div class="logopanel">
                        <h1><span>[</span><span>]</span></h1>
                    </div>logopanel
                
                    <div class="mb20"></div>
                
                    <h5><strong>Welcome to Mankind Mileage!!!</strong></h5> 
                    <ul>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> Fully Responsive Layout</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> HTML5/CSS3 Valid</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> Retina Ready</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> WYSIWYG CKEditor</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> and much more...</li>
                    </ul>
                    <div class="mb20"></div>
                    <strong>Not a member? <a href="RegisterNow.jsp">Sign Up</a></strong>
                </div> signin0-info
            
            </div> --><!-- col-sm-7 -->
            
            <!-- <div class="col-md-3"  style="width:500px !important;margin-left: 400px !important;"> -->
              <center><form action="<%=request.getContextPath() %>/UserMasterController" method="post" id="wizard_validate" style="width:500px !important;">  
               <input type="hidden" name="flag" value="forgot_password">
                    <h4 class="nomargin">Sign In</h4>
                    <p class="mt5 mb20">Lost your password?? Please enter your e-mail address. You will receive a link to create a new password.</p>
                	<input type="text" class="form-control uname" placeholder="Enter Unique ID"  id="uid" name="uid"/>
                    <input type="email" class="form-control uname" placeholder="E-mail address"  id="email" name="email"/>
                    
                   
                    <input type="submit" value="Send password Reset" class="btn btn-success btn-block">
                    
                    
                    
                </form></center>
            <!-- </div> --><!-- col-sm-5 -->
            
        </div><!-- row -->
        
       <!--  <div class="signup-footer">
            <div class="pull-left">
                &copy; 2014. All Rights Reserved. Bracket Bootstrap 3 Admin Template
            </div>
            <div class="pull-right">
                Created By: <a href="http://themepixels.com/" target="_blank">ThemePixels</a>
            </div>
        </div> -->
        
    </div><!-- signin -->
  
</section>

    </div>
    
    <script src="<%=request.getContextPath() %>/Admin/js/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery.sparkline.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery.cookies.js"></script>

<script src="<%=request.getContextPath() %>/Admin/js/toggles.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/retina.min.js"></script>

<script src="<%=request.getContextPath() %>/Admin/js/custom.js"></script>
<script>
    jQuery(document).ready(function () {

        // Please do not use the code below
        // This is for demo purposes only
        var c = jQuery.cookie('change-skin');
        if (c && c == 'greyjoy') {
            jQuery('.btn-success').addClass('btn-orange').removeClass('btn-success');
        } else if (c && c == 'dodgerblue') {
            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
        } else if (c && c == 'katniss') {
            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
        }
    });
</script>

</body>
</html>