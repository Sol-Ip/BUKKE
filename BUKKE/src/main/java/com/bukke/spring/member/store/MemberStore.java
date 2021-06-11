package com.bukke.spring.member.store;

import java.util.ArrayList;

import com.bukke.spring.member.domain.Member;

public interface MemberStore {
	
	public Member selectOneMember(Member member);
	public int loginKakao(Member member);
	public int registerKakao(Member member);
	public int checkIdDup(String memberId);
	public int insertMember(Member member);
	public int updateMember(Member member);
	public int updateKakaoUser(Member member);
	public int deleteMember(String memberId);
	public Member selectMemberId(Member member);
	public Member selectMemberPw(Member member);
	public int updatePw(Member member);
	public int selectMemberListCount();
	public ArrayList<Member> selectMemberList();

}
