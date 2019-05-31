package com.lisi.cms.service.impl;

import static org.junit.Assert.assertEquals;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;

import com.lisi.cms.domain.User;
import com.lisi.cms.service.SpringJunit;
import com.lisi.cms.service.UserService;


public class UserServiceImplTest extends SpringJunit {
	@Resource
	private UserService userService;
	
	@Test
	public void testSelectListByName() {
		List<Map> list = userService.selectListByName("admin");
		if(list.size()==0) {
		System.out.println("无此用户");
		}else {
			System.out.println("用户以存在");
		}
		
	//	System.out.println("-------------->"+list.get(0).get("username"));
	  // assertEquals("admin1", list.get(0).get("username"));
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
		
		User user = userService.selectByPrimaryKey(1);
		user.setLocked(1);
		userService.updateByPrimaryKeySelective(user);
	}

}
