<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.Calendar"%>
<%@page import="oracle.sql.INTERVALDS"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  trimDirectiveWhitespaces="true"%>
<%
//$.ajax{{ data:"" }} 로 전달되는 parameter처리
request.setCharacterEncoding("UTF-8"); //POST방식의 한글 처리
String name = request.getParameter("name");
String age = request.getParameter("age");

int intAge = 0;

try{
	intAge = Integer.parseInt(age);
}catch(NumberFormatException nfe){
	
}

//태어난해 연산
int birth = Calendar.getInstance().get(Calendar.YEAR)-intAge+1;
	
JSONObject json = new JSONObject();
	json.put("name", name+"님");
	json.put("birth", birth);

out.print(json.toJSONString());
%>
