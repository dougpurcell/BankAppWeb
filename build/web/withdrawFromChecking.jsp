<%-- 
    Document   : withdrawFromChecking
    Created on : Nov 8, 2020, 11:08:24 AM
    Author     : Doug Griffiths
--%>

<%@page import="com.BankApp.BankAppWeb" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>        

<jsp:useBean id="bankapp" class="com.BankApp.BankAppWeb" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Withdraw From Checking</title>
    </head>
    <body style="background-color:#DADBE0;">
        <% String username = request.getParameter("username"); %>
        
        <jsp:setProperty name="bankapp" property="username" value="<%= username %>" />
        <% try {
            BankAppWeb ba = bankapp.readFromDatabase();;
            %>
        
        <div align="center"> 
            <h2>Withdraw from your checking account:</h2>
            <p>Checking amount: $<%= ba.checkingAmount %></p>
            <br />
            <form action="withdrawSuccess.jsp" >
                Amount to Withdraw: <input type="text" name="withdraw" />
                <jsp:setProperty name="bankapp" property="updateAmount" param="withdraw" />
                <br/>
                <input type="hidden" name="username" value="<%= ba.username %>" > 
                <input type="hidden" name="checkingAmount" value="<%= ba.checkingAmount %>" >
                <input type="submit" value="Withdraw">
                
            </form>
                
        </div>

        <%  }  catch (NullPointerException e ) { } catch (NumberFormatException e) {%>
        <div align="center">
            <p>Sorry, you'll need to use an amount.</p>
        </div>
        <% } %> 
    </body>
</html>
