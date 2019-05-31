package com.lisi.cms.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lisi.cms.domain.Friend;
import com.lisi.cms.service.FriendService;
import com.lisi.cms.utils.PageUtil;

@Controller
@RequestMapping("friend")
public class FriendController {

	@Resource
	private FriendService   friendService;
	@RequestMapping("toList")
	public  String toList(
			@RequestParam(defaultValue="1") Integer page,@RequestParam(defaultValue="")String  name,Model model) {
		
		Integer pageSize=3;
		PageHelper.startPage(page, pageSize);
		List<Map> list = friendService.list(name);
		PageInfo<Map> info = new PageInfo<>(list);
		
		String pageInfo = PageUtil.page(page, info.getPages(), "/toList?name="+name, pageSize);
		
		model.addAttribute("list", list);
		model.addAttribute("name", name);
		model.addAttribute("pageInfo", pageInfo);
		
		
		return "/admin/friend_list";//友情链接页面
		
	}
	
	@RequestMapping("toUpdate")
	public String toUpdate(Integer id,Model model) {
		Friend friend = friendService.get(id);
		model.addAttribute("friend", friend);
		return "/admin/friend_update";
		
	}
	

	@ResponseBody
	@RequestMapping("update")
	public boolean update(Friend friend) {
		return  friendService.update(friend)>0;
		
	}
}
