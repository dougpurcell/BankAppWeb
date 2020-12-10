<%-- 
    Document   : withdrawFromChecking
    Created on : Nov 8, 2020, 11:08:24 AM
    Author     : griff
--%>

<%@page import="com.BankApp.BankAppWeb" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>        

<jsp:useBean id="bankapp" class="com.BankApp.BankAppWeb" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deposit To Checking</title>
    </head>
    <body style="background-color:#DADBE0;">
        <% String username = request.getParameter("username");
            String ca = request.getParameter("checkingAmount");
        %>
        
        <jsp:setProperty name="bankapp" property="username" value="<%= username %>" />
        <% try {
            BankAppWeb ba = bankapp.readFromDatabase();;
            %>
        
        <div align="center"> 
            <h2>Deposit funds into your checking account:</h2>
            <p>Checking amount: $<%= ba.checkingAmount %></p>
            <br />
            <form action="success.jsp" >
                Amount to Deposit: <input type="text" name="deposit" />
                <jsp:setProperty name="bankapp" property="updateAmount" param="deposit" />
                <br/>
                <input type="hidden" name="username" value="<%= ba.username %>" > 
                <input type="hidden" name="checkingAmount" value="<%= ba.checkingAmount %>" >
                <input type="submit" value="Deposit">
                
            </form>
                
        </div>

        <%  }  catch (NullPointerException e ) { } catch (NumberFormatException e) {%>
        <div align="center">
            <p>Sorry, you'll need to use an amount.</p>
        </div>
        <% } %> 
    </body>
</html>
