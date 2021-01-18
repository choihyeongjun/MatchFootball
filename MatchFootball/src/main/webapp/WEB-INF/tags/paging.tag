<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paging" type="co.company.MatchFootball.vo.Paging" %>
<%@ attribute name="paging2" type="co.company.MatchFootball.vo.Paging2" %>
<%@ attribute name="jsfunc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
div .pagination {
	text-align: center;
}
div .pagination li {
	list-style: none;
	float: left;
	padding: 6px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}
</style>

<div class="pagination">
<ul>
<c:if test="${paging.startPage>1}">
	<li><a href="javascript:${jsfunc}(${paging.startPage-1})"></a>
	
</c:if>
<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
	<c:if test="${i != paging.page}">
		<li><a href="javascript:${jsfunc}(${i})">${i}</a>
	</c:if>
	<c:if test="${i == paging.page}">
		<li><a class="active">${i}</a>
	</c:if>
</c:forEach>
<c:if test="${paging.endPage<paging.totalPageCount}">
	<li><a href="javascript:${jsfunc}(${paging.endPage+1})"></a>
</c:if>
</ul>
</div>