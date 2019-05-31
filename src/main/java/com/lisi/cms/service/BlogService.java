package com.lisi.cms.service;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.Blog;

public interface BlogService {
/**
 *
 * @Title: addBlog 
 * @Description: 发布博客
 * @param blog
 * @param tagnames
 * @return
 * @return: boolean
 */
	boolean addBlog(Blog blog,String[] tagnames);
   /**
    * 
    * @Title: getList 
    * @Description: 返回博文列表
    * @return
    * @return: List<Map>
    */
    List<Map> getList();
    //单查
    Blog selectByPrimaryKey(Integer id);
    //删除
    int deleteByPrimaryKey(Integer id);
    //修改
    int updateByPrimaryKeyWithBLOBs(Blog record);

}
