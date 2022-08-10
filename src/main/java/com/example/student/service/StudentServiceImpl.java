package com.example.student.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.student.model.Student;
import com.example.student.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public void saveStudent(Student student) {

		studentRepository.save(student);
	}

	@Override
	public Student getStudentById(long id) {
		
		Optional<Student> optional = studentRepository.findById(id);
		Student student = null;
		
		student = optional.get();
		
		return student;
		
	}

	@Override
	public void deleteStudentById(long id) {
		studentRepository.deleteById(id);
	}

}
