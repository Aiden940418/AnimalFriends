package com.anif.mvc.shelter.biz;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONObject;
import org.json.XML;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class APISerializer {
	
	 private final Logger logger = LoggerFactory.getLogger(getClass());


	 
	 // 공공 API 등의 데이터를 XML,JSON 문서를 String 형태로 받기
	 public String receiveToString(String spec) throws Exception {
	        String result = null;
	        
	        HttpURLConnection conn = null;
	        
			try {
				conn = (HttpURLConnection) new URL(spec).openConnection();
				BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
				StringBuilder sb = new StringBuilder();
				String s;
				while ((s = br.readLine()) != null) {
					sb.append(s);
				}
				
				result = sb.toString();
				
			} catch (Exception e) {
				logger.error(e.toString());
	            throw e;
	            
	        } finally {
	            if(conn != null) {
	                try {
	                    conn.disconnect();
	                } catch (Exception e2) {
	                }
	            }
	        }
	        
	        return result;
	    }
	 
	 
		// 공공 API등의 XML 데이터를 String 형태의 JSON으로 변환하여 받기
		public String receiveXmlToJson(String spec) throws Exception {
			String result = null;

			try {
				String s = receiveToString(spec);
				
				
				// xml을 json으로 변경해주는 객체 존재(json)
				JSONObject job = XML.toJSONObject(s);
				result = job.toString();

			} catch (Exception e) {
				// logger.error(e.toString());
				throw e;
			}

			return result;
		}
		
		
	 

}
