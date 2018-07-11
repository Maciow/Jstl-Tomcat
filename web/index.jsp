<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: M
  Date: 2018-07-09
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title><c:out value="${param.name }"/></title>
  </head>
  <body>
    <c:if test="${not empty param.name }">
      <c:set var="name" value="${param.name }" scope="page" />
      <h1>Witaj <c:out value="${pageScope.name }"/></h1>
      <c:remove var="name"/>
    </c:if>

    <h2>To co o Tobie wiemy:</h2>
    <h3>Ciasteczka:</h3>
    <c:forEach var="cookieItem" items="${cookie}">
      <c:out value="${cookieItem.key }"/>:<c:out value="${cookieItem.value }"/>
      <br>
    </c:forEach>
    <h3>Informacje z nagłówka:</h3>
    <c:forEach var="headerItem" items="${header }">
      <c:out value="${headerItem.key }"/>:<c:out value="${headerItem.value }"/>
      <br>
    </c:forEach>

    <c:if test="${not empty param.name }">
      <c:choose>
        <c:when test="${param.name eq 'Maciej'}">
          Tajna informacja dla Macieja
        </c:when>
        <c:when test="${param.name eq 'Sebastian'}">
          Tajna informacja dla Sebastiana
        </c:when>
        <c:otherwise>
          Brak tajnej informacji
        </c:otherwise>
      </c:choose>
    </c:if>
  </body>
</html>
