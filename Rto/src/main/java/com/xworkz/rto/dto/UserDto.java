package com.xworkz.rto.dto;

import java.time.LocalDateTime;

import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {

	private int id;
	@Size(min = 3, max = 15, message = "check the firstName size min = 3 max = 30")
	@NotBlank
	@NotNull
	private String fname;
	@Size(min = 3, max = 15, message = "check the middleName size min = 3 max = 30")
	@NotBlank
	@NotNull
	private String mname;
	@Size(min = 1, max = 50, message = "check the lastName size min = 10 max = 50")
	@NotBlank
	@NotNull
	private String lname;
	@NotBlank
	@NotNull
	private String gender;
	@Size(min = 3, max = 150, message = "check the state size min = 3 max = 150")
	@NotBlank
	@NotNull
	private String state;
	@Size(min = 3, max = 150, message = "check the country size min = 3 max = 150")
	@NotBlank
	@NotNull
	private String country;
	@NotBlank
	@NotNull
	private String dob;
	@Positive
	private int age;
	@NotBlank
	@NotNull
	private String bloodGroup;
	@Size(min = 3, max = 50, message = "check the qualification size min = 3 max = 50")
	@NotBlank
	@NotNull
	private String qualification;
	@NotBlank
	@NotNull
	private String placeOfBirth;
	@Size(min = 3, max = 50, message = "check the rtoLocation  size min = 3 max = 50")
	@NotBlank
	@NotNull
	private String rtoLocation;
	@Positive
	private int pinCode;
	@NotBlank
	@NotNull
	@Email
	private String email;
	@Positive
	private long phoneNo;
	@Positive
	private long aadharNo;
	@NotBlank
	@NotNull
	private String permanentAddress;
	@NotBlank
	@NotNull
	private String currentAddress;
	@NotBlank
	@NotNull
	private String applicationNo;
	private LocalDateTime registeredTime;
	private String status;
	
	

}
