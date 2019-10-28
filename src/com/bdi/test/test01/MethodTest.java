package com.bdi.test.test01;

class Mother {
	int a = 3;
	
	Mother(){
		System.out.println("내가 엄마니깐 나먼저 실행");
	}

	public void test() {
		System.out.println("난 엄마꺼");
	}
}

public class MethodTest extends Mother {
	int a = 123;
	MethodTest(){
//		super(); 라는게 숨겨져있다 안보일뿐
		super.test();
		System.out.println(this.a);
		System.out.println("내가 메모리 생성하니 나먼저 실행");
	}

	public void test() {
		System.out.println("난 아들꺼");
	}

	public static void main(String[] args) {
		Mother mt = new MethodTest();
		mt.test();
		
	}
}
