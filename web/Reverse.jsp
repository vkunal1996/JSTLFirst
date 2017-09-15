<%-- 
    Document   : Reverse
    Created on : Sep 14, 2017, 6:11:43 PM
    Author     : vkunal1996
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="Kunal" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
        <Kunal:set var="inp" value="${param.Input}" scope="session"/>
        <Kunal:set var="rem" value="1" scope="session"/>
        <Kunal:set var="rev" value="0" scope="application"/>
       
        <Kunal:forEach var="temp" begin='1' end='${fn:length(param.Input)}'>
            
            <Kunal:set var="rem" value="${inp mod 10}"/> 
            <Kunal:out value="${rem}"/>
            <Kunal:set var="rev" value="${rev*10 +rem}"/>
            <fmt:formatNumber var="inp" value="${inp div 10}" type="number" pattern="#" maxFractionDigits="0"/>
            
        </Kunal:forEach>
        Reverse of <Kunal:out value="${param.Input}"/> is <Kunal:out value="${rev}"/>
        
        <form method='post'><input type='submit' value='back' formaction='index.html'></form>

    </body>
</html>
