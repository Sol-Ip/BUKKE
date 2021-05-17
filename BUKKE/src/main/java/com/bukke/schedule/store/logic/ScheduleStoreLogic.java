package com.bukke.schedule.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bukke.schedule.domain.Schedule;
import com.bukke.schedule.store.ScheduleStore;
@Repository
public class ScheduleStoreLogic implements ScheduleStore{
	private SqlSessionTemplate session; 
	
	@Override
	public ArrayList<Schedule> printAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Schedule selectOne(int scheduleNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertSchedule(Schedule schedule) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSchedule(int scheduleNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
