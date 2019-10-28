package com.bdi.test.test01;

public class test12 {
	public static void main(String[] args) {
		String mi_num = "mi_num";
		String mi_name = "mi_name";
		String mi_price = "mi_price";
		String mi_date = "mi_date";
		String mi_desc = "mi_desc";
		String mi_age = "mi_age";
		String mi_star_rate = "mi_star_rate";
		String sql = "UPDATE MOVIE_INFO set " +
				mi_name + "=" + "값" + "," +
				mi_price + "=" + "값"+ "," +
				mi_date + "=" + "값"+ "," +
				mi_desc + "=" + "값"+ "," +
				mi_age + "=" + "값"+ "," +
				mi_star_rate + "=" + "값" +
				" Where MI_NUM = "+ mi_num ;
		System.out.println(sql);
	}
}
