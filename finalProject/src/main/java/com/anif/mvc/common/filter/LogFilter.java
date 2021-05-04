package com.anif.mvc.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.anif.mvc.common.filter.LogFilter;

public class LogFilter implements Filter{
	//로거 객체 생성
		private Logger logger = LoggerFactory.getLogger(LogFilter.class);
		
		//init() : 필터 인스턴스 초기화
		//doFilter() : 전/후 처리
		//destroy() : 필터 인스턴스 종료
		
		@Override
		public void init(FilterConfig filterConfig) throws ServletException {
			
		}

		@Override
		public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
				throws IOException, ServletException {
			
			/*
			 * 
			 * HttpServletRequest
			 * 	 생성: client가 요청 시
			 *	 삭제: server가 응답 시
			 *	 Request 동안에만 존재
			 * 
			 */
			
			HttpServletRequest req = (HttpServletRequest)request;
			
			String remoteAddr = req.getRemoteAddr(); //ip주소, IPv6 주소의 로컬호스트 ip
			String uri = req.getRequestURI();
			String url = req.getRequestURL().toString();
			String queryString = req.getQueryString();
			
			String referer = req.getHeader("referer"); //이전 페이지(보내는 페이지) url
			String agent = req.getHeader("User-Agent"); //사용자 정보(browser, os 등)
			
			StringBuffer sb = new StringBuffer();
			sb.append("remoteAddr: " + remoteAddr + "\n")
			  .append("uri: " + uri + "\n")
			  .append("url: " + url + "\n")
			  .append("queryString: " + queryString + "\n")
			  .append("referer: " + referer + "\n")
			  .append("agent: " + agent);
			
			logger.info("[LOG FILTER]\n" + sb);
			
			chain.doFilter(req, response);
			
			
		}

		@Override
		public void destroy() {
			
		}

}
