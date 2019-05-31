package com.lisi.cms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lisi.cms.dao.ChannelMapper;
import com.lisi.cms.service.ChannelService;

@Service
public class ChannelServiceImpl implements ChannelService {

	@Resource
	private ChannelMapper mapper;
	@Override
	public List<Map> getChannelList() {
		return mapper.getChannelList();
	}

}
