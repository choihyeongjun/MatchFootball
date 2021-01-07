<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
    </head>
    <body>
    카카오:${kemail}  ${kname} ${kimage} ${kgender} ${kbirthday } ${kage}
    <c:choose>
       <c:when test="${sessionScope.kname==null}">
       <li>
          <a href="${pageContext.request.contextPath}/loginform">카카오로그인</a>
          <a href="${pageContext.request.contextPath}/login">일반로그인</a>
       </li>
       </c:when>
       <c:otherwise>
       ${sessionScope.id} 님이 로그인중입니다	
       <li>
          <a href="${pageContext.request.contextPath}/kakaologout">카카오로그아웃</a>
          <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
       </li>
       </c:otherwise>
    </c:choose>
        <h1>Hello World!</h1>
        <p>This is the homepage!</p>
    </body>
</html>