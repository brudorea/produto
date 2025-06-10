<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <title>Hello Java EE</title>
</head>
<body>
    <h1>Java EE</h1>
    <%
    out.println("Bruno Henrique");
    %>
    
    <p>
    	Data:
    	<%=new Date() %>
    </p>
    
    <%!int contador=0; %>
    <p>Visitas: <%=contador++%></p>	
    
</body>

</html>