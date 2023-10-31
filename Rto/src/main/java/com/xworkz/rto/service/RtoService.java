package com.xworkz.rto.service;

import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;

import com.xworkz.rto.dto.RtoDto;

public interface RtoService {
	
	public abstract Set<ConstraintViolation<RtoDto>> onSave(RtoDto dto);
	
	public abstract List<RtoDto> findAll();
	
	public RtoDto login(String email,String passWord);
	
	public List<RtoDto> findByState(String state);
	
	
}
