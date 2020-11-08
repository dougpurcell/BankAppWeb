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
        <title>Withdraw From Checking</title>
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
            <h2>Withdraw from your checking account:</h2>
            <p>Checking amount: $<%= ba.checkingAmount %></p>
            <br />
            <form action="withdrawFromChecking.jsp" >
                Amount to Withdraw: <input type="text" name="withdraw" />
                <jsp:setProperty name="bankapp" property="updateAmount" param="withdraw" />
                <br/>
                <input type="hidden" name="username" value="<%= ba.username %>" > 
                <input type="hidden" name="checkingAmount" value="<%= ba.checkingAmount %>" >
                <input type="submit" value="Withdraw">
                
            </form>
<!--                <form><input type="submit" value="Back to Accounts" onclick="window.location='account.jsp'"></form>-->
                <% String withdraw = request.getParameter("withdraw");
                    double checkingAmount = Double.parseDouble(ca);
                    double updateAmount = Double.parseDouble(withdraw);
                    ba.checkingAmount = bankapp.withdrawFromChecking(checkingAmount,updateAmount);
                %>
        </div>

        <%  }  catch (NullPointerException e ) { } catch (NumberFormatException e) {%>
        <div align="center">
            <p>Sorry, you'll need to use an amount.</p>
        </div>
        <% } %> 
    </body>
</html>
