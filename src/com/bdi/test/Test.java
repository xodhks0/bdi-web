package com.bdi.test;

public class Test {

	public static void main (String[] args) {
		
		String sql = "insert into user_info(ui_id,ui_pwd, ui_name, ui_age, ui_etc)";
		sql += " values('" + "id" + "','" + "pwd" + "','" +"name"+"','"+"age"+"','"+"etc"+"')";
		System.out.println(sql);
		
	}
}
