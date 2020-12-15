package co.company.MatchFootball.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import oracle.jdbc.pool.OracleDataSource;
import oracle.jdbc.OracleConnection;
import java.sql.DatabaseMetaData;

public class DataSourceSample {  
   
  final static String DB_URL="jdbc:oracle:thin:@db202012151659_high?TNS_ADMIN=D://Dev//Wallet";
  final static String DB_USER = "admin";
  final static String DB_PASSWORD = "RLAgusehd12!@";
  public static void main(String args[]) throws SQLException {
    Properties info = new Properties();     
    info.put(OracleConnection.CONNECTION_PROPERTY_USER_NAME, DB_USER);
    info.put(OracleConnection.CONNECTION_PROPERTY_PASSWORD, DB_PASSWORD);          
    info.put(OracleConnection.CONNECTION_PROPERTY_DEFAULT_ROW_PREFETCH, "20");    
  

    OracleDataSource ods = new OracleDataSource();
    ods.setURL(DB_URL);    
    ods.setConnectionProperties(info);
    try (OracleConnection connection = (OracleConnection) ods.getConnection()) {
      DatabaseMetaData dbmd = connection.getMetaData();       
      System.out.println("Driver Name: " + dbmd.getDriverName());
      System.out.println("Driver Version: " + dbmd.getDriverVersion());
      System.out.println("Default Row Prefetch Value is: " + 
         connection.getDefaultRowPrefetch());
      System.out.println("Database Username is: " + connection.getUserName());
      System.out.println();
      printEmployees(connection);
    }   
  }
  public static void printEmployees(Connection connection) throws SQLException {
    try (Statement statement = connection.createStatement()) {      
      try (ResultSet resultSet = statement
          .executeQuery("select * from center")) {
        System.out.println("DB연결");
        System.out.println("---------------------");
        while (resultSet.next())
          System.out.println(resultSet.getString(1) + " ");       
      }
    }   
  } 
}