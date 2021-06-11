package com.bukke.spring.keep.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.domain.KeepPageInfo;
import com.bukke.spring.keep.store.KeepStore;

@Repository
public class KeepStoreLogic implements KeepStore {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 찜 모든 갯수
	@Override
	public int selectKeepListCount(String memberId) {
		return sqlSession.selectOne("keepMapper.totalKeepCount");
	}

	// 찜 모든 목록
	@Override
	public ArrayList<Keep> selectAllKeepList(KeepPageInfo pi, String memberId) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSession.selectList("keepMapper.selectAllKeepList", memberId, rowBounds);
	}
	
	// 클래스 찜 모든 갯수
	@Override
	public int selectClassKeepListCount(String memberId) {
		return sqlSession.selectOne("keepMapper.classKeepCount");
	}
	

	// 클래스 찜목록 조회
	@Override
	public ArrayList<Keep> selectAllBukkeClassKeep(KeepPageInfo piCla, String memberId) {
		int offset = (piCla.getCurrentPage() - 1) * piCla.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, piCla.getBoardLimit());
		return (ArrayList) sqlSession.selectList("keepMapper.selectAllClassKeepList", memberId, rowBounds);
	}

//	// 클래스 찜 상세
	public Keep selectOneBukkeClassKeep(Keep keep) {
		return sqlSession.selectOne("keepMapper.selectOneKeepClass", keep);
	}

	// 클래스 찜목록 추가
	@Override
	public int insertBukkeClasstoKeep(Keep keep) {
		return sqlSession.insert("keepMapper.insertKeepClass", keep);
	}

	// 클래스 찜목록 삭제
	@Override
	public int deleteBukkeClassfromKeep(Keep keep) {
		return sqlSession.delete("keepMapper.updateKeepClass", keep);
	}
	
	// 액티비티 모든 갯수
	@Override
	public int selectActivityKeepListCount(String memberId) {
		return sqlSession.selectOne("keepMapper.actKeepCount");
	}

	// 액티비티 찜목록 조회
	@Override
	public ArrayList<Keep> selectAllActivityKeep(KeepPageInfo piAct, String memberId) {
		int offset = (piAct.getCurrentPage() - 1) * piAct.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, piAct.getBoardLimit());
		return (ArrayList) sqlSession.selectList("keepMapper.selectAllActKeepList", memberId, rowBounds);
	}

	// 액티비티 찜 상세
//	@Override
	public Keep selectOneActivityKeep(Keep keep) {
		return sqlSession.selectOne("keepMapper.selectOneKeepActivity", keep);
	}

	// 액티비티 찜목록 추가
	@Override
	public int insertActivitytoKeep(Keep keep) {
		return sqlSession.insert("keepMapper.insertKeepActivity", keep);
	}

	// 액티비티 찜목록 삭제
	@Override
	public int deleteActivityfromKeep(Keep keep) {
		return sqlSession.delete("keepMapper.updateKeepActivity", keep);
	}

	// 액티비티 해당 게시글 당 찜 갯수
	@Override
	public int getActivityKeep(int activityNo) {
		return sqlSession.selectOne("keepMapper.getKeepOneActivityCount");
	}

	

}
