package com.bukke.spring.bukkeclass.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.bukkeclass.store.BukkeClassStore;

@Repository
public class BukkeClassStoreLogic implements BukkeClassStore {

	@Autowired
	private SqlSessionTemplate session; 
	
	
	@Override
	public int selectListCount() {
		return session.selectOne("bclassMapper.selectListCount");
	}
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	@Override
	public ArrayList<BukkeClass> selectAllListBclass(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllList", null, rowBounds);
	}

	// 클래스 상세정보
	@Override
	public BukkeClass selectOneBclass(int classNo) {
		return session.selectOne("bclassMapper.selectOneBclass", classNo);
	}

	// 클래스 검색 (일반회원, 업체회원)
	@Override
	public ArrayList<BukkeClass> selectSearchListBclass(String searchValue) {
		return null;
	}

	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	@Override
	public int insertBclass(BukkeClass bClass) {
		return session.insert("bclassMapper.insertBclass", bClass);
	}

	// 클래스 수정 (업체회원-클래스 수정 메뉴)
	@Override
	public int updateBclass(BukkeClass bClass) {
		return session.update("bclassMapper.updateBclass", bClass);
	}

	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	@Override
	public int deleteBclass(int classNo) {
		return 0;
	}

}
