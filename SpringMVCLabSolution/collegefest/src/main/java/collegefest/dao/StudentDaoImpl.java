package collegefest.dao;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import collegefest.model.Student;

@Component
public class StudentDaoImpl implements StudentDao {
	
	@Autowired
	SessionFactory factory;

	@Override
	@Transactional
	public void addNewStudent(Student student) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(student);
		
	}

	@Override
	@Transactional
	public List<Student> getAllStudents() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Student");
		return query.getResultList();
	}

	@Override
	@Transactional
	public void deleteStudent (int StudentId) {
		Session session = factory.getCurrentSession();
		Student st = session.load(Student.class, StudentId);
		session.delete(st);
	}

	@Override
	@Transactional
	public Student getStudentById (int StudentId) {
		Session session = factory.getCurrentSession();
		Student st = session.get(Student.class, StudentId);
		System.out.println(st);
		return st;
	}
	
	

}
