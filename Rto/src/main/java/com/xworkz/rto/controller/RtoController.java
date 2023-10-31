package com.xworkz.rto.controller;

import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.service.RtoService;

@Controller
@RequestMapping("/")
public class RtoController {

	@Autowired
	RtoService service;

	public RtoController() {
		System.out.println("RtoController object is created");
	}

	@PostMapping("/signUp")
	public String onSave(@ModelAttribute RtoDto dto, Model model) {
		List<RtoDto> dto1 = service.findAll();
		for (RtoDto rtoDto : dto1) {
			if (rtoDto.getEmail().equalsIgnoreCase(dto.getEmail())) {
				model.addAttribute("error", "email is already exist");
				return "SignUp";
			} else {
				Set<ConstraintViolation<RtoDto>> voilation = service.onSave(dto);
				if (voilation.isEmpty()) {
					model.addAttribute("message", "No voilation it is valid");
					model.addAttribute("dto", dto);
					return "Success";
				} else {
					model.addAttribute("voilation", voilation);
					return "SignUp";
				}
			}
		}
		return "Success";
	}

	@GetMapping("/findAll")
	public String findAll(Model model) {
		List<RtoDto> dto = service.findAll();
		model.addAttribute("dto1", dto);
		return "FindAll";

	}

	@GetMapping("/signIn")
	public String login(@RequestParam String email, @RequestParam String passWord, Model model) {
		RtoDto dto = service.login(email, passWord);
		if (dto != null) {
			model.addAttribute("dto", dto);
			return "Profile";
		} else {
			model.addAttribute("message", "invalid email nd password");
			return "SignIn";
		}

	}
	
	@GetMapping("/admin")
	public String admin(@RequestParam String email, @RequestParam String passWord, Model model) {
		RtoDto dto = service.login(email, passWord);
		if (dto != null) {
			model.addAttribute("dto", dto);
			return "AdminProfile";
		} else {
			model.addAttribute("message", "invalid email nd password");
			return "Admin";
		}

	}
	
	@GetMapping("/findByState")
	public String findByState(@RequestParam String state,Model model) {
		List<RtoDto> dto1 = service.findByState(state);
		if(dto1!=null) {
			model.addAttribute("dto1", dto1);
			return "AdminProfile";
		}else {
			model.addAttribute("message", "state is invalid");
			return "AdminProfile";
		}
				
	}

}
