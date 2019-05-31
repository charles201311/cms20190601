package com.lisi.cms.service.impl;

import static org.junit.Assert.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.annotation.Resource;

import org.junit.Test;

import com.lisi.cms.service.SpringJunit;
import com.lisi.cms.service.TagService;
import com.lisi.utils.StreamUtil;

public class TagServiceImplTest extends SpringJunit{
	
	@Resource
	private TagService tagService;

	
	//读取标签数据导入数据库
	@Test
	public void testInsertSelective() throws FileNotFoundException, IOException {
		
    String string = StreamUtil.readTextFile(new File("c:/pic/标签数据.txt"));
		
		String[] tags = string.split("\\|");
		
		tagService.insertSelective(tags)	;
	}

}
