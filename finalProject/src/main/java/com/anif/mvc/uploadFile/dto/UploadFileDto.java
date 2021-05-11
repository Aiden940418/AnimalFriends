package com.anif.mvc.uploadFile.dto;

import org.springframework.web.multipart.MultipartFile;

public class UploadFileDto {
	private String name;
	private MultipartFile mpfile;
	
	public UploadFileDto() {
		super();
	}

	public UploadFileDto(String name, MultipartFile mpfile) {
		super();
		this.name = name;
		this.mpfile = mpfile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public MultipartFile getMpfile() {
		return mpfile;
	}

	public void setMpfile(MultipartFile mpfile) {
		this.mpfile = mpfile;
	}
	
	
	
}
