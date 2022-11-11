<%-- 
    Document   : logout
    Created on : 05/11/2022, 09:25:01
    Author     : ccari
--%>

<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
