package com.lisi.cms.domain;

public class ArticleTagMiddleKey {
    private Integer aid;

    private Integer tid;

    
    
    public ArticleTagMiddleKey() {
		super();
	}

	public ArticleTagMiddleKey(Integer aid, Integer tid) {
		super();
		this.aid = aid;
		this.tid = tid;
	}

	public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }
}