package com.peng.entity;
/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:24:47 
 * @version 1.0 
 * @return  
 */
/**
 * tbl_peng_content
 * @author Peng
 *
 */
public class Story {
	private int id ;
	private String content ; //内容
	private String author ; //作者
	private String createTime ; //吹牛皮时间
	private String realizeTime ; //牛皮实现时间
	private String originPlace ; //牛皮起源的地方，知名网站、报纸、电视
	private int clickTime ; //点击量
	private int agreeTime ; //点赞数
	private int show ; //是否显示1显示，0不显示
	private int  StoryType ;//故事类型：1、时事、2政治、3企业、4个人
	private String StroyTag;//故事的标签
	private int Source ;//牛皮来源：1、用户提供；0蜘蛛抓取
	private String Url ;//来源URL地址
	public int getStoryType() {
		return StoryType;
	}
	public void setStoryType(int storyType) {
		StoryType = storyType;
	}
	public String getStroyTag() {
		return StroyTag;
	}
	public void setStroyTag(String stroyTag) {
		StroyTag = stroyTag;
	}
	public int getSource() {
		return Source;
	}
	public void setSource(int source) {
		Source = source;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getRealizeTime() {
		return realizeTime;
	}
	public void setRealizeTime(String realizeTime) {
		this.realizeTime = realizeTime;
	}
	public String getOriginPlace() {
		return originPlace;
	}
	public void setOriginPlace(String originPlace) {
		this.originPlace = originPlace;
	}
	public int getClickTime() {
		return clickTime;
	}
	public void setClickTime(int clickTime) {
		this.clickTime = clickTime;
	}
	public int getAgreeTime() {
		return agreeTime;
	}
	public void setAgreeTime(int agreeTime) {
		this.agreeTime = agreeTime;
	}
	public int getShow() {
		return show;
	}
	public void setShow(int show) {
		this.show = show;
	}
	
	
}

