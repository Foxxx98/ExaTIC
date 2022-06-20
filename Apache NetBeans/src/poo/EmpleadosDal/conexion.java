/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo.EmpleadosDal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

/**
 *
 * @author HP
 */
public class conexion {
    String strConexionDB="jdbc:sqlite:C:\\Users\\HP\\Documents\\db\\POO.s3db";
    Connection conn= null;

    public conexion() {
        try{ 
        Class.forName("org.sqlite.JDBC");
        conn =DriverManager.getConnection(strConexionDB);
        
        System.out.println("Conexion establecida");
        
    }catch (Exception e){
        
          System.out.println("Error de Conexion"+e);  
        }
        
    }
     
    public int ejecutarSentenciaSQL(String strSenteciaSQL){
        try{
            PreparedStatement psmt =conn.prepareStatement(strSenteciaSQL);
            psmt.execute();
            return 1;
        }catch (SQLException e){
            System.out.println(e);
            return 0;
        }
    }
   public  ResultSet ConsultarRegistros  (String strSenteciaSQL)    {
       try{
           PreparedStatement psmt =conn.prepareStatement(strSenteciaSQL);
           ResultSet respuesta=psmt.executeQuery();
           return respuesta;
       }catch (Exception e){
           System.out.println(e);
           return null;
       }
             
   }
    
}
