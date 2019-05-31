package com.lisi.cms.service.impl;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lisi.cms.dao.ArticleMapper;
import com.lisi.cms.dao.ArticleTagMiddleMapper;
import com.lisi.cms.dao.TagMapper;
import com.lisi.cms.dao.UserMapper;
import com.lisi.cms.domain.Article;
import com.lisi.cms.domain.ArticleTagMiddleKey;
import com.lisi.cms.domain.Tag;
import com.lisi.cms.domain.User;
import com.lisi.cms.service.ArticleService;
import com.lisi.utils.FileUtil;

@Service
public class ArticleServiceImpl implements ArticleService {
	@Resource
	private ArticleMapper articleMapper;
	@Resource
	private TagMapper tagMapper;
	@Resource
	private ArticleTagMiddleMapper middleMapper;
	@Resource
	private UserMapper userMapper;

	@Override
	public List<Map> getArticlListByChannelId(Integer cid) {
		return articleMapper.getArticlListByChannelId(cid);
	}

	@Override
	public List<Map> getArticlListByCategorylId(Integer cid) {
		return articleMapper.getArticlListByCategorylId(cid);
	}

	@Override
	public Article selectByPrimaryKey(Integer id) {
		return articleMapper.selectByPrimaryKey(id);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return articleMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Article record) {
		return articleMapper.insert(record);
	}

	@Override
	public boolean insertSelective(Article article, String tagName) {

		try {

			// 1.===========向文章主表插入数据
			int i = articleMapper.insertSelective(article);

			// 对标签进行分割
			String[] split = tagName.split(",");

			Set<String> set = new HashSet<>();
			// 遍历标签,用FileUtil 工具类对标签进行处理,并放入set中,用于过滤重复的标签
			for (String str : split) {
				set.add(FileUtil.toUniqueTerm(str));
			}
			// 遍历标签 SET集合
			for (String str : set) {
				// 使用该标签去数据库查询,如果数据库已有该标签,则不在增加该标签
				Integer tagId = tagMapper.selectCount(str);
				if (null != tagId && tagId > 0) {
					// 向中间表插入数据
					middleMapper.insertSelective(new ArticleTagMiddleKey(article.getId(), tagId));
					continue;// 跳出本次循环,进行下一次循环
				}
				// 2========= 向标签表插入数据,并返回主键
				Tag tag = new Tag(str);
				tagMapper.insertSelective(tag);
				// 3============== 向中间表插入数据
				middleMapper.insertSelective(new ArticleTagMiddleKey(article.getId(), tag.getId()));
			}

			return true;

		} catch (Exception e) {

			throw new RuntimeException("发布失败");
		}

	}

	// 如果文章审核通过,则给改用户增加10个积分
	private static final Integer score = 10;

	@Override
	public int updateByPrimaryKeySelective(Article article) {
		// 获取发布文章的用户对象,
		User user = userMapper.selectByPrimaryKey(article.getUserId());
		// 让用户的积分在原有的基础上增加
		user.setScore(user.getScore() + score);
		userMapper.updateByPrimaryKeySelective(user);
		return articleMapper.updateByPrimaryKeySelective(article);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Article record) {
		return articleMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Article record) {
		return articleMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Map> getList(Integer status) {
		// TODO Auto-generated method stub
		return articleMapper.getList(status);
	}

	@Override
	public Map getArticleById(Integer id) {
		// TODO Auto-generated method stub
		return articleMapper.getArticleById(id);
	}

}
