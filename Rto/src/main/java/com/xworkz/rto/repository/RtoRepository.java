package com.xworkz.rto.repository;

import java.util.List;

import com.xworkz.entity.RtoEntity;
import com.xworkz.entity.UserEntity;
import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.dto.UserDto;

public interface RtoRepository {
	
	public abstract boolean OnSave(RtoDto dto);
	
	public abstract List<RtoEntity> findAll();
	
	public RtoEntity login(String email,String passWord);
	
	public abstract List<RtoEntity> findByState(String state);
	
	public abstract boolean OnSave(UserDto dto);
	
	public abstract List<UserEntity> searchByState(String state);

	public abstract UserEntity userLogin(String appNoorphoneNo, String dob);
	
	public abstract boolean updateById(int id);

	
}
