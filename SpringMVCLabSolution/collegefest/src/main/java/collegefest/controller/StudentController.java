package collegefest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import collegefest.dao.StudentDao;
import collegefest.model.Student;

@Controller
//@RequestMapping("/students")
public class StudentController {
	
	@Autowired
	StudentDao studentDao;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("studentslist")
	public String showStudents(Model model) {
		List<Student> students = studentDao.getAllStudents();
		model.addAttribute("students", students);
		return "studentlist";
	}

	@GetMapping("showStudentAddForm")
	public String showStudentForm(Model model) {
		Student st = new Student();
		model.addAttribute("student", st);
		return "studentform";
	}
	
	@PostMapping("save")
	public String saveStudent(Model model, @ModelAttribute("student") Student student) {
		System.out.println(student);
		studentDao.addNewStudent(student);
		return "redirect:/studentslist";
	}
	
	@GetMapping("edit")
	public String updateStudent(Model model,@RequestParam("id")int id) {
		Student sd = studentDao.getStudentById(id);
		System.out.println(sd);
		model.addAttribute("student",sd);
		
		return "studentform";
	}
	
	@GetMapping("delete")
	public String deleteStudent(Model model,@RequestParam("id")int id) {
		studentDao.deleteStudent(id);
		return  "redirect:/studentslist";
	}

}
