package com.peng.entity;

import java.util.Date;


public class Story {
    private Integer id;
    
    private String title;

    private String content;

    private String author;

    private String createtime;

    private String realizetime;

    private String originplace;

    private Integer clicktime;

    private Integer agreetime;

    private Integer IsShow;

    private String storytype;

    private String stroytag;

    private Integer source;

    private String url;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getRealizetime() {
        return realizetime;
    }

    public void setRealizetime(String realizetime) {
        this.realizetime = realizetime;
    }

    public String getOriginplace() {
        return originplace;
    }

    public void setOriginplace(String originplace) {
        this.originplace = originplace == null ? null : originplace.trim();
    }

    public Integer getClicktime() {
        return clicktime;
    }

    public void setClicktime(Integer clicktime) {
        this.clicktime = clicktime;
    }

    public Integer getAgreetime() {
        return agreetime;
    }

    public void setAgreetime(Integer agreetime) {
        this.agreetime = agreetime;
    }

    public Integer getShow() {
        return IsShow;
    }

    public void setShow(Integer show) {
        this.IsShow = show;
    }

    public String getStorytype() {
        return storytype;
    }

    public void setStorytype(String storytype) {
        this.storytype = storytype == null ? null : storytype.trim();
    }

    public String getStroytag() {
        return stroytag;
    }

    public void setStroytag(String stroytag) {
        this.stroytag = stroytag == null ? null : stroytag.trim();
    }

    public Integer getSource() {
        return source;
    }

    public void setSource(Integer source) {
        this.source = source;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
}