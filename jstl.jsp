<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=utf-8" isELIgnored="false" %>
<%
pageContext.setAttribute("title", "<EL式>と<JSTL>のテスト");
// ↑に同じ<c:set var="title" value="..." />
// ↑に同じ<c:set var="title">...</c:set>
// session.setAttribute("title", "<EL式>と<JSTL>のテスト");
// request.setAttribute("title", "<EL式>と<JSTL>のテスト");
String s = "test";
final String myClassName = new Object(){}.getClass().getEnclosingClass().getName();
%>
<!DOCTYPE html>
<html>
 <head>
  <title><c:out value="${title}"/></title>
 </head>
 <body>
  <h1><c:out value="${title}"/></h1>

  <p>EL式: ${10*2} (JSTLと無関係に使える)</p>
  <p><c:forEach var="i" begin="0" end="10"><c:out value="${i}"/> </c:forEach></p>
  <p>Class: <%= myClassName %></p>

  <h2>スクリプトレットからEL式</h2>
  <p>s = <c:out value="<%= s %>" default="(未定義)"/></p>
  <p>Locale: <c:out value="<%= request.getLocale() %>"/></p>
  <p>This page was loaded on <c:out value="<%=new java.util.Date()%>"/></p>

  <h2>EL式からスクリプトレット</h2>
  <% String title = (String)pageContext.findAttribute("title"); %>
  <p><%= title %>(ちゃんとHTMLエスケープされない)</p>
 </body>
</html>
