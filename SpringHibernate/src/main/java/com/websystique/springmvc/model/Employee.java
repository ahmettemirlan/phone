package com.websystique.springmvc.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="Employee")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotEmpty
	@Column(name = "NAME", nullable = false)
	private String name;

	@NotEmpty
	@Column(name = "PHONE", nullable = false)
	private String phone;
	
	@NotEmpty
	@Column(name = "CITY", nullable = false)
	private String city;
        
        @NotEmpty
	@Column(name = "ADDRESS", nullable = false)
	private String address;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
        
        public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
        
        public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", phone="
				+ phone + ", city=" + city + ", address=" + address + "]";
	}
	
	
	

}
