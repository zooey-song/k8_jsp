<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Date" %>

<%!
	public int Age(int year, int currentYear){
		return currentYear-year+1;
	}

	public String Zodiac(int year){
		String[] zodiac = {"원숭이", "닭", "개", "돼지", "쥐", "소", "호랑이", "토끼", "용", "뱀", "말", "양"};
		//1992 원숭이
		return zodiac[(year-1992)%12];
	}
%>

<%
	int year = 0; 
	try{
		year = Integer.parseInt(request.getParameter("year"));
	}
	catch(Exception e){
		
	}
%>
    
<%
	Date today = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
	String todayStr = dateFormat.format(today);
	int todayint = Integer.parseInt(todayStr);
	
%>
			
			    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<% if(year != 0) { %>
		<%= year %>년에 태어난 당신은<br>
		<%=todayint%>년 올해 한국나이로 <%= Age(year,todayint) %>살이고<br>
		<%= Zodiac(year) %>띠입니다.
		
      <% }
		else{ %>
	  		<H1>값이 입력되지 않았습니다.</H1>


	   <% }%>
		 
	</body>
</html>