<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="list1" value="${sessionScope.slist}"></c:set>
<c:set var="len" value="${f:length(list1)}"></c:set>
[<c:forEach items="${sessionScope.slist }" var="i" varStatus="j">
		{"stateId":"${i.state_id }","stateName":"${i.state_name}"}<c:if test="${len ne j.count }">,</c:if>
	</c:forEach>]
	