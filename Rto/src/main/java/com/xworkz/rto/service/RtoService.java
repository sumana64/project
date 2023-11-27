package com.xworkz.rto.service;

import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;

import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.dto.UserDto;

public interface RtoService {
	
	public abstract Set<ConstraintViolation<RtoDto>> onSave(RtoDto dto);
	
	public abstract List<RtoDto> findAll();
	
	public RtoDto login(String email,String passWord);
	
	public List<RtoDto> findByState(String state);
	
	public abstract Set<ConstraintViolation<UserDto>> onSave(UserDto dto);
	
	public List<UserDto> searchByState(String state);

	public UserDto userLogin(String appNoorphoneNo,String dob);
	
	public abstract boolean updateById(int id);
}
