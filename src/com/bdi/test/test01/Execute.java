package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class Execute {
	public static void main(String[] args) {
		List<Food> menu = new ArrayList<Food>();
		
		Food.addMenu(menu, "치킨", 20000, "존마탱");
		Food.addMenu(menu, "소주", 4000, "존나써");
		Food.addMenu(menu, "맥주", 5000, "존시원");
		
		for(Food f : menu ) {
			System.out.println(f);
		}
	}
}
