package com.lisi.cms.service;

import java.util.List;

import com.lisi.cms.domain.Tag;
/**
 * 增加标签
 * @ClassName: TagService 
 * @Description: TODO
 * @author: charles
 * @date: 2019年5月30日 下午3:09:39
 */
public interface TagService {
	
	 int insertSelective(String[] tags);

}
