package com.xworkz.rto.dto;

import java.util.Locale;

public class Number {

	public static void main(String[] args) {
		
	
	for(int i=1;i<100;i++) {
		
		String res = String.format(Locale.getDefault(), "%03d",i);
		
		System.out.println(res);
	}
  
	/*
	 * int randonNumber = (int) ((Math.random()* 800)); //String otp =
	 * String.valueOf(randonNumber); String code = null;
	 * if(dto.getState().equals("karnataka")) { //code = "KA2023LLR" + otp; }
	 * dto.setApplicationNo(code);
	 */
	 
	

}
}