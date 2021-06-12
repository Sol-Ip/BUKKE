package com.bukke.spring.activity.store.logic;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;
import com.bukke.spring.activity.domain.ActivitySearch;
import com.bukke.spring.activity.store.ActivityStore;
import com.bukke.spring.member.domain.MemberPageInfo;

@Repository
public class ActivityStoreLogic implements ActivityStore {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount() { // 게시물 전체 수 카운트
		return sqlSession.selectOne("activityMapper.selectListActivityCount");
	}
	
	@Override
	public ArrayList<Activity> selectAllActivityList(ActivityPageInfo pi) { //액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 포함
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("activityMapper.selectAllActivityList", null, rowBounds);
	}

	@Override
	public ArrayList<Activity> selectAllActivityList() { // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 미포함
		return (ArrayList)sqlSession.selectList("activityMapper.selectAllActivityList");
	}

	public ArrayList<Activity> selectTopThreeActivityList() {
		return (ArrayList)sqlSession.selectList("activityMapper.selectThreeActivityList");
	}
	
	@Override
	public Activity selectOneActivity(int activityNo) { // 액티비티 상세정보
		return sqlSession.selectOne("activityMapper.selectActivityOne", activityNo);
	}

	@Override
	public ArrayList<Activity> searchActivityList(ActivitySearch activitySearch) { //액티비티 검색 (일반회원, 업체회원)
		return (ArrayList)sqlSession.selectList("activityMapper.selectSearchAllList", activitySearch);
	}

	@Override
	public int insertActivity(Activity activity) { // 액티비티 등록 (업체회원-액티비티 등록 메뉴)
		return sqlSession.insert("activityMapper.insertActivity", activity);
	}
	
	@Override
	public ArrayList<Activity> selectActivityType(String activityType) { // 액티비티 (분류 선택 시) 상세분류 출력
		return (ArrayList)sqlSession.selectList("activityMapper.selectActivityType",activityType);
	}

	@Override
	public int updateActivity(Activity activity) { // 액티비티 수정 (업체회원-액티비티 수정 메뉴)
		return sqlSession.update("activityMapper.updateActivity", activity);
	}

	@Override
	public int deleteActivity(int activityNo) { // 액티비티 삭제 (업체회원-액티비티 삭제 메뉴)
		return sqlSession.delete("activityMapper.deleteActivity", activityNo);
	}

	@Override
	public ArrayList selectKeepActivity() { // 찜 목록에 액티비티 출력
		return (ArrayList)sqlSession.selectList("keepMapper.selectAllKeepList");
	}

//	@Override
//	public ArrayList<Activity> searchActivityList(ActivitySearch activitySearch) {
//		return null;
//	}
//	
//	@Override
//	public ArrayList<Activity> selectSearchAllList(String activitySearch) { //액티비티 검색(21.06.07)
//		return (ArrayList)sqlSession.selectList("activityMapper.selectSearchAllList", activitySearch);
//	}

	@Override
	public ArrayList<Activity> selectActivityTypeList(String activityType) { // 액티비티 타입에 따른 리스트 출력
		return (ArrayList)sqlSession.selectList("activityMapper.selectActivityTypeList", activityType);
	}

	@Override
	public ArrayList<Activity> selectActivityDetailTypeList(HashMap<String, String> actDetailMap) { // 액티비티 타입 후 디테일타입에 따른 리스트 출력
		return (ArrayList)sqlSession.selectList("activityMapper.selectActivityDetailTypeList",  actDetailMap);
	}

	
	@Override
	public int selectListCountbyId(String memberId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("activityMapper.selectListActivityCountbyId", memberId);
	}

	@Override
	public ArrayList<Activity> selectAllActivityListbyId(MemberPageInfo actPi, String memberId) {
		int offset = (actPi.getCurrentPage() - 1) * actPi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, actPi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("activityMapper.selectAllActivityListbyId", memberId, rowBounds);
	}

	@Override
	public int getListCountShopId(String shopId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("activityMapper.selectListActivityCountShopId",shopId);
	}

	
	
	
//	//마이페이지 내 예약 조회
//	@Override
//	public int selectListCountbyOneId(String memberId) {
//		return sqlSession.selectOne("activityMapper.selectListActivityCountbyMyId", memberId);
//	}
//	//마이페이지 내 예약 조회
//	@Override
//	public ArrayList<Activity> selectAllactivityListOneId(MemberPageInfo actPi, String memberId) {
//		int offset = (actPi.getCurrentPage() - 1) * actPi.getBoardLimit();
//		RowBounds rowBounds = new RowBounds(offset, actPi.getBoardLimit());
//		return (ArrayList)sqlSession.selectList("activityMapper.selectAllActivityListbyMyId", memberId, rowBounds);
//	}


	


}
