<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="list" value="${sessionScope.slist }"></c:set>
<c:set var="len" value="${f:length(list) }"></c:set>
[<c:forEach items="${sessionScope.slist }" var="i" varStatus="j">
		{"cityId":"${i.city_id }","cityName":"${i.city_name }"}<c:if test="${len ne j.count }">,</c:if>
	</c:forEach>]
	