package com.yesenia.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table( name = "languages" )
public class Language {
	
	@Id
	//@NotNull
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	private Long id;
	
	@NotNull(message="Name cannot be null.")
	@Size(min=3, max = 20, message="Name must be between 3 and 20 characters.")
	private String name;
	
	@NotNull(message="Creator cannot be null.")
	@Size(min=3, max = 20, message="Creator must be between 3 and 20 characters.")
	private String creator;
	
	@NotNull(message="Version cannot be null.")
	private Float version;
	
	public Language() {} ///
	
	//Constructor
	
	public Language( String name, String creator, Float version ) {
		//this.id = id;
		this.name = name;
		this.creator = creator;
		this.version = version;
	}
	
	//Source -> Getters and setters

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Float getVersion() {
		return version;
	}

	public void setVersion(Float version) {
		this.version = version;
	}
}
