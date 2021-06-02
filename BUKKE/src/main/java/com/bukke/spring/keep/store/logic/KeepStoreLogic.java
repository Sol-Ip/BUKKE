package com.bukke.spring.keep.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.store.KeepStore;

@Repository
public class KeepStoreLogic implements KeepStore {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 클래스 찜목록 조회
	@Override
	public ArrayList<BukkeClass> selectClassKeep(String memberId) {
		return null;
	}

	// 클래스 찜목록 추가
	@Override
	public int insertBukkeClasstoKeep(BukkeClass bClass) {
		return 0;
	}
	
	// 클래스 찜목록 삭제
	@Override
	public int deleteBukkeClassfromKeep(int keepNo) {
		return 0;
	}

	// 액티비티 찜목록 조회
	@Override
	public ArrayList<Activity> selectActivityKeep(String memberId) {
		return null;
	}

	// 액티비티 찜목록 추가
	@Override
	public int insertActivitytoKeep(Keep keep) {
		return sqlSession.insert("keepMapper.insertKeepActivity" , keep);
	}

	// 액티비티 찜목록 삭제
	@Override
	public int deleteActivityfromKeep(int keepNo) {
		return sqlSession.delete("keepMapper.updateKeepActivity", keepNo);
	}

}
