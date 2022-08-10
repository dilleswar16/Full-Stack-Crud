package com.example.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.student.model.Student;
import com.example.student.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/")
	public ModelAndView hello() {
		return new ModelAndView("home");
		}
	
	//display all students in DB
	@GetMapping("/allStudents")
	public String getAllStudents(Model model) {
		model.addAttribute("listStudents", studentService.getAllStudents());
		return "home";
	}
	
	@GetMapping("/addStudent")
	public String saveStudent(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "addStudent";
	}
	
	@PostMapping("/addStudent")
	public String saveStudentForm(@ModelAttribute("student") Student student) {
		//save student in DB
		studentService.saveStudent(student);
		return "redirect:/allStudents";
		
	}
	
	@GetMapping("/updateStudent/{id}")
	public String updateStudent(@PathVariable long id,Model model) {
		
		Student student = studentService.getStudentById(id);
		
		model.addAttribute("student", student);
		return "updateStudent";
	}
	
	@GetMapping("/deleteStudent/{id}")
	public String deleteStudent(@PathVariable long id) {
		studentService.deleteStudentById(id);
		return "redirect:/allStudents";
	}
	

}
