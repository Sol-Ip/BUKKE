package com.bukke.activity.domain;

public class ActivitySearch {
	
	private String activityCategory; // 액티비티 검색 카테고리
	private String activityKeyword; // 액티비티 검색 키워드
	
	
	public ActivitySearch() {
		// TODO Auto-generated constructor stub
	}
	
	public String getActivityCategory() {
		return activityCategory;
	}
	public void setActivityCategory(String activityCategory) {
		this.activityCategory = activityCategory;
	}
	public String getActivityKeyword() {
		return activityKeyword;
	}
	public void setActivityKeyword(String activityKeyword) {
		this.activityKeyword = activityKeyword;
	}

	@Override
	public String toString() {
		return "ActivitySearch [activityCategory=" + activityCategory + ", activityKeyword=" + activityKeyword + "]";
	}
	
	
}
