package com.lisi.cms.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lisi.cms.domain.Friend;

public interface FriendService {
	
	List<Map> list(String name);
	
	int insert(Friend  friend);
	
	int update(Friend  friend);
	
	int deleteById(Integer id);
	
	Friend get(Integer id);
}