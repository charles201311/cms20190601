package com.lisi.cms.domain;

public class Tag {
    private Integer id;

    private String name;

    
    
    public Tag(String name) {
		super();
		this.name = name;
	}



	public Tag() {
		super();
	}



	public Integer getId() {
        return id;
    }

    
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}