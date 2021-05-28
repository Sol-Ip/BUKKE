package com.bukke.spring.member.store;

import com.bukke.spring.member.domain.Member;

public interface MemberStore {
	
	public Member selectOneMember(Member member);
	public int checkIdDup(String memberId);
	public int insertMember(Member member);
	public int updateMember(Member member);
	public int deleteMember(String memberId);
	public Member selectMemberId(Member member);
	public int selectMemberPw(Member member);

}
