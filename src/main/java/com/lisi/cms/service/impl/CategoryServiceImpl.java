package com.lisi.cms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lisi.cms.dao.CategoryMapper;
import com.lisi.cms.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Resource
	private CategoryMapper categoryMapper;

	@Override
	public List<Map> getCateGoryListByCid(Integer cid) {
		return categoryMapper.getCateGoryListByCid(cid);
	}

}
