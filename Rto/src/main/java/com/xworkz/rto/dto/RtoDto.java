package com.xworkz.rto.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Data
public class RtoDto {
	
	 // private int id;
	  
	  @Size(min = 3,max =15,message="check the firstName size min = 3 max = 30")
	  @NotBlank
	  @NotNull
	  private String firstName;
	  @NotBlank
	  @NotNull
	  private String lastName;
	  @NotBlank
	  @NotNull
	  private String dob;
	  @Positive
	  private long phoneNo;
	  @NotBlank
	  @NotNull
	  @Email
	  private String email;
	  @Size(min = 3,max =15,message="check the state size min = 3 max = 30")
	  @NotBlank
	  @NotNull
      private String state;
	  @Size(min = 3,max =15,message="check the district size min = 3 max = 30")
	  @NotBlank
	  @NotNull
	  private String district;
	  @Size(min = 3,max =15,message="check the password size min = 3 max = 30")
	  @NotBlank
	  @NotNull
	  private String passWord;
	  @Size(min = 3,max =15,message="check the confirmPassword size min = 3 max = 30")
	  @NotBlank
	  @NotNull
	  private String confirmPassWord;

}
