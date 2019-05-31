package com.lisi.cms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lisi.cms.dao.FriendMapper;
import com.lisi.cms.domain.Friend;
import com.lisi.cms.service.FriendService;
@Service
public class FriendServiceImpl implements FriendService {

	
	@Resource
	private FriendMapper mapper;
	@Override
	public List<Map> list(String name) {
		return mapper.list(name);
	}

	@Override
	public int insert(Friend friend) {
		return mapper.insert(friend);
	}

	@Override
	public int update(Friend friend) {
		// TODO Auto-generated method stub
		return mapper.update(friend);
	}

	@Override
	public int deleteById(Integer id) {
		// TODO Auto-generated method stub
		return mapper.deleteById(id);
	}

	@Override
	public Friend get(Integer id) {
		// TODO Auto-generated method stub
		return mapper.get(id);
	}

}
