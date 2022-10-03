package collegefest.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import collegefest.model.Student;

@Component
public interface StudentDao {
	
	public void addNewStudent (Student studentDetail);
	public List<Student> getAllStudents();
	public void deleteStudent (int StudentId);
	public Student getStudentById (int StudentId);

}
