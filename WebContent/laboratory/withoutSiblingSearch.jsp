<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
a
{
color:black;
}
</style>
</head>
<body>
<div class="col-md-2 col-md-offset-2">
<h2>Search withOut Sibling</h2></div>

<div class="row">
            
            <div class="col-md-12">
                
                <div class="block">
                    <div class="header">
                        <h2>Sortable table</h2>                                        
                    </div>
                    <div class="
					">

                        <table cellpadding="0" cellspacing="0" width="200%" class="table table-bordered table-striped table7">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" class="checkall"/></th>
                                    <th>ID</th>
                                    <th >Name</th>
                                
                                    <th>E-mail_Id</th>
                                    <th>Contact No.</th>
                                    <th>package Name</th>
                                    <th>Action</th>       
                                </tr>
                            </thead>
                            <tbody>
                              <c:forEach items="${sessionScope.lssearch }" var="i" >
                              
                            <%--   <c:forEach items="${sessionScope.map }" var="k" > 
                              ===${i.s_id ne k.s_id.s_id}===
                             
                               <c:if test="${i.s_id ne k.s_id.s_id}">
                             --%>        
                                <tr>
                               
                                    <td><input type="checkbox" name="checkbox"/></td>
                                    <td>${i.s_id }</td>
                                    <td>${i.name }</td>
                                 
                                    <td>${i.email }</td>
                                    <td>${i.contact_no }</td>
                                    <td>${i.package_id.package_name}</td>
                                    <td><a href="<%=request.getContextPath() %>/LabController?flag=edit&Sid=${i.s_id}&Kid=${k.id}&type=no">EDIT</a>  /  <a href="">DELETE</a></td>
                                                                                                          
                                </tr><%-- </c:if></c:forEach> --%></c:forEach>
                     </tbody>
                        </table>                                        

                    </div>
                </div>
          
            </div>
            
        </div>
</body>
</html>