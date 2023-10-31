package com.xworkz.rto.repository;

import java.util.List;

import com.xworkz.entity.RtoEntity;
import com.xworkz.rto.dto.RtoDto;

public interface RtoRepository {
	
	public abstract boolean OnSave(RtoDto dto);
	
	public abstract List<RtoEntity> findAll();
	
	public RtoEntity login(String email,String passWord);
	
	public abstract List<RtoEntity> findByState(String state);
	

}
