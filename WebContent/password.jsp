<%@ include file="readme.jsp" %>
<%
session.setAttribute("pass", password);
out.print(password);
%>