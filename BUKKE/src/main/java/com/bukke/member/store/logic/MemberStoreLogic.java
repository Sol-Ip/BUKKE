package com.bukke.member.store.logic;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.member.domain.Member;
import com.bukke.member.store.MemberStore;

@Repository
public class MemberStoreLogic implements MemberStore {
	
	@Autowired
	private SqlSessionTemplate session; 

	@Override
	public Member selectOneMember(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int checkIdDup(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}