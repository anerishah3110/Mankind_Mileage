<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <link rel="icon" type="image/ico" href="favicon.ico"/>
    
    <link href="<%=request.getContextPath() %>/laboratory/css/stylesheets.css" rel="stylesheet" type="text/css" />        
    
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.min.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery-ui.min.js'></script>   
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/globalize.js'></script>    
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/bootstrap.min.js'></script>
    
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.uniform.min.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.dataTables.min.js'></script>
    
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/plugins.js'></script>    
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/actions.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/settings.js'></script>
     <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/select2.min.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.tagsinput.min.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery-ui-timepicker-addon.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.ibutton.js'></script>
    
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.validationEngine-en.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.validationEngine.js'></script>
    
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.maskedinput.min.js'></script>    
    <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/jquery.stepy.min.js'></script>
     <script type='text/javascript' src='<%=request.getContextPath() %>/laboratory/js/bootstrap-file-input.js'></script>
</head>
<body>
<div class="row">                   
            <div class="col-md-12">
                
                <nav class="navbar brb" role="navigation">
                  <!--   <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-reorder"></span>                            
                        </button>                                                
                        <a class="navbar-brand" href="index.html"><img src="img/logo.png"/></a>                                                                                     
                    </div>
                   -->  <div class="collapse navbar-collapse navbar-ex1-collapse">                                     
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="<%=request.getContextPath() %>/laboratory/index.jsp">
                                    <span class="icon-home"></span> Home
                                </a>
                            </li>                            
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-pencil"></span>User Registration</a>
                                <ul class="dropdown-menu">                                    
                                    <li><a href="<%=request.getContextPath() %>/PackageController?flag=load_pack">Add </a></li>
                                   <li>
                                        <a href="#">view<i class="icon-angle-right pull-right"></i></a>
                                        <ul class="dropdown-submenu">
                                            <li><a href="<%=request.getContextPath() %>/LabController?flag=search">With Sibling</a></li>
                                            <li><a href="<%=request.getContextPath() %>/LabController?flag=search1">Without Sibling</a></li>                                            
                                        </ul>
                                    </li>
                                  
                                </ul>                                
                            </li>
                             <li class="dropdown active">                         
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-cogs"></span> Generate Report</a>
                              <ul class="dropdown-menu">                                    
                                    <li><a href="<%=request.getContextPath() %>/LabController?flag=load">Add </a></li>
                                   <!--  <li><a href="">View </a></li> -->
                                  
                                </ul>
                                    </li>
                                      <li>
                                <a href="<%=request.getContextPath() %>/LoginFilter?flag=logout">
                                    <span ></span> LogOut
                                </a>
                            </li>
                                      
                             
                              <%-- <li class="dropdown active">                         
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-globe"></span> Manage Location</a>
                            <ul class="dropdown-menu">
                             <li>
                                        <a href="#">Country<i class="icon-angle-right pull-right"></i></a>
                                        <ul class="dropdown-submenu">
                                            <li><a href="Country.jsp">Add </a></li>
                                            <li><a href="country_search.jsp">View</a></li>                                            
                                        </ul>
                                    </li>
                                     <li>
                                        <a href="#">States<i class="icon-angle-right pull-right"></i></a>
                                        <ul class="dropdown-submenu">
                                            <li><a href="<%=request.getContextPath() %>/StateController?flag=load">Add</a></li>
                                            <li><a href="state_search.jsp">View</a></li>                                            
                                        </ul>
                                    </li>  
                                     <li>
                                        <a href="#">City<i class="icon-angle-right pull-right"></i></a>
                                        <ul class="dropdown-submenu">
                                            <li><a href="city.jsp">Add</a></li>
                                            <li><a href="city_search.jsp">View</a></li>                                            
                                        </ul>
                                    </li> 
                                    </ul>
                                    </li>
                                     <li class="dropdown active">                         
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-star"></span> Manage Newz_feed</a>
                            <ul class="dropdown-menu">
                             <li>
                                        <a href="#">Events<i class="icon-angle-right pull-right"></i></a>
                                        <ul class="dropdown-submenu">
                                            <li><a href="Event.jsp">Add </a></li>
                                            <li><a href="<%=request.getContextPath() %>/EventController?flag=search">View</a></li>                                            
                                        </ul>
                                    </li>
                                     <li>
                                        <a href="#">Tutorials<i class="icon-angle-right pull-right"></i></a>
                                        <ul class="dropdown-submenu">
                                            <li><a href="Tutorial.jsp">Add</a></li>
                                            <li><a href="<%=request.getContextPath() %>/TutorialController?mode=search">View</a></li>                                            
                                        </ul>
                                    </li>  
                                     <li>
                                        <a href="#">Videoes<i class="icon-angle-right pull-right"></i></a>
                                        <ul class="dropdown-submenu">
                                            <li><a href="video.jsp">Add</a></li>
                                            <li><a href="<%=request.getContextPath() %>/VideoController?mode=search">View</a></li>                                            
                                        </ul>
                                    </li> 
                                    </ul>
                                    </li>
                             
                                    
                                               --%>         </ul>   <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="search..."/>
                            </div>                            
                        </form>                                            
                    </div>
                </nav>                 

            </div>            
        </div>
</body>
</html>