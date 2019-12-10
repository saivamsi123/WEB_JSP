//package com.servlet.bean;
//
//import java.io.IOException;
//
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//
//@WebFilter(filterName = "LogFilter", urlPatterns = {"/LoginUseBean.jsp"})
//public class LogFilter implements Filter {
//
//	public LogFilter()
//	{
//		System.out.println("LogFilter->default constructor...");
//	}
//	
//	@Override
//	public void  init(FilterConfig config) throws ServletException {
//		System.out.println("LogFilter->init...");
//	}
//	
//	@Override
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//			throws IOException, ServletException {
//		
//		System.out.println("LogFilter->dofilter started...");
//		
//		 String failure = "failure.jsp";
//		 String userName = request.getParameter("username");
//		 String passWord = request.getParameter("password");
//		 
//		 if (userName == null || "".equals(userName)
//			        || passWord == null || "".equals(passWord)) {
//
//			    request.setAttribute("EmptyMsg", "One or both fields are empty");
//
//			    RequestDispatcher rd = request.getRequestDispatcher(failure);
//			    rd.include(request, response);
//
//		 } else {
//				chain.doFilter(request,response);
//			}
//		 
//			System.out.println("LogFilter->dofilter ended...");
//	}
//	
//	 @Override
//	 public void destroy( ) {
//			System.out.println("LogFilter->destroy...");   
//	 }
//
//}
