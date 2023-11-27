package com.xworkz.entity;

import java.time.LocalDateTime;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="user_table")
@NamedQuery(name="searchByState",query = "select rt from UserEntity rt where rt.state=:state")
@NamedQuery(name="findByLogin",query = "select rt from UserEntity rt where rt.applicationNo = :aporpn or rt.phoneNo=:aporpn and rt.dob=:dob")
public class UserEntity {
	
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int id;
        
        private String fname;
        
        private String mname;
        
        private String lname;
        
        private String gender;
        
        private String state;
        
        private String country;
        
        private String dob;
        
        private int age;
        
        private String bloodGroup;
        
        private String qualification;
        
        private String placeOfBirth;
        
        private String rtoLocation;
        
        private int pinCode;
        
        private String email;
        
        private long phoneNo;
        
        private long aadharNo;
        
        private String permanentAddress;
        
        private String currentAddress;
        
        private LocalDateTime registeredTime;
        
        private String applicationNo;
        
        private String status;
        
       
        
         
}
