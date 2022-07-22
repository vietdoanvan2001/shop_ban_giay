/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DbContext {
        public Connection connextDB(){
        String server = "DUCKIEN-COMPUTE\\SQLEXPRESS";
        String user = "sa";
        String password = "1";
        String db = "WebShop";
        int port = 1433;
        SQLServerDataSource ds = new SQLServerDataSource();
        ds.setUser(user);
        ds.setPassword(password);
        ds.setDatabaseName(db);
        ds.setServerName(server);
        ds.setPortNumber(port);
        try {
            return ds.getConnection();
        } catch (SQLException ex) {            
            System.out.println("Ket noi that bai");
            ex.printStackTrace();
        }
        return null;
    }
}