package com.xworkz.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Data
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "rto_table")
@NamedQuery(name = "findAll", query = "select rt from RtoEntity rt")
@NamedQuery(name="findByEmail",query = "select rt from RtoEntity rt where rt.email=:email and rt.passWord=:passWord")
@NamedQuery(name="findByState",query = "select rt from RtoEntity rt where rt.state=:state")
public class RtoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String firstName;

	private String lastName;

	private String dob;

	private long phoneNo;

	private String email;

	private String state;

	private String district;

	private String passWord;

	private String confirmPassWord;

	private LocalDateTime createdOn;

}
