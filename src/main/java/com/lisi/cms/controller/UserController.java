package com.lisi.cms.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lisi.cms.domain.User;
import com.lisi.cms.service.UserService;
import com.lisi.cms.utils.CMSException;
import com.lisi.cms.utils.Md5Util;
import com.lisi.cms.utils.PageUtil;

@Controller
public class UserController {

	@Resource
	private UserService userService;

	@RequestMapping("getUserList")
	public String list(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "") String name,
			Model model) {
		Integer pageSize = 5;
		PageHelper.startPage(page, pageSize);
		List<Map> list = userService.selectListByName(name);
		PageInfo<Map> info = new PageInfo<>(list);
		// 初始化分页工具类,返回分页信息
		String pageInfo = PageUtil.page(page, info.getPages(), "/getUserList?name=" + name, pageSize);

		model.addAttribute("list", list);
		model.addAttribute("name", name);
		model.addAttribute("pageInfo", pageInfo);

		return "admin/userlist";
	}
 //去修改
	@RequestMapping("toUpdate")
	public String toUpdate(Integer id,Model model) {
		
		Map map = userService.getById(id);
		model.addAttribute("map", map);
		return "/admin/user_update";
	}
	
	
	/**
	 * 
	 * @Title: update
	 * @Description: 更新用户.. 启用或禁用用户
	 * @param user
	 * @return
	 * @return: boolean
	 */
	@ResponseBody
	@RequestMapping("updateUser")
	public boolean update(User user) {

		return userService.updateByPrimaryKeySelective(user) > 0;

	}

	// 去注册页面
	@RequestMapping("toReg")
	public String toReg() {
		return "/passport/reg";

	}

	// 注册

	@RequestMapping("reg")
	public String addUser(@RequestParam(defaultValue = "") String username,
			@RequestParam(defaultValue = "") String password, @RequestParam(defaultValue = "") String repassword,
			@RequestParam(defaultValue = "1") Integer gender, Model model) {

		try {

			if (username.equals("") || password.equals("") || repassword.equals("")) {
				throw new CMSException("用户或密码不能为空");
			}

			// 判断两次密码不一致,如果不一致
			if (!password.equals(repassword)) {
				throw new CMSException("两次密码输入的不一致");
			}

			/// 符合要求,进行注册
			if (userService.insertSelective(new User(username, Md5Util.md5Encoding(password), gender)) > 0) {

				model.addAttribute("msg", "注册成功!");

				return "forward:toLogin";// 重定向
			}

		} catch (CMSException e) {
			model.addAttribute("msg", e.getMessage());
		} catch (Exception e) {
			model.addAttribute("msg", "未知异常,请于管理员联系");
		}
		return "/passport/reg";

	}

	// 登录页面
	@RequestMapping("toLogin")
	public String login() {

		return "/passport/login";

	}

	@RequestMapping("login")
	public String login(String username, String password, HttpSession session, Model model) {
		User user = userService.getUser(username);
		if (null != user) {// 密码比较,如果一致则进入个人主页面
			if (user.getPassword().equals(Md5Util.md5Encoding(password))) {
				session.setAttribute("user", user);
				//如果是管理则进入管理的后台
				if(username.equals("admin"))
					return "admin/index";
				//进入普通的后台
				return "my/index";
				
			}else {
				model.addAttribute("msg", "登录失败.密码不正确");
			}

		} else {
			model.addAttribute("msg", "登录失败.无此用户");
		}
		return "/passport/login";
	}

	//登出
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/passport/login";
	}
}
