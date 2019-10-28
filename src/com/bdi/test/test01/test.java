package com.bdi.test.test01;

class Father{
	static int a = 3;
	static {
		System.out.println(123);
	}
	Father(){
		System.out.println(1);
	}
	
	
	public void test() {
		System.out.println("안녕");
	}
}


public class test extends Father{
	test(){
		System.out.println(3);
	}
	public static void main(String[] args) {
		System.out.println(Father.a);
		Father f = new test();
	}

}