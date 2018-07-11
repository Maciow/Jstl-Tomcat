<%--
  Created by IntelliJ IDEA.
  User: M
  Date: 2018-07-09
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Funkcje JSTL</title>
</head>
<body>
    <c:if test="${not empty param.name }">
        <c:out value="${fn:toUpperCase(param.name)}"/>
    </c:if>
    <h3>W nagłówku jest <c:out value="${fn:length(header)}"/> elementów:</h3>
    <c:forEach var="headerItem" items="${header }">
        <c:out value="${fn:toUpperCase(headerItem.key)}"/>:<c:out value="${fn:toLowerCase(headerItem.value)}"/>
        <br>
    </c:forEach>

    <br>
    <c:set var="strings" value="${fn:split('Ala ma kota zmieniana na tablice', ' ')}"/>
    <c:set var="joined" value="${fn:join(strings, '--')}"/>
    <c:out value="${joined }"/>
    <br>
    <c:if test="${fn:startsWith(joined, 'Ala')}">
        Hurra!
    </c:if>
    <c:out value="${fn:replace(joined, 'Ala', 'Maciej')}"/>
</body>
</html>
