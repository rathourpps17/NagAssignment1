package com.nagarro.training.libraryui.entities;


public class Authors {

	int id;

	String name;

	
	public Authors() {
		super();
	}

	public Authors(String name) {
		super();
		this.name = name;
	}

	public Authors(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

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

	@Override
	public String toString() {
		return "Authors [id=" + id + ", name=" + name + "]";
	}

}
