package com.bdi.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConHome {

	private final static String URL;
	private final static String ID;
	private final static String PWD;
	private final static String DRIVER_NAME;
	
	static {
		URL = "jdbc:oracle:thin:@localhost:1521:xe";
		ID = "dozero";
		PWD = "ParkDo12";
		DRIVER_NAME = "oracle.jdbc.diver.OracleDriver";
		try {
			Class.forName(DRIVER_NAME);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
	private static Connection con = null;	
	
	public static Connection getCon() {
		if(con==null) {
			try {
				con = DriverManager.getConnection(URL,ID,PWD);
			} catch (SQLException e) {
				e.printStackTrace();
			}		
		}
		return con;
	}
	
}

