<%-- 
    Document   : Factorial
    Created on : Sep 14, 2017, 5:16:11 PM
    Author     : vkunal1996
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="Kunal" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    

    <body>
        <Kunal:set var="imp" value="${param.Input}" scope="session"/>
        <Kunal:set var="fact" value="1"/>
        <Kunal:forEach var="imp" begin='1' end='${param.Input}'>
            <Kunal:set var="fact" value="${fact*imp}"/>
          <p>
        </Kunal:forEach>
              
              Factorial of <Kunal:out value="${param.Input}"/> is  <Kunal:out value="${fact}"/>
       <form method='post'><input type='submit' value='back' formaction='index.html'></form>
    </body>
</html>
