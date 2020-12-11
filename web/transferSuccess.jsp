<%-- 
    Document   : transferSuccess
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
        <title>Calculation Success</title>
    </head>
    <body style="background-color:#DADBE0;">
        <% String username = request.getParameter("username");
            String ca = request.getParameter("checkingAmount");
            String sa = request.getParameter("savingsAmount");
        %>
        
        <jsp:setProperty name="bankapp" property="username" value="<%= username %>" />
        
        <% try {
            BankAppWeb ba = bankapp.readFromDatabase();;
            %>
        <div align="center">
            <h2>Transfer Success!</h2>
            <form action="login.jsp">
                <input type="submit" value="Log Out">
                <input type="hidden" name="username" value="<%= ba.username %>" >
                <input type="hidden" name="password" value="" >
            </form>
        </div>
            <% String t = request.getParameter("transfer");
                    double checkingAmount = Double.parseDouble(ca);
                    double savingsAmount = Double.parseDouble(sa);
                    double updateAmount = Double.parseDouble(t);
                    ba.savingsAmount = bankapp.withdrawFromSavings(savingsAmount, updateAmount);
                    ba.checkingAmount = bankapp.depositToChecking(checkingAmount, updateAmount);
                   
                %>
        <%  }  catch (NullPointerException e ) { } catch (NumberFormatException e) {%>
        <% } %> 
    </body>
</html>
