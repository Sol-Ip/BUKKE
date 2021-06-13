package com.bukke.spring.bukkeclass.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.bukkeclass.store.BukkeClassStore;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.shop.controller.ShopPageInfo;

@Repository
public class BukkeClassStoreLogic implements BukkeClassStore {

	@Autowired
	private SqlSessionTemplate session; 
	
	
	@Override
	public int selectListCount() {
		return session.selectOne("bclassMapper.selectListCount");
	}
	
	@Override
	public int selectFlowerListCount() {
		return session.selectOne("bclassMapper.selectFlowerListCount");
	}

	@Override
	public int selectArtListCount() {
		return session.selectOne("bclassMapper.selectArtListCount");
	}

	@Override
	public int selectBeautyListCount() {
		return session.selectOne("bclassMapper.selectBeautyListCount");
	}

	@Override
	public int selectMusicListCount() {
		return session.selectOne("bclassMapper.selectMusicListCount");
	}

	@Override
	public int selectPhotoListCount() {
		return session.selectOne("bclassMapper.selectPhotoListCount");
	}
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	@Override
	public ArrayList<BukkeClass> selectAllListBclass(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllList", null, rowBounds);
	}
	
	@Override
	public ArrayList<BukkeClass> selectFlowerBclass(PageInfo piFlower) {
		int offset = (piFlower.getCurrentPage() - 1) * piFlower.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, piFlower.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllFlowerList", null, rowBounds);
	}

	@Override
	public ArrayList<BukkeClass> selectArtBclass(PageInfo piArt) {
		int offset = (piArt.getCurrentPage() - 1) * piArt.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, piArt.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllArtList", null, rowBounds);
	}

	@Override
	public ArrayList<BukkeClass> selectBeautyBclass(PageInfo piBeauty) {
		int offset = (piBeauty.getCurrentPage() - 1) * piBeauty.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, piBeauty.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllBeautyList", null, rowBounds);
	}

	@Override
	public ArrayList<BukkeClass> selectMusicBclass(PageInfo piMusic) {
		int offset = (piMusic.getCurrentPage() - 1) * piMusic.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, piMusic.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllMusicList", null, rowBounds);
	}

	@Override
	public ArrayList<BukkeClass> selectPhotoBclass(PageInfo piPhoto) {
		int offset = (piPhoto.getCurrentPage() - 1) * piPhoto.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, piPhoto.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllPhotoList", null, rowBounds);
	}

	// 클래스 조회(페이징 없음)
	@Override
	public ArrayList<BukkeClass> selectAllListBclass() {
	    return (ArrayList)session.selectList("bclassMapper.selectAllList");
	}
	// 클래스 상세정보
	@Override
	public BukkeClass selectOneBclass(int classNo) {
		return session.selectOne("bclassMapper.selectOneBclass", classNo);
	}

	// 클래스 검색 (일반회원, 업체회원)
	@Override
	public ArrayList<BukkeClass> selectSearchListBclass(ClassSearch search) {
		return (ArrayList)session.selectList("bclassMapper.selectSearchBclass", search);
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
		return session.update("bclassMapper.deleteBclass", classNo);
	}

	// 클래스에서 TOP3 보여주기
	@Override
	public ArrayList<BukkeClass> selectTopThreeListBclass() {
		return (ArrayList)session.selectList("bclassMapper.selectTopThreeList");
	}

	@Override
	public ArrayList selectReservation() {
		return (ArrayList)session.selectList("reservationMapper.selectAllList");
	}

	@Override
	public ArrayList<BukkeClass> selectGiftListBclass(BukkeClass bClass) {
		// TODO Auto-generated method stub
		return (ArrayList)session.selectList("bclassMapper.selectGiftList", bClass);
	}

	@Override
	public int selectListCountbyId(String memberId) {
		// TODO Auto-generated method stub
		return session.selectOne("bclassMapper.selectListCountbyId",memberId);
	}

	@Override
	public ArrayList<BukkeClass> selectAllListBclassbyId(MemberPageInfo classPi, String memberId) {
		int offset = (classPi.getCurrentPage() - 1) * classPi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, classPi.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllListbyId", memberId, rowBounds);
	}

	@Override
	public int selectListcountbyMyId(String memberId) {
		// TODO Auto-generated method stub
		return session.selectOne("bclassMapper.selectListCountbyMyId",memberId);
	}

	@Override
	public ArrayList<BukkeClass> selectAllListBclassbyMyId(MemberPageInfo classPi, String memberId) {
		int offset = (classPi.getCurrentPage() - 1) * classPi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, classPi.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllListbyMyId", memberId, rowBounds);
	}

	@Override
	public int selectCountShop(String shopId) {
		// TODO Auto-generated method stub
		return session.selectOne("bclassMapper.selectListCountShopId",shopId);
	}

	@Override
	public ArrayList<BukkeClass> selectAllListBclassbyMyShop(ShopPageInfo shopPi, String shopId) {
		int offset = (shopPi.getCurrentPage() - 1) * shopPi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, shopPi.getBoardLimit());
	    return (ArrayList)session.selectList("bclassMapper.selectAllListbyShop", shopId, rowBounds);
	}

	@Override
	public ArrayList<BukkeClass> selectHomeFourClassListDesc() { // 클래스 최신 글 상위2개 목록 
		return (ArrayList)session.selectList("bclassMapper.selectHomeFourClassListDesc");
	}

}
