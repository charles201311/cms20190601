package com.lisi.cms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lisi.cms.dao.BlogMapper;
import com.lisi.cms.dao.BlogTagMapper;
import com.lisi.cms.dao.BlogTagMiddleMapper;
import com.lisi.cms.domain.Blog;
import com.lisi.cms.domain.BlogTag;
import com.lisi.cms.domain.BlogTagMiddleKey;
import com.lisi.cms.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {
	
	@Resource
	private BlogMapper blogMapper ; 
	@Resource
	private BlogTagMapper blogTagMapper; 
	@Resource
	private BlogTagMiddleMapper middleMapper ;

	@Override
	public boolean addBlog(Blog blog, String[] tagnames) {
		try {
		//增加博客
			blogMapper.insertSelective(blog);
		//增加标签
           for(int i = 0 ;tagnames!=null && i< tagnames.length ; i++) {
        	   BlogTag tag = new BlogTag(null, tagnames[i]);
			  blogTagMapper.insertSelective(tag);
			  //增加中间表
			  middleMapper.insertSelective(new BlogTagMiddleKey(blog.getId(),tag.getTid()) );
           }
           
           //如果正常,则表示成功
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public List<Map> getList() {
		// TODO Auto-generated method stub
		return blogMapper.getList();
	}

	@Override
	public Blog selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return blogMapper.selectByPrimaryKey(id);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		//删除中间表
		middleMapper.deleteByBid(id);
		//删除博客
		return blogMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Blog record) {
		// TODO Auto-generated method stub
		return blogMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	
	
}
