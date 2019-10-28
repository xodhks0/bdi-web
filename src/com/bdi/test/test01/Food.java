package com.bdi.test.test01;

import java.util.List;

public class Food {

	public String name;
	public int price;
	public String etc;

	public Food(String name, int price, String etc) {
		this.name = name;
		this.price = price;
		this.etc = etc;
	}

	public String toString() {
		return "Food [name=" + name + ", price=" + price + ", etc=" + etc + "]";
	}

	public static void addMenu(List<Food> menu, String name, int price, String etc) {
		Food f = new Food(name, price, etc);
		menu.add(f);
	}



}
