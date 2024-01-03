package util;
import java.sql.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			// jdbc/dss 이름 찾아 객체를 찾아 datasource가 받는 부분
			DataSource ds = (DataSource) envContext.lookup("jdbc/dss");
			// ds생성 후 connection 계산
			conn = ds.getConnection();
		} catch (Exception e ) {
			e.printStackTrace();
		}
		return conn;
	}
	
	// select 이후 커넥션 해제
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			if(rs!=null)
				rs.close();
			if(stmt!=null)
				stmt.close();
			if(conn!=null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// insert, update, delete 이후 커넥션 해제
	public static void close(Connection conn, Statement stmt) {
		try {
			if(stmt!=null)
				stmt.close();
			if(conn!=null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
