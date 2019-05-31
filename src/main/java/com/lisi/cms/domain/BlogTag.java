package com.lisi.cms.domain;

public class BlogTag {
    private Integer tid;

    private String tname;
    
    
    

    public BlogTag() {
		super();
	}

	public BlogTag(Integer tid, String tname) {
		super();
		this.tid = tid;
		this.tname = tname;
	}

	public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }
}