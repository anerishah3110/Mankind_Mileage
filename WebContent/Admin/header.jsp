<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="dao.*,vo.*,controller.*,java.util.List"%>
	<%@ taglib prefix="z" uri="http://java.sun.com/jstl/core_rt" %>

<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="<%=request.getContextPath() %>/Admin/img/favicon.png" type="image/png">
<link href="<%=request.getContextPath() %>/Admin/css/jquery.datatables.css" rel="stylesheet">
  <title>Bracket Responsive Bootstrap3 Admin</title>

  <link href="<%=request.getContextPath() %>/Admin/css/style.default.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  
  <![endif]-->
  <script type="text/javascript">
  function fn(){
      document.getElementById("frmupload").submit();
  }
  </script>
  
</head>

<body>
<!-- Preloader -->
<div id="preloader">
    <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>

<section>

  <div class="leftpanel">

    <div class="logopanel">
        <h1><span>[</span> Mankind Mileage <span>]</span></h1>
    </div><!-- logopanel -->
    <div class="leftpanelinner">

        <!-- This is only visible to small devices -->
        <div class="visible-xs hidden-sm hidden-md hidden-lg">
        <z:forEach items="${sessionScope.imglist }" var="j">
            <div class="media userlogged">
                <img alt="" src="<%=request.getContextPath() %>/Admin/img/${j.path}" class="media-object">
                <div class="media-body">
                    <h4>${j.user_id.user_name}</h4>
                    <span>"Life is so..."</span>
                </div>
            </div>
		</z:forEach>
            <h5 class="sidebartitle actitle">Account</h5>
            <ul class="nav nav-pills nav-stacked nav-bracket mb30">
              <li><a href="profile.html"><i class="fa fa-user"></i> <span>Profile</span></a></li>
              <li><a href=""><i class="fa fa-cog"></i> <span>Account Settings</span></a></li>
              <li><a href=""><i class="fa fa-question-circle"></i> <span>Help</span></a></li>
              <li><a href="signout.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
            </ul>
        </div>

      <h5 class="sidebartitle">Navigation</h5>
      <ul class="nav nav-pills nav-stacked nav-bracket">
        <li class="active"><a href="<%=request.getContextPath() %>/Admin/index.jsp"><i class="fa fa-home"></i> <span>Home</span></a></li>
        
        <li  class="nav-parent"><a href=""><i  class="fa fa-suitcase"></i> <span>Manage Packages</span></a>
          <ul class="children">
            <li><a href="<%=request.getContextPath() %>/PackageController?flag=load"><i class="fa fa-caret-right"></i>Add Packages</a></li>
            <li><a href="<%=request.getContextPath() %>/PackageController?flag=search"><i class="fa fa-caret-right"></i>View Packages</a></li>
            
          </ul>
        </li>
        <li class="nav-parent"><a href=""><i class="fa fa-edit"></i> <span>Manage Categories</span></a>
          <ul class="children">
            <li><a href="<%=request.getContextPath() %>/Admin/categories.jsp"><i class="fa fa-caret-right"></i>Add Category</a></li>
            
            <li><a href="<%=request.getContextPath() %>/CategoryController?flag=search"><i class="fa fa-caret-right"></i>View Category</a></li>
            <%-- <li><a href="<%=request.getContextPath() %>/SubcatController?flag=load"><i class="fa fa-caret-right"></i>Add Subcategories</a></li>
            <li><a href="<%=request.getContextPath() %>/SubcatController?flag=search"><i class="fa fa-caret-right"></i>View Subcategories</a></li>
             --%>
          </ul>
        </li>
        
        <li class="nav-parent"><a href=""><i class="fa fa-map-marker"></i> <span>Manage Location</span></a>
            <ul class="children">
                <li><a href="<%=request.getContextPath() %>/Admin/Country.jsp"><i class="fa fa-caret-right"></i>Add Country</a></li>
                <li><a href="<%=request.getContextPath() %>/CountryController?flag=search"><i class="fa fa-caret-right"></i>View Country</a></li>
                <li><a href="<%=request.getContextPath() %>/StateController?flag=load"><i class="fa fa-caret-right"></i>Add State</a></li>
                <li><a href="<%=request.getContextPath() %>/StateController?flag=search"><i class="fa fa-caret-right"></i>View State</a></li>
                <li><a href="<%=request.getContextPath() %>/CityController?flag=load"><i class="fa fa-caret-right"></i>Add City</a></li>
                <li><a href="<%=request.getContextPath() %>/CityController?flag=search"><i class="fa fa-caret-right"></i>View City</a></li>
            </ul>
        </li>
        
        <li class="nav-parent"><a href=""><i class="fa fa-file-text"></i> <span>Manage Events</span></a>
          <ul class="children">
            <li><a href="<%=request.getContextPath() %>/Admin/Event.jsp"><i class="fa fa-caret-right"></i>Add Event</a></li>
            <li><a href="<%=request.getContextPath() %>/EventController?flag=search"><i class="fa fa-caret-right"></i>View Event</a></li>
            
          </ul>
        </li>
        <li class="nav-parent"><a href=""><i class="fa fa-file-text"></i> <span>Manage Tutorial</span></a>
          <ul class="children">
            <li><a href="<%=request.getContextPath() %>/Admin/Tutorial.jsp"><i class="fa fa-caret-right"></i>Add Tutorial</a></li>
            <li><a href="<%=request.getContextPath() %>/TutorialController?mode=search"><i class="fa fa-caret-right"></i>View Tutorial</a></li>
            
          </ul>
        </li>
        <li class="nav-parent"><a href=""><i class="fa fa-file-text"></i> <span>Manage Video</span></a>
          <ul class="children">
            <li><a href="<%=request.getContextPath() %>/Admin/video.jsp"><i class="fa fa-caret-right"></i>Add Video</a></li>
            <li><a href="<%=request.getContextPath() %>/VideoController?mode=search"><i class="fa fa-caret-right"></i>View Video</a></li>
            
          </ul>
        </li>
        <li class="nav-parent"><a href=""><i class="fa fa-file-text"></i> <span>Manage Users</span></a>
          <ul class="children">
            <li><a href="<%=request.getContextPath() %>/UserMasterController?flag=search_cord"><i class="fa fa-caret-right"></i>CordBlood User</a></li>
            <li><a href="<%=request.getContextPath() %>/UserMasterController?flag=search_nwos"><i class="fa fa-caret-right"></i>Normal User</a></li>
            <li><a href="<%=request.getContextPath() %>/UserMasterController?flag=search_doner"><i class="fa fa-caret-right"></i>Donation User</a></li>
            
          </ul>
        </li>
        <li class="active"><a href="<%=request.getContextPath() %>/LoginFilter?flag=logout"> <span>Logout</span></a></li>
      </ul>
<%
UserMasterDAO d4= new UserMasterDAO();
List ls4=d4.search();

LabRegDAO d1=new LabRegDAO();
List ls1=d1.search();

PackagePurchaseDAO d2=new PackagePurchaseDAO();
List ls2=d2.search();
%>

      <div class="infosummary">
        <h5 class="sidebartitle">Information Summary</h5>
        <ul>
            <li>
                <div class="datainfo">
                    <span class="text-muted">No Of Users</span>
                    <h4><%=ls4.size() %></h4>
                </div>
                <div id="sidebar-chart" class="chart"></div>
            </li>
            <li>
                <div class="datainfo">
                    <span class="text-muted">No. Of Reports</span>
                    <h4><%=ls1.size() %></h4>
                </div>
                <div id="sidebar-chart2" class="chart"></div>
            </li>
            <li>
                <div class="datainfo">
                    <span class="text-muted">Package Purchased</span>
                    <h4><%=ls2.size() %></h4>
                </div>
                <div id="sidebar-chart3" class="chart"></div>
            </li>
            
        </ul>
      </div><!-- infosummary -->

    </div><!-- leftpanelinner -->
  </div><!-- leftpanel -->

  <div class="mainpanel">

    <div class="headerbar">

      <a class="menutoggle"><i class="fa fa-bars"></i></a>

      <%-- <form class="searchform" action="index.html" method="post">
        <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
      </form> --%>

      <div class="header-right">
        <ul class="headermenu">
          <li>
            <%-- <div class="btn-group">
              <button class="btn btn-default dropdown-toggle tp-icon" data-toggle="dropdown">
                <i class="glyphicon glyphicon-user"></i>
                <span class="badge">2</span>
              </button>
              <div class="dropdown-menu dropdown-menu-head pull-right">
                <h5 class="title">2 Newly Registered Users</h5>
                <ul class="dropdown-list user-list">
                  <li class="new">
                    <div class="thumb"><a href=""><img src="<%=request.getContextPath() %>/Admin/img/user1.png" alt="" /></a></div>
                    <div class="desc">
                      <h5><a href="">Draniem Daamul (@draniem)</a> <span class="badge badge-success">new</span></h5>
                    </div>
                  </li>
                  <li class="new">
                    <div class="thumb"><a href=""><img src="<%=request.getContextPath() %>/Admin/img/user2.png" alt="" /></a></div>
                    <div class="desc">
                      <h5><a href="">Zaham Sindilmaca (@zaham)</a> <span class="badge badge-success">new</span></h5>
                    </div>
                  </li>
                  <li>
                    <div class="thumb"><a href=""><img src="<%=request.getContextPath() %>/Admin/img/user3.png" alt="" /></a></div>
                    <div class="desc">
                      <h5><a href="">Weno Carasbong (@wenocar)</a></h5>
                    </div>
                  </li>
                  <li>
                    <div class="thumb"><a href=""><img src="<%=request.getContextPath() %>/Admin/img/user4.png" alt="" /></a></div>
                    <div class="desc">
                      <h5><a href="">Nusja Nawancali (@nusja)</a></h5>
                    </div>
                  </li>
                  <li>
                    <div class="thumb"><a href=""><img src="<%=request.getContextPath() %>/Admin/img/user5.png" alt="" /></a></div>
                    <div class="desc">
                      <h5><a href="">Lane Kitmari (@lane_kitmare)</a></h5>
                    </div>
                  </li>
                  <li class="new"><a href="">See All Users</a></li>
                </ul>
              </div>
            </div> --%>
          </li>
          <li>
            <%-- <div class="btn-group">
              <button class="btn btn-default dropdown-toggle tp-icon" data-toggle="dropdown">
                <i class="glyphicon glyphicon-envelope"></i>
                <span class="badge">1</span>
              </button>
              <div class="dropdown-menu dropdown-menu-head pull-right">
                <h5 class="title">You Have 1 New Message</h5>
                <ul class="dropdown-list gen-list">
                  <li class="new">
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user1.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Draniem Daamul <span class="badge badge-success">new</span></span>
                      <span class="msg">Lorem ipsum dolor sit amet...</span>
                    </span>
                    </a>
                  </li>
                  <li>
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user2.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Nusja Nawancali</span>
                      <span class="msg">Lorem ipsum dolor sit amet...</span>
                    </span>
                    </a>
                  </li>
                  <li>
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user3.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Weno Carasbong</span>
                      <span class="msg">Lorem ipsum dolor sit amet...</span>
                    </span>
                    </a>
                  </li>
                  <li>
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user4.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Zaham Sindilmaca</span>
                      <span class="msg">Lorem ipsum dolor sit amet...</span>
                    </span>
                    </a>
                  </li>
                  <li>
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user5.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Veno Leongal</span>
                      <span class="msg">Lorem ipsum dolor sit amet...</span>
                    </span>
                    </a>
                  </li>
                  <li class="new"><a href="">Read All Messages</a></li>
                </ul>
              </div>
            </div> --%>
          </li>
          <li>
            <div class="btn-group">
            
            <%-- <c:set var="list" value="${sessionScope.loadlist}"></c:set>
            <c:set var="len" value="${f:length(list) }"></c:set>
              <button class="btn btn-default dropdown-toggle tp-icon" data-toggle="dropdown" onclick="fn()">
                <i class="glyphicon glyphicon-globe"></i>
                <span class="badge">${len}</span>
              </button> --%>
              
              <c:set var="list" value="${sessionScope.loadlist}"></c:set>
            <c:set var="len" value="${f:length(list) }"></c:set>
            <form action="<%= request.getContextPath() %>/Admin/complaint_search.jsp" method="post" id="frmupload">
              <button class="btn btn-default dropdown-toggle tp-icon" data-toggle="dropdown" onclick="fn()">
                <i class="glyphicon glyphicon-globe"></i>
                <span class="badge">${len}</span>
              </button></form>
             
              
              <%-- <div class="dropdown-menu dropdown-menu-head pull-right">
                <h5 class="title">You Have 5 New Notifications</h5>
                <ul class="dropdown-list gen-list">
                  <li class="new">
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user4.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Zaham Sindilmaca <span class="badge badge-success">new</span></span>
                      <span class="msg">is now following you</span>
                    </span>
                    </a>
                  </li>
                  <li class="new">
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user5.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Weno Carasbong <span class="badge badge-success">new</span></span>
                      <span class="msg">is now following you</span>
                    </span>
                    </a>
                  </li>
                  <li class="new">
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/images/photos/user3.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Veno Leongal <span class="badge badge-success">new</span></span>
                      <span class="msg">likes your recent status</span>
                    </span>
                    </a>
                  </li>
                  <li class="new">
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user3.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Nusja Nawancali <span class="badge badge-success">new</span></span>
                      <span class="msg">downloaded your work</span>
                    </span>
                    </a>
                  </li>
                  <li class="new">
                    <a href="">
                    <span class="thumb"><img src="<%=request.getContextPath() %>/Admin/img/user3.png" alt="" /></span>
                    <span class="desc">
                      <span class="name">Nusja Nawancali <span class="badge badge-success">new</span></span>
                      <span class="msg">send you 2 messages</span>
                    </span>
                    </a>
                  </li>
                  <li class="new"><a href="">See All Notifications</a></li>
                </ul>
              </div> --%>
            </div>
          </li>
          
          <li>
            <div class="btn-group">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
              <z:forEach items="${sessionScope.imglist }" var="j">
                <img src="<%=request.getContextPath() %>/Admin/img/${j.path }" alt="" />
                ${j.user_id.user_name }
                <span class="caret"></span></z:forEach>
              </button>
              <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                <li><a href="profile.html"><i class="glyphicon glyphicon-user"></i> My Profile</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Account Settings</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-question-sign"></i> Help</a></li>
                <li><a href="signin.html"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
              </ul>
            </div>
          </li>
          <!-- <li>
            <button id="chatview" class="btn btn-default tp-icon chat-icon">
                <i class="glyphicon glyphicon-comment"></i>
            </button>
          </li> -->
        </ul>
      </div><!-- header-right -->

    </div><!-- headerbar -->

    

<!-- contentpanel -->

 <!-- mainpanel -->

  




 <script src="<%=request.getContextPath() %>/Admin/js/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery-ui-1.10.3.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery.sparkline.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/toggles.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/retina.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery.cookies.js"></script>
 
<script src="<%=request.getContextPath() %>/Admin/js/jquery.flot.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery.flot.resize.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery.flot.spline.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/morris.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/raphael-2.1.0.min.js"></script>

 <script src="<%=request.getContextPath() %>/Admin/js/custom.js"></script> 
<script src="<%=request.getContextPath() %>/Admin/js/dashboard.js"></script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-55586762-1', 'auto');
  ga('send', 'pageview');

</script>

</body>
</html>
