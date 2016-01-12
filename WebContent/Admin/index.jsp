<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*,vo.*,controller.*,java.util.List"%>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
     <%@ taglib prefix="z" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
</head>
<body>
<%@include file="header.jsp" %>
<div class="pageheader">
      <h2><i class="fa fa-home"></i> Dashboard <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li class="active">Dashboard</li>
        </ol>
      </div>
    </div>

    <div class="contentpanel">

      <div class="row">

        <div class="col-sm-6 col-md-3">
          <div class="panel panel-success panel-stat">
            <div class="panel-heading">
<%
/* UserMasterDAO d4= new UserMasterDAO();
List ls4=d4.search();

LabRegDAO d1=new LabRegDAO();
List ls1=d1.search();

PackagePurchaseDAO d2=new PackagePurchaseDAO();
List ls2=d2.search(); */

 List ls = new ArrayList();
Object [] obj = new Object[2];
obj[0]="No_Of_Users";
obj[1]=ls4.size();
ls.add(obj); 
 obj = new Object[2];
obj[0]="No_of_reports";
obj[1]=ls1.size();
ls.add(obj);
obj = new Object[2];
obj[0]="No_of_PackagePurchase";
obj[1]=ls2.size();
ls.add(obj);
session.setAttribute("lschart",ls);
%>
              <div class="stat">
                <div class="row">
                  <div class="col-xs-4">
                    <img src="<%=request.getContextPath() %>/Admin/img/is-user.png" alt="" />
                  </div>
                  <div class="col-xs-8">
                    <small class="stat-label">Registerd Users</small>
                    <h1><%=ls4.size() %></h1>
                  </div>
                </div><!-- row -->

                <div class="mb15"></div>

                <div class="row">
                  <div class="col-xs-6">
                    <small class="stat-label"></small>
                    <h4></h4>
                  </div>

                  <div class="col-xs-6">
                    <small class="stat-label"></small>
                    <h4></h4>
                  </div>
                </div><!-- row -->
              </div><!-- stat -->

            </div><!-- panel-heading -->
          </div><!-- panel -->
        </div><!-- col-sm-6 -->

        <div class="col-sm-6 col-md-3">
          <div class="panel panel-danger panel-stat">
            <div class="panel-heading">

              <div class="stat">
                <div class="row">
                  <div class="col-xs-4">
                    <img src="<%=request.getContextPath() %>/Admin/img/is-document.png" alt="" />
                  </div>
                  <div class="col-xs-8">
                    <small class="stat-label">No. Of Reports</small>
                    <h1><%=ls1.size() %></h1>
                  </div>
                </div><!-- row -->

                <div class="mb15"></div>

                <small class="stat-label"></small>
                <h4></h4>

              </div><!-- stat -->

            </div><!-- panel-heading -->
          </div><!-- panel -->
        </div><!-- col-sm-6 -->

        <div class="col-sm-6 col-md-3">
          <div class="panel panel-primary panel-stat">
            <div class="panel-heading">

              <div class="stat">
                <div class="row">
                  <div class="col-xs-4">
                    <img src="<%=request.getContextPath() %>/Admin/img/is-document.png" alt="" />
                  </div>
                  <div class="col-xs-8">
                    <small class="stat-label">Package Purchased</small>
                    <h1><%=ls2.size()%></h1>
                  </div>
                </div><!-- row -->

                <div class="mb15"></div>

                <small class="stat-label"></small>
                <h4></h4>

              </div><!-- stat -->

            </div><!-- panel-heading -->
          </div><!-- panel -->
        </div><!-- col-sm-6 -->

        <div class="col-sm-6 col-md-3">
          <div class="panel panel-dark panel-stat">
            <div class="panel-heading">
<%
//HttpSession session=request.getSession();
int price=(Integer)session.getAttribute("price");
%>
              <div class="stat">
                <div class="row">
                  <div class="col-xs-4">
                    <img src="<%=request.getContextPath() %>/Admin/img/is-money.png" alt="" />
                  </div>
                  <div class="col-xs-8">
                    <small class="stat-label">Total Earnings</small>
                    <h1><%=price %></h1>
                  </div>
                </div><!-- row -->

                <div class="mb15"></div>

                <div class="row">
                  <div class="col-xs-6">
                    <small class="stat-label"></small>
                    <h4></h4>
                  </div>

                  <div class="col-xs-6">
                    <small class="stat-label"></small>
                    <h4></h4>
                  </div>
                </div><!-- row -->

              </div><!-- stat -->

            </div><!-- panel-heading -->
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
      </div><!-- row -->

      <div class="row">
         <div class="col-sm-7 col-md-8">
          <div class="panel panel-default">
            <div class="panel-body">
              <div class="row"> 
                <!-- <div class="col-sm-8">
                  <h5 class="subtitle mb5">Network Performance</h5>
                  <p class="mb15">Duis autem vel eum iriure dolor in hendrerit in vulputate...</p>
                  <div id="basicflot" style="width: 100%; height: 300px; margin-bottom: 20px"></div>
                </div> --><!-- col-sm-8 -->
                <!-- <div class="col-sm-4">
                  <h5 class="subtitle mb5">Server Status</h5>
                  <p class="mb15">Summary of the status of your server.</p>

                  <span class="sublabel">CPU Usage (40.05 - 32 cpus)</span>
                  <div class="progress progress-sm">
                    <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-primary"></div>
                  </div>progress

                  <span class="sublabel">Memory Usage (32.2%)</span>
                  <div class="progress progress-sm">
                    <div style="width: 32%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success"></div>
                  </div>progress

                  <span class="sublabel">Disk Usage (82.2%)</span>
                  <div class="progress progress-sm">
                    <div style="width: 82%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-danger"></div>
                  </div>progress

                  <span class="sublabel">Databases (63/100)</span>
                  <div class="progress progress-sm">
                    <div style="width: 63%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-warning"></div>
                  </div>progress

                  <span class="sublabel">Domains (2/10)</span>
                  <div class="progress progress-sm">
                    <div style="width: 20%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success"></div>
                  </div>progress

                  <span class="sublabel">Email Account (13/50)</span>
                  <div class="progress progress-sm">
                    <div style="width: 26%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success"></div>
                  </div>progress


                </div>col-sm-4-->
                <iframe src="<%=request.getContextPath() %>/Admin/chart.jsp"   style="height:375px!important;width:680px!important;  "> </iframe>
                </div><!-- row -->
            </div><!-- panel-body -->
          </div>
        </div><!-- col-sm-9 -->

        <div class="col-sm-4 col-md-3">

          <!-- <div class="panel panel-default">
            <div class="panel-body">
            <h5 class="subtitle mb5">Most Browser Used</h5>
            <p class="mb15">Duis autem vel eum iriure dolor in hendrerit in vulputate...</p>
            <div id="donut-chart2" class="ex-donut-chart"></div>
            </div>panel-body
          </div> --><!-- panel -->
		<iframe src="<%=request.getContextPath() %>/Admin/pie.jsp"   style="height:375px!important;width:400px!important;  "> </iframe>
        </div><!-- col-sm-3 -->

      </div><!-- row -->

      <div class="row">

        <div class="col-sm-7">

          <div class="table-responsive">
            <table class="table table-bordered mb30">
            <thead>
              <tr>
                <th>#</th>
                <th>User Name</th>
                <th>Package Name</th>
                <th>Date</th>
              </tr>
            </thead>
            
            <tbody>
            <z:set var="list1" value="${sessionScope.packlist}"></z:set>
            <z:set var="i1" value="${f:length(list1)}"></z:set>				<!--${f:length(list1)-7}  -->
            <z:set var="i2" value="${f:length(list1)-7}"></z:set>
            <z:forEach items="${sessionScope.packlist}" var="j" begin="0" end="1" varStatus="i">
              <tr>
                <td>${i.count }</td>
                <td>${j.user_id.user_name }</td>
                 <td>${j.package_id.package_name }</td>
                <td>${j.date }</td>
               </tr>
              </z:forEach>
                          </tbody>
          </table>
          </div><!-- table-responsive -->

        </div><!-- col-sm-7 -->

       <!--  <div class="col-sm-5">

          <div class="panel panel-success">
            <div class="panel-heading padding5">
              <div id="line-chart" class="ex-line-chart"></div>
            </div>
            <div class="panel-body">
              <div class="tinystat pull-left">
                <div id="sparkline" class="chart mt5"></div>
                <div class="datainfo">
                  <span class="text-muted">Average Sales</span>
                  <h4>$630,201</h4>
                </div>
              </div>tinystat
              <div class="tinystat pull-right">
                <div id="sparkline2" class="chart mt5"></div>
                <div class="datainfo">
                  <span class="text-muted">Total Sales</span>
                  <h4>$139,201</h4>
                </div>
              </div>tinystat
            </div>
          </div>panel

        </div> --><!-- col-sm-6 -->
      </div><!-- row -->

<%--       <div class="row">
        <div class="col-sm-6 col-md-4">
          <div class="panel panel-default widget-photoday">
            <div class="panel-body">
              <a href="" class="photoday"><img src="<%=request.getContextPath() %>/Admin/img/photo1.png" alt="" /></a>
              <div class="photo-details">
                <h4 class="photo-title">Strawhat In The Beach</h4>
                <small class="text-muted"><i class="fa fa-map-marker"></i> San Franciso, California, USA</small>
                <small>By: <a href="">ThemePixels</a></small>
              </div><!-- photo-details -->
              <ul class="photo-meta">
                <li><span><i class="fa fa-eye"></i> 32,102</span></li>
                <li><a href="#"><i class="fa fa-heart"></i> 1,003</a></li>
                <li><a href="#"><i class="fa fa-comments"></i> 52</a></li>
              </ul>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-sm-6 -->

        <div class="col-sm-6 col-md-4">
          <div class="panel panel-default panel-alt widget-messaging">
          <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-edit"><i class="fa fa-edit"></i></a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Messaging</h3>
            </div>
            <div class="panel-body">
              <ul>
                <li>
                  <small class="pull-right">Dec 10</small>
                  <h4 class="sender">Jennier Lawrence</h4>
                  <small>Lorem ipsum dolor sit amet...</small>
                </li>
                <li>
                  <small class="pull-right">Dec 9</small>
                  <h4 class="sender">Marsha Mellow</h4>
                  <small>Lorem ipsum dolor sit amet...</small>
                </li>
                <li>
                  <small class="pull-right">Dec 9</small>
                  <h4 class="sender">Holly Golightly</h4>
                  <small>Lorem ipsum dolor sit amet...</small>
                </li>
                <li>
                  <small class="pull-right">Dec 10</small>
                  <h4 class="sender">Jennier Lawrence</h4>
                  <small>Lorem ipsum dolor sit amet...</small>
                </li>
                <li>
                  <small class="pull-right">Dec 9</small>
                  <h4 class="sender">Marsha Mellow</h4>
                  <small>Lorem ipsum dolor sit amet...</small>
                </li>
              </ul>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-sm-6 -->

        <div class="col-sm-6 col-md-4">
          <div class="panel panel-dark panel-alt widget-quick-status-post">
          <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Quick Status Post</h3>
            </div>
            <div class="panel-body">
              <ul class="nav nav-tabs nav-justified">
                <li class="active"><a href="#post-status" data-toggle="tab"><i class="fa fa-pencil"></i> <strong>Status</strong></a></li>
                <li><a href="#post-photo" data-toggle="tab"><i class="fa fa-picture-o"></i> <strong>Photo</strong></a></li>
                <li><a href="#post-checkin" data-toggle="tab"><i class="fa fa-map-marker"></i> <strong>Check-In</strong></a></li>
              </ul>
              <div class="tab-content">
                <div id="post-status" class="tab-pane active">
                  <input type="text" class="form-control" placeholder="What's your status?" />
                </div>
                <div id="post-photo" class="tab-pane">
                  <input type="text" class="form-control" placeholder="Choose photo" />
                </div>
                <div id="post-checkin" class="tab-pane">
                  <input type="text" class="form-control" placeholder="Search location" />
                </div>
                <button class="btn btn-primary btn-block mt10">Submit Post</button>
              </div><!-- tab-content -->

            </div><!-- panel-body -->
          </div><!-- panel -->

          <div class="mb20"></div>

          <div class="row">
            <div class="col-xs-6">
              <div class="panel panel-warning panel-alt widget-today">
                <div class="panel-heading text-center">
                  <i class="fa fa-calendar-o"></i>
                </div>
                <div class="panel-body text-center">
                  <h3 class="today">Fri, Dec 13</h3>
                </div><!-- panel-body -->
              </div><!-- panel -->
            </div>

            <div class="col-xs-6">
              <div class="panel panel-danger panel-alt widget-time">
                <div class="panel-heading text-center">
                  <i class="glyphicon glyphicon-time"></i>
                </div>
                <div class="panel-body text-center">
                  <h3 class="today">4:50AM PST</h3>
                </div><!-- panel-body -->
              </div><!-- panel -->
            </div>
          </div>
        </div><!-- col-sm-6 -->

      </div> --%>

    </div><!-- contentpanel -->
<%@include file="footer.jsp" %>
</body>
</html>