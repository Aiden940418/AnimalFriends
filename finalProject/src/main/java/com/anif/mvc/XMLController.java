package com.anif.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anif.mvc.shelter.biz.APISerializer;

@Controller
public class XMLController {
	
	@Autowired
	private APISerializer apiSerializer;
	
	
	@RequestMapping(value = "/zipXML.do", method = RequestMethod.POST, produces = "application/xml; charset=utf-8;")
    @ResponseBody
    public String zipXML() throws Exception{
        String resultXML = null;
 
        
        //servicekey : 일반 인증키
        String serviceKey="yhnAOXyPMDMFvTAQ%2Fec4tE8%2BNBWLOqz9%2FW2n7UpC9KCIey7%2BNpfr%2FjHSH6D4YPik2RSbkTKsQcnujlct7lvj7g%3D%3D";
        String spec ="http://openapi.animal.go.kr/openapi/service/rest/animalShelterSrvc/shelterInfo?";
        String numOfRows = "&numOfRows=243";
        
        spec += "serviceKey="+serviceKey + numOfRows;
        
        resultXML = apiSerializer.receiveXmlToJson(spec);
        
        return resultXML;
    }
	
	
	


}
