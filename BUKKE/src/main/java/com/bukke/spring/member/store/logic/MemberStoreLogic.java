package com.bukke.spring.member.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.store.MemberStore;
import com.bukke.spring.review.domain.Review;

@Repository
public class MemberStoreLogic implements MemberStore {
	
	@Autowired
	private SqlSessionTemplate session; 

	@Override
	public Member selectOneMember(Member member) {
		Member loginMember = session.selectOne("memberMapper.selectOneMember",member);
		return loginMember;
	}
	
	// 카카오 계정 존재여부 확인(이메일 중복확인도 가능)
	@Override
	public int loginKakao(Member member) {
		int result = session.selectOne("memberMapper.kakaoLogin",member);
		return result;
	}
	// 카카오 계정 회원가입
	@Override
	public int registerKakao(Member member) {
		int result = session.insert("memberMapper.kakaoRegister",member);
		return result;
	}

	// 아이디 중복확인
	@Override
	public int checkIdDup(String memberId) {
		int result = session.selectOne("memberMapper.checkIdDup",memberId);
		return result;
	}

	@Override
	public int insertMember(Member member) {
		int result = session.insert("memberMapper.insertMember",member);
		return result;
	}

	@Override
	public int updateMember(Member member) {
		int result = session.update("memberMapper.updateMember",member);
		return result;
	}
	
	@Override
	public int updateKakaoUser(Member member) {
		int result = session.update("memberMapper.updateKakaoUser",member);
		return result;
	}

	@Override
	public int deleteMember(String memberId) {
		int result = session.delete("memberMapper.deleteMember",memberId);
		return result;
	}

	@Override
	public Member selectMemberId(Member member) {
		return session.selectOne("memberMapper.searchMemberId",member);
	}

	@Override
	public Member selectMemberPw(Member member) {
		return session.selectOne("memberMapper.searchMemberPw",member);
	}

	@Override
	public int updatePw(Member member) {
		
		int result = session.update("memberMapper.updatePw",member);
		return result;
	}

	@Override
	public int selectMemberListCount() {
		// TODO Auto-generated method stub
		return session.selectOne("memberMapper.selectMemberListCount");
	}

	@Override
	public ArrayList<Member> selectMemberList() {
		// TODO Auto-generated method stub
		return (ArrayList)session.selectList("memberMapper.selectUserList");
	}
	
	
}
