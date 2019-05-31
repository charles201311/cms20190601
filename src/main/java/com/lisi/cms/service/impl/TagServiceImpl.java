package com.lisi.cms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lisi.cms.dao.TagMapper;
import com.lisi.cms.domain.Tag;
import com.lisi.cms.service.TagService;

@Service
public class TagServiceImpl implements TagService {

	@Resource
	private TagMapper tagMapper;
	
	
	//批量插入标签数据
	@Override
	public int insertSelective(String[] tags) {
		int i=0;
		for (String str : tags) {
			 Tag tag = new Tag(str);
			i += tagMapper.insertSelective(tag);
		}
		return i;
	}


	
}
