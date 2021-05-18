package com.bukke.member.service.logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.member.domain.Member;
import com.bukke.member.service.MemberService;
import com.bukke.member.store.MemberStore;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberStore mStore;

	@Override
	public Member loginMember(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int checkIdDup(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int registerMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
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
	
	

}
