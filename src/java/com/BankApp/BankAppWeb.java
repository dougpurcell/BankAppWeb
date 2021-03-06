package com.BankApp;

import java.sql.*;

/**
 * @author Doug Griffiths
 */

public class BankAppWeb {
    public double checkingAmount;
    public double savingsAmount;
    private double updateAmount;
    public String username;
    public String password;
    
    public double getCheckingAmount() {
        return checkingAmount;
    }
    public void setCheckingAmount(double checkingAmount) {
        this.checkingAmount = checkingAmount;
    }
    
    public double getSavingsAmount() {
        return savingsAmount;
    }
    public void setSavingsAmount(double savingsAmount) {
        this.savingsAmount = savingsAmount;
    }
    
    public double getUpdateAmount() {
        return updateAmount;
    }
    public void setUpdateAmount(double updateAmount) {
        this.updateAmount = updateAmount;
    }
    
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    // TODO: Error handling for calculations.
    // TODO: Password field should matter.
    
    public double withdrawFromChecking(double checkingAmount, double updateAmount) {
        double c = checkingAmount;
        double u = updateAmount;
        // Need error handling.
            c = c - u; 
        
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } catch (ClassNotFoundException ex) { }
        System.out.println("...Driver loaded");
        Connection connection;
        
        try {
            connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\griff\\Google Drive\\College\\IST412\\BankAppWeb\\BankApp.accdb");
            Statement s = connection.createStatement();
            String sql = " UPDATE BankApp SET checking ='" + c + "' WHERE username ='" + username + "' ";
            
            s.executeUpdate(sql);
             
            s.close();
            connection.close();
        }
        catch (SQLException e) {}
        return c;
    }
    public double depositToChecking(double checkingAmount, double updateAmount) {
        double c = checkingAmount;
        double u = updateAmount;
        // Need error handling.
            c = c + u; 
        
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } 
        catch (ClassNotFoundException ex) { }
        System.out.println("...Driver loaded");
        Connection connection;
        
        try {
            connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\griff\\Google Drive\\College\\IST412\\BankAppWeb\\BankApp.accdb");
            Statement s = connection.createStatement();
            String sql = " UPDATE BankApp SET checking ='" + c + "' WHERE username ='" + username + "' ";
            
            s.executeUpdate(sql);
             
            s.close();
            connection.close();
        }
        catch (SQLException e) {}
        return c;
    }
    public double withdrawFromSavings(double savingsAmount, double updateAmount) {
        double sa = savingsAmount;
        double u = updateAmount;
        // Need error handling.
            sa = sa - u;
        
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } 
        catch (ClassNotFoundException ex) { }
        System.out.println("...Driver loaded");
        Connection connection;
        
        try {
            connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\griff\\Google Drive\\College\\IST412\\BankAppWeb\\BankApp.accdb");
            Statement s = connection.createStatement();
            String sql = " UPDATE BankApp SET savings='" + sa + "' WHERE username ='" + username + "' ";
            
            s.executeUpdate(sql);
             
            s.close();
            connection.close();
        }
        catch (SQLException e) {}
        return sa;
    }
//    public void writeToDatabase() {
//        try {
//            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
//        } catch (ClassNotFoundException ex) { }
//        System.out.println("...Driver loaded");
//        Connection connection;
//        
//        try {
//            connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\griff\\Google Drive\\College\\IST412\\BankAppWeb\\BankApp.accdb");
//            Statement s = connection.createStatement();
//            String sql = "INSERT INTO BankApp (username,checking,savings) Values('" + username + "','" + checkingAmount + "','" + savingsAmount + "')";
//            
//            s.executeUpdate(sql);
//             
//            s.close();
//            connection.close();
//        }
//        catch (SQLException e ) { }
//    }
    
    public BankAppWeb readFromDatabase() {
        BankAppWeb account = null;
        ResultSet rs = null;
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } catch (ClassNotFoundException ex) { }
  
        System.out.println("...Driver loaded");
        Connection connection;
        
        try {
            connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\griff\\Google Drive\\College\\IST412\\BankAppWeb\\BankApp.accdb");
            Statement s = connection.createStatement();
            String sql = "SELECT id, username, checking, savings FROM BankApp where username = '" + username + "' ";
        
            try {
                rs = s.executeQuery(sql);
                System.out.println(rs);
                
                while (rs.next()) {
                    account = new BankAppWeb();
                    account.username = rs.getString(2);
                    account.checkingAmount = rs.getDouble(3);
                    account.savingsAmount = rs.getDouble(4);
                }

            } catch (Exception e){ }
            
            s.close();
            connection.close();
            
        } catch (SQLException e ) {}
        return account;
    }
}
