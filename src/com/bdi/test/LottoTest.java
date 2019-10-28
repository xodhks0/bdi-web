package com.bdi.test;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class LottoTest {

	public static void main(String[] args) {
		
		Object str = 1;
		str ="1";

		Random r = new Random();
		List<Integer> list = new ArrayList<Integer>();
		
		for (int i = 0; i < 6; i++) {
			int rNum = r.nextInt(6) + 1;
			if (list.indexOf(rNum) == -1) {
				list.add(rNum);
			} else {
				i--;
			}
			
		}

		System.out.println(list.get(0));
		System.out.println(list.get(1));
		System.out.println(list.get(2));
		System.out.println(list.get(3));
		System.out.println(list.get(4));
		System.out.println(list.get(5));
		System.out.println(list);

	}

}
