package com.bukke.schedule.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.schedule.domain.Schedule;
import com.bukke.schedule.service.ScheduleService;
import com.bukke.schedule.store.ScheduleStore;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	private ScheduleStore bStore;
	
	@Override
	public ArrayList<Schedule> printAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Schedule printOne(int scheduleNo) {
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
