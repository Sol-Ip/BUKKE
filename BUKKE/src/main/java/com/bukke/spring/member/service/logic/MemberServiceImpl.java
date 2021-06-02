package com.bukke.spring.member.service.logic;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.service.MemberService;
import com.bukke.spring.member.store.MemberStore;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberStore mStore;

	@Override
	public Member loginMember(Member member) {
		Member loginMember = mStore.selectOneMember(member);
		return loginMember;
	}
	
	// 카카오 계정 존재여부 확인
	@Override
	public int loginKakao(Member member) {
		int result = mStore.loginKakao(member);
		return result;
	}
	
	// 카카오 계정 회원가입
	@Override
	public int registerKakao(Member member) {
		int result = mStore.registerKakao(member);
		return result;
	}

	@Override
	public int checkIdDup(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int registerMember(Member member) {
		int result = mStore.insertMember(member);
		return result;
	}

	@Override
	public int modifyMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member searchMemberId(Member member) {
		return mStore.selectMemberId(member);
	}

	@Override
	public Member searchMemberPw(Member member) {
		return mStore.selectMemberPw(member);
	}

	@Override
	public int modifyPw(Member member) {
		int result = mStore.updatePw(member);
		return result;
	}
	
	

}
