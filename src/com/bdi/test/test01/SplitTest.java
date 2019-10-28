package com.bdi.test.test01;

public class SplitTest {

	public static void main(String[] args) {
		String hobby = "movie,game,study";
		String[] hobbies = hobby.split(",");
		String hob1 = "movie";
		String hob2 = "game";
		String hob3 = "study";

		System.out.println(hobbies.length);
		System.out.println(hobbies[0]);
		System.out.println(hobbies[1]);
		System.out.println(hobbies[2]);
//		for(int i =0 ; i<hobbies.length;i++) {i를 사용해야 할때는 이걸
//		System.out.println(hobbies[i]);
//		}
		for (String str : hobbies) { // 향상된 for문 보통이걸 많이 사용함
			if (str.equals(hob1)) {
				System.out.println(hob1);
				
			}else if (str.equals(hob2)) {
				System.out.println(hob2);
				
			}else if (str.equals(hob3)) {
				System.out.println(hob3);
				
			}
		}

	}
}
