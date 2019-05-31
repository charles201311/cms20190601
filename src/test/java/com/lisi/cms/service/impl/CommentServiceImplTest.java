package com.lisi.cms.service.impl;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;

import com.lisi.cms.domain.Comment;
import com.lisi.cms.service.CommentService;
import com.lisi.cms.service.SpringJunit;

public class CommentServiceImplTest extends SpringJunit {
	
	@Resource
	private CommentService commentService;

	@Test
	public void testInsertSelective() {
		
		System.out.println(Math.random() * 100);
		for (int i=0;i<1000;i++) {
		int y =(int)(Math.random() * 100);
		  if(y>=26 && y<=38) {
			  Comment comment = new Comment(32,y,"评论:"+i);
				commentService.insertSelective(comment);
		  }
			
		}
		
		
	}

}
