package com.servlet.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.TimeZone;

public class LoginDAO implements LoginImpl {
	
	public Connection getConnection()
	{
		Connection conn = null;
		Statement statement;

		String dbDriver = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/Allianz?serverTimezone=" + TimeZone.getDefault().getID();
		String dbUsername = "root";
		String dbPassword = "";
		try {
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
	@Override
	public boolean validate(Login login) throws SQLException {
		String username = null;
		String password = null;
		boolean status = false;
		Connection conn = getConnection();
		String sql = "SELECT *from login";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while(rs.next())
		{
		    username = rs.getString("username");
			password = rs.getString("password");
			if(username.equals(login.getUsername()) && password.equals(login.getPassword())) {
				status = true;
				break;
			}
			else
			{
				status = false;
			}
		}
		return status;
	}
}
