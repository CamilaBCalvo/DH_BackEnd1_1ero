package com.example.EntregaFinal.bd;

import java.sql.Connection;
import java.sql.DriverManager;

public class BD {
    private final static String DRIVER="org.h2.Driver";
    private final static String URL= "jdbc:h2:./Database/clase15";
    private final static String USER= "root";
    private final static String PASS= "1234";

    public static Connection getConnection()throws Exception{
        Class.forName(DRIVER);
        return DriverManager.getConnection(URL,USER,PASS);
    }

    public static void crearTablas(){
        Connection connection=null;
        try{ //Esto se pone porque agregue el archivo create.sql SOLO SE USA PARA CREAR TABLAS
            Class.forName(DRIVER);
            connection=DriverManager.getConnection(URL+";INIT=RUNSCRIPT FROM 'create.sql'",USER,PASS);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                connection.close();
            }catch (Exception ex){
                ex.printStackTrace();
            }
        }
    }
}
