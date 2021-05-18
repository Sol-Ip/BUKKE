package com.bukke.spring.schedule.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bukke.spring.schedule.domain.Schedule;
import com.bukke.spring.schedule.store.ScheduleStore;
@Repository
public class ScheduleStoreLogic implements ScheduleStore{
	private SqlSessionTemplate session;

	@Override
	public ArrayList<Schedule> selectAllScheduleList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Schedule selectOneSchedule(int scheduleNo) {
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
