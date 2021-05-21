package com.bukke.spring.keep.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.store.KeepStore;

@Repository
public class KeepStoreLogic implements KeepStore {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<BukkeClass> selectClassKeep(String memberId) {
		// 클래스 찜목록 조회
		return null;
	}

	@Override
	public ArrayList<Activity> selectActivityKeep(String memberId) {
		// 액티비티 찜목록 조회
		return null;
	}

	@Override
	public int insertBukkeClasstoKeep(BukkeClass bClass) {
		// 클래스 찜목록 추가
		return 0;
	}

	@Override
	public int insertActivitytoKeep(Activity activity) {
		// 액티비티 찜목록 추가
		return 0;
	}

	@Override
	public int deleteBukkeClassfromKeep(int keepNo) {
		// 클래스 찜목록 삭제
		return 0;
	}

	@Override
	public int deleteActivityfromKeep(int keepNo) {
		// 액티비티 찜목록 삭제
		return 0;
	}

}
