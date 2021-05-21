package com.bukke.spring.schedule.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.schedule.domain.Schedule;
import com.bukke.spring.schedule.service.ScheduleService;
import com.bukke.spring.schedule.store.ScheduleStore;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	private ScheduleStore bStore;

	@Override
	public ArrayList<Schedule> printAllSchedule() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Schedule printOneSchedule(int scheduleNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int registerSchedule(Schedule schedule) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeSchedule(int scheduleNo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}
