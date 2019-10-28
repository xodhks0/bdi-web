package com.bdi.test.test01;

public class Member {
	int a; //아무것도 안쓰면 디폴트 쓰는 default는 인터페이스에서 사용한다 둘이 다른 개념 
	
	public String test(int a) {
		return "abc";
	}
	
	public static String test() {
		String str = "abc";
		String str1 = "bbc";
		return str;
	}

	public static void main(String[] args) { //접근제어자는 클래스 안에있으면서 다른영역에 포함되지 않았을 때 사용
		String str = Member.test(); //final은 local안에서 사용할 수 있다. 접근제어자는 불가능
		//Member.test(1); static이 아니라 사용할 수 없다.
		Member m = new Member();
		m.a = 10; //static영역에서는 비static 인 것들을 사용할 수 없다. 사용하려면 메모리를 생성해줘야한다.
		m.test(1); //이렇게는 사용 가능
		System.out.println(m.test(1));
		//class 는 사용자 정의 데이터 타입
	}
}