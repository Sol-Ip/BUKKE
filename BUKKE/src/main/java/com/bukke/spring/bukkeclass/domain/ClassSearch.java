package com.bukke.spring.bukkeclass.domain;

public class ClassSearch {
	
	private String classCategory; // 클래스 검색 카테고리
	private String classKeyword; // 클래스 검색 키워드
	public String getClassCategory() {
		return classCategory;
	}
	public void setClassCategory(String classCategory) {
		this.classCategory = classCategory;
	}
	public String getClassKeyword() {
		return classKeyword;
	}
	public void setClassKeyword(String classKeyword) {
		this.classKeyword = classKeyword;
	}
	@Override
	public String toString() {
		return "ClassSearch [classCategory=" + classCategory + ", classKeyword=" + classKeyword + "]";
	}
	
	

}
