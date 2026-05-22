package dao;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBUtil {

    private static DataSource ds;

    static {
        try {
            Context ctx = new InitialContext();
            ds = (DataSource) ctx.lookup("java:comp/env/jdbc/shuttermarket");
        } catch (Exception e) {
            throw new RuntimeException("DataSource non trovato", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }
}