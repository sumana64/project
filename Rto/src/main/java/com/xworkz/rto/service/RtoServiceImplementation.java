package com.xworkz.rto.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xworkz.entity.RtoEntity;
import com.xworkz.entity.UserEntity;
import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.dto.UserDto;
import com.xworkz.rto.repository.RtoRepository;

@Service
public class RtoServiceImplementation implements RtoService {

	@Autowired
	RtoRepository repo;

	public RtoServiceImplementation() {
		System.out.println("RtoServiceImplementation object is created");
	}

	@Override
	public Set<ConstraintViolation<RtoDto>> onSave(RtoDto dto) {
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();// validation is class consist of static
																				// methods which returns vlidation
																				// factory
		Validator valid = factory.getValidator();// it checks the constraint to which the properties are addded
		Set<ConstraintViolation<RtoDto>> voilations = valid.validate(dto);
		if (voilations.isEmpty()) {
			System.out.println("dto is valid successfully");
			repo.OnSave(dto);
		} else {
			System.out.println("voilation are present" + voilations);
			return voilations;
		}

		return voilations;
	}

	@Override
	public List<RtoDto> findAll() {
		System.out.println("this is findAll method in service");
		List<RtoEntity> entity = repo.findAll();
		System.out.println(entity);
		List<RtoDto> dtoList = new ArrayList<RtoDto>();
		for (RtoEntity en : entity) {
			RtoDto dto = new RtoDto();
			BeanUtils.copyProperties(en, dto);
			dtoList.add(dto);
			System.out.println(dto);
		}

		System.out.println("dtoList" + dtoList);
		return dtoList;
	}

	@Override
	public RtoDto login(String email, String passWord) {
		RtoDto dto = new RtoDto();
		if (email != null && passWord != null) {
			RtoEntity entity = repo.login(email, passWord);
			System.out.println("email nd password is valid");
			if (entity != null) {
				System.out.println("entity is not null");
				BeanUtils.copyProperties(entity, dto);
				if (dto.getEmail().equalsIgnoreCase(email) && dto.getPassWord().equalsIgnoreCase(passWord)) {
					return dto;
				} else {
					System.out.println("email and password is not equal");
				}
			} else {
				System.out.println("entity is null");
			}
		} else {
			System.out.println("email nd password is not valid");
		}
		return null;
	}

	@Override
	public List<RtoDto> findByState(String state) {
		List<RtoDto> dtoList = new ArrayList<RtoDto>();
		if (state != null) {
			List<RtoEntity> entity = repo.findByState(state);
			System.out.println("state is not null");
			if (!entity.isEmpty()) {
				for (RtoEntity en : entity) {
					RtoDto dto = new RtoDto();
					System.out.println("entity is not null");
					System.out.println(en);
					BeanUtils.copyProperties(en, dto);
					if (dto.getState().equalsIgnoreCase(state)) {
						dtoList.add(dto);
						System.out.println(dtoList);
					}

				}

			} else {
				System.out.println("entity is null");
			}
		} else {
			System.out.println("state is null");
		}
		return dtoList;
	}

	@Override
	public Set<ConstraintViolation<UserDto>> onSave(UserDto dto) {
		String code = null;
		int randonNumber = (int) ((Math.random()* 800)); 
		String otp = String.valueOf(randonNumber); 
		if(dto.getState().equals("karnataka")) { 
			code = "KA2023LLR" + otp; 
		}
		dto.setApplicationNo(code);
	
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator valid = factory.getValidator();
		Set<ConstraintViolation<UserDto>> voilations = valid.validate(dto);
		if (voilations.isEmpty()) {
			System.out.println("dto is valid successfully");
			repo.OnSave(dto);
		} else {
			System.out.println("voilation are present" + voilations);
			return voilations;
		}

		return voilations;
	}

	@Override
	public List<UserDto> searchByState(String state) {
		List<UserDto> dtoList = new ArrayList<UserDto>();
		if (state != null) {
			List<UserEntity> entity = repo.searchByState(state);
			System.out.println("state is not null");
			if (!entity.isEmpty()) {
				for (UserEntity en : entity) {
					UserDto dto = new UserDto();
					System.out.println("entity is not null");
					System.out.println(en);
					BeanUtils.copyProperties(en, dto);
					if (dto.getState().equalsIgnoreCase(state)) {
						dtoList.add(dto);
						System.out.println(dtoList);
					}

				}

			} else {
				System.out.println("entity is null");
			}
		} else {
			System.out.println("state is null");
		}
		return dtoList;
	}

	@Override
	public UserDto userLogin(String appNoorphoneNo, String dob) {
		UserDto dto = new UserDto();
		if(appNoorphoneNo!=null &&  dob!= null) {
	   UserEntity entity  =  repo.userLogin(appNoorphoneNo, dob);
	   System.out.println("phoneNo nd dob is valid");
			if (entity != null) {
				System.out.println("entity is not null");
				BeanUtils.copyProperties(entity, dto);
				if (dto.getApplicationNo().equals(appNoorphoneNo) && dto.getDob().equals(dob)) {
					return dto;
				} else {
					System.out.println("phoneNo and dob is not equal");
				}
			} else {
				System.out.println("entity is null");
			}
		} else {
			System.out.println("credentials is not valid");
		}
		return null;
	
	}

	@Override
	public boolean updateById(int id) {
      	boolean update = repo.updateById(id);
		return update;
	}

}
