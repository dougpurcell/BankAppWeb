<%-- 
    Document   : transferSavingsToChecking
    Created on : Dec 10, 2020, 6:41 PM
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
        <title>Transfer Savings to Checking</title>
    </head>
    <body style="background-color:#DADBE0;">
        <% String username = request.getParameter("username"); %>
        
        <jsp:setProperty name="bankapp" property="username" value="<%= username %>" />
        <% try {
            BankAppWeb ba = bankapp.readFromDatabase();;
            %>
        
        <div align="center"> 
            <h2>Transfer funds from your savings to your checking:</h2>
            <p>Checking amount: $<%= ba.checkingAmount %></p>
            <p>Savings amount: $<%= ba.savingsAmount %></p>
            <br />
            <form action="transferSuccess.jsp" >
                Amount to Transfer: <input type="text" name="transfer" />
                <jsp:setProperty name="bankapp" property="updateAmount" param="transfer" />
                <br/>
                <input type="hidden" name="username" value="<%= ba.username %>" > 
                <input type="hidden" name="checkingAmount" value="<%= ba.checkingAmount %>" >
                <input type="hidden" name="savingsAmount" value="<%= ba.savingsAmount %>" >
                <input type="submit" value="Transfer">
                
            </form>
                
        </div>

        <%  }  catch (NullPointerException e ) { } catch (NumberFormatException e) {%>
        <div align="center">
            <p>Sorry, you'll need to use an amount.</p>
        </div>
        <% } %> 
    </body>
</html>
