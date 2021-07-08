package com.javaex.dao;

import com.javaex.vo.GuestBookVo;

public class Bbookapp {

	public static void main(String[] args) {

		GuestBookDao guestDao = new GuestBookDao();
		
//		guestDao.guestDelete(3);
		System.out.println(guestDao.guestList());
//		GuestBookVo guestvo = new GuestBookVo("김삿갓","5678","hello","21-07-08 5:46:25");
//		guestDao.guestInsert(guestvo);
		
	}

}
