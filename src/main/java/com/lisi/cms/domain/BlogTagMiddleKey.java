package com.lisi.cms.domain;

public class BlogTagMiddleKey {
    private Integer bid;

    private Integer tid;
    
    
    

    public BlogTagMiddleKey(Integer bid, Integer tid) {
		super();
		this.bid = bid;
		this.tid = tid;
	}

	public BlogTagMiddleKey() {
		super();
	}

	public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }
}