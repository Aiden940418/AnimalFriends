package com.anif.mvc;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anif.mvc.shelter.biz.APISerializer;

@Controller
public class ShelterController {

	//로그 사용 위한 logger 
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private APISerializer apiSerializer;
	
	
	//보호시설 공공데이터 api 호출 코드
	@RequestMapping(value = "/zipXML.do", method = RequestMethod.POST, produces = "application/xml; charset=utf-8;")
    @ResponseBody
    public String zipXML() throws Exception{
        String resultJSON = null;
 
        
        //servicekey : 일반 인증키
        String serviceKey="yhnAOXyPMDMFvTAQ%2Fec4tE8%2BNBWLOqz9%2FW2n7UpC9KCIey7%2BNpfr%2FjHSH6D4YPik2RSbkTKsQcnujlct7lvj7g%3D%3D";
        String spec ="http://openapi.animal.go.kr/openapi/service/rest/animalShelterSrvc/shelterInfo?";
        String numOfRows = "&numOfRows=243";
        
        spec += "serviceKey="+serviceKey + numOfRows;
        
        //resultXML = apiSerializer.receiveToString(spec);
        resultJSON = apiSerializer.receiveXmlToJson(spec);
        
        return resultJSON;
    }
	
	
	
	
	

}
