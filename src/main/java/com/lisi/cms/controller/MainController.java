package com.lisi.cms.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lisi.cms.service.ChannelService;
import com.lisi.cms.service.FriendService;

/**
 * 
 * @ClassName: MainController 
 * @Description: 进入前台主页面
 * @author: charles
 * @date: 2019年5月22日 下午2:05:37
 */
@Controller
public class MainController {
	@Resource
	private ChannelService channelService;
	@Resource
	private FriendService friendService;
	
	@RequestMapping({"index","/",""})
	public String toIndex(Model model ) {
		//当访问主页面时,把栏目列表查询出
		List<Map> list = channelService.getChannelList();
		model.addAttribute("list", list);
		//友情链接
		List<Map> list2 = friendService.list("");
		model.addAttribute("linkList", list2);
		
		return "main/index";
	}
	
	
	
}
