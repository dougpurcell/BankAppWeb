/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.BankApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author doug
 */
public class BankAppWeb {
    private String checkingAmount = "250.00";
    private double savingsAmount = 1000.05;
    private double updateAmount = 0;
    private String username = "username";
    private String password = "pAsSwOrD";
    //TODO: need array for calculations
    public String getCheckingAmount() {
        return checkingAmount;
    }
    public void setCheckingAmount(String checkingAmount) {
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
    
    // TODO: Calcuation Methods for withdraw, deposit, and transfer.
    
    public void writeToDatabase() {
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } catch (ClassNotFoundException ex) {
            
        }
        System.out.println("...Driver loaded");
        Connection connection;
        
        try {
            connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\griff\\Google Drive\\College\\IST412\\BankAppWeb\\BankApp.accdb");
            Statement s = connection.createStatement();
            String sql = "INSERT INTO BankApp (username,checking,savings) Values('" + username + "','" + checkingAmount + "','" + savingsAmount + "')";
            
            s.executeUpdate(sql);
        }
        catch (SQLException e ) {
            
        }
    }
    public void readFromDatabase() {
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } catch (ClassNotFoundException ex) {
            
        }
        System.out.println("...Driver loaded");
        Connection connection;
        
        try {
            connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\griff\\Google Drive\\College\\IST412\\BankAppWeb\\BankApp.accdb");
            Statement s = connection.createStatement();
            String sql = "SELECT FROM BankApp (username,checking,savings) Values('" + username + "','" + checkingAmount + "','" + savingsAmount + "')";
            
            s.executeUpdate(sql);
        }
        catch (SQLException e ) {
            
        }
    }
}
