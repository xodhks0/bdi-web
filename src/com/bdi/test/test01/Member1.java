package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class Member1 {
	int a;
	public String test(int a) {
		return "abc";
	}
	
	public static void changeMember(Member member) {
		//m = new Member(); //여기서 생성되면 12번라인에서 죽는다
		member.a =10;
	}
	
	public static void main(String[] args) {
		Member m = new Member();
		List<Member> mList = new ArrayList<Member>();
		m.a = 10;
		mList.add(m);
		m.a = 20;
		mList.add(m);
		m.a = 30;
		mList.add(m);
		
		m = new Member();
		m.a = 20;
		mList.add(m);
		m.a = 40;
		mList.add(m);
		m.a = 60;
		mList.add(m);
		
		for(int i =0;i<mList.size();i++) {
			System.out.println(mList.get(i).a);
			}
//		
//		System.out.println(m.a);
//		changeMember(m);
//		System.out.println(m.a);
	}
}