
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<div>
<c:set value="${sessionScope.errorMsg }" var="x"></c:set>
<c:out value="${x }"></c:out>
<c:remove var="x" scope="session"/>
</div>