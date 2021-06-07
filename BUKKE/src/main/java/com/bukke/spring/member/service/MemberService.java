package com.bukke.spring.member.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.bukke.spring.member.domain.Member;

public interface MemberService {
	
	public Member loginMember(Member member);
	public int loginKakao(Member member);
	public int registerKakao(Member member);
	public int checkIdDup(String memberId);
	public int registerMember(Member member);
	public int modifyMember(Member member);
	public int deleteMember(String memberId);
	public Member searchMemberId(Member member);
	public Member searchMemberPw(Member member);
	public int modifyPw(Member member);
	public int getListCount();
	public ArrayList<Member> printAllMember();
}
