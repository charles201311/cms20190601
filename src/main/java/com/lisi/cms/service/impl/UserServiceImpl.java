package com.lisi.cms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lisi.cms.dao.UserMapper;
import com.lisi.cms.domain.User;
import com.lisi.cms.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userMapper;
	@Override
	public List<Map> selectListByName(String name) {
		return userMapper.selectListByName(name);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		return userMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public User selectByPrimaryKey(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public User getUser(String name) {
		return userMapper.getUser(name);
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.insertSelective(record);
	}

	@Override
	public Map getById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getById(id);
	}

}
