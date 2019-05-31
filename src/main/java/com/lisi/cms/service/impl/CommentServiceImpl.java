package com.lisi.cms.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lisi.cms.dao.CommentMapper;
import com.lisi.cms.domain.Comment;
import com.lisi.cms.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
 
	@Autowired
	private CommentMapper mapper;
	
	
	@Override
	public int insertSelective(Comment record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}

	@Override
	public List<Map> getListByArticleId(Integer articleId) {
		// TODO Auto-generated method stub
		return mapper.getListByArticleId(articleId);
	}

}
