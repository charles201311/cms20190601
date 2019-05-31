package com.lisi.cms.dao;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.Blog;

public interface BlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Blog record);
    
    

    int insertSelective(Blog record);

    Blog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Blog record);

    int updateByPrimaryKeyWithBLOBs(Blog record);

    int updateByPrimaryKey(Blog record);
    /**
     * 
     * @Title: getList 
     * @Description: TODO
     * @return
     * @return: List<Map>
     */
	List<Map> getList();
}