package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseConnector {

    // JDBC 驱动名及数据库 URL
    static final String url = "jdbc:mysql://127.0.0.1/books?characterEncoding=utf8";
    static final String connectionString = "jdbc:mysql://47.95.194.146:3306/books?user=root&password=luodian&useUnicode=true&characterEncoding=utf8";
    static final String user = "root";
    static final String password = "luodian";

    public Connection connect;
    public Statement sta = null;
    public PreparedStatement pst = null;

    public void ConnectDataBase()
    {
        try
        {
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        try
        {
            System.out.println("Connecting database...");
            connect = DriverManager.getConnection(url,user,password);
            System.out.println("Successfully connected...");
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
}
