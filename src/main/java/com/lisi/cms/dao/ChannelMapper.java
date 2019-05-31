package com.lisi.cms.dao;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.Channel;
/**
 * 
 * @ClassName: ChannelMapper 
 * @Description: 栏目的接口
 * @author: charles
 * @date: 2019年5月22日 下午2:08:42
 */
public interface ChannelMapper {
	
	List<Map> getChannelList();
	
	
    int deleteByPrimaryKey(Integer id);

    int insert(Channel record);

    int insertSelective(Channel record);

    Channel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Channel record);

    int updateByPrimaryKey(Channel record);
}