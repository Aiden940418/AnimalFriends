package com.anif.mvc;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import com.anif.mvc.uploadFile.dto.UploadFileDto;
import com.anif.mvc.uploadFile.validate.FileValidator;

@Controller
public class UploadImgController {
	
	@Autowired
	private FileValidator fileValidator;
	
	@RequestMapping(value = "form.do")
	public String getUploadForm() {
		return "uploadForm";
	}
	
	@RequestMapping(value = "upload.do")
	public String fileUpload(HttpServletRequest request, Model model, UploadFileDto dto, BindingResult result) {
		
		//유효성 검사, 파일의 크기가 0이면 리턴.
		fileValidator.validate(dto, result);
		if(result.hasErrors()) {
			return "uploadForm";
		}
		
		MultipartFile file = dto.getMpfile();
		String filename = file.getOriginalFilename();
		
		UploadFileDto fileobj = new UploadFileDto();
		fileobj.setName(filename);
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		try {
			inputStream = file.getInputStream();
			
			String path = WebUtils.getRealPath(request.getSession().getServletContext(), "/storage");
			
			System.out.println("업로드 될 실제 경로: "+path);
			
			File storage = new File(path);
			if(!storage.exists()) {//존재 여부 확인
				storage.mkdirs();  //디렉토리 만들기
			}
			
			File newfile = new File(path+"/"+filename);
			if(!newfile.exists()) {
				newfile.createNewFile();
			}
			
			outputStream = new FileOutputStream(newfile);
			
			int read = 0;
			byte[] b = new byte[(int)file.getSize()];
			
			while((read=inputStream.read(b)) != -1) {
				outputStream.write(b,0,read);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				inputStream.close();
				outputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		model.addAttribute("fileobj", fileobj);
		
		return "uploadFile";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
