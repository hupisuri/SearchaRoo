package at.stefanproell.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="employees")
public class Employee {
	@Id
	@Column(name="emp_no")
	private int employee_id;
	
	@Column(name="birth_date")
	private Date birthdate;
	
	@Column(name="first_name")
	private String firstname;
	
	@Column(name="last_name")
	private String lastname;
	
	@Column(name="gender",columnDefinition = "ENUM('M', 'F', 'UNKNOWN') DEFAULT 'UNKNOWN'")
	@Enumerated(EnumType.STRING)
	private Gender gender;
	
	@Column(name="hire_date")
	private Date hireDate;

	@OneToMany(mappedBy="employee")
	List<Title> titles; 
	
	@OneToMany(mappedBy="employee")
	List<Department_Employee> employee_department;

	
	
	public int getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public Date getHireDate() {
		return hireDate;
	}

	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	
	
}
