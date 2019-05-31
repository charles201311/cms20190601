package com.lisi.cms.domain;

import java.util.Date;

public class Comment {
	
    private Integer id;

    private Integer userId;

    private Integer articleId;

    private Date created;

    private String content;
    
    
    

    public Comment(Integer userId, Integer articleId, String content) {
		super();
		this.userId = userId;
		this.articleId = articleId;
		this.content = content;
	}

	public Comment() {
		super();
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}