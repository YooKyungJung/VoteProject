<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insert</title>
<style>
input[type='button'] { width:200px; height:50px; border-radius:15px; border:0px;
 background-color:#0f0c44; color:white; font-size:15pt; font-family: 'Jeju Myeongjo'; }
input[type='button']:hover {background-color:#eb6670;}
</style>
</head>
<body>
<center>
<%
	request.setCharacterEncoding("UTF-8");
	String member=request.getParameter("sel");
	//out.println("선택한멤버: "+member+"<br>");
	
	PrintWriter writer = null;
	BufferedReader reader = null;
	int num=0;
	
	//중복처리하기 위해 디렉토리에 있는 파일명 다 불러옴
	String dirPath = application.getRealPath("/WEB-INF/rookies");
	File dir = new File(dirPath);
	String filename[] = dir.list();
	String filePath = application.getRealPath("/WEB-INF/rookies/" + member);
	//out.println(filePath);
	try {
		//만약에 파일명=선택한멤버 >> 원래 파일 -> 값 가져오기
		for(int i=0; i<filename.length; i++) {
			if(filename[i].equals(member)) {
				reader = new BufferedReader(new FileReader(filePath));
				String str = reader.readLine();
				num=Integer.parseInt(str);
			}
		}
		//만약에 파일명!=선택한멤버 >> 새로운 파일 생성 
		writer = new PrintWriter(filePath);
		writer.printf("%d", 1+num);
		writer.flush();
		String selfie="image/selfie/" + member+".jpg";
		out.println("<img src="+selfie+" style='width:400px;'><br>");
		out.println("<p>SM 루키즈 "+member+"에게 1표를 투표하셨습니다.</p><br>");  %>
		<input type="button" value="투표하기" onclick="location.href='vote.jsp'">
		<input type="button" value="결과보기" onclick="location.href='result.jsp'">
		<% out.println("<br><br>");
	}catch(Exception e) {
		out.println("에러");
	} finally {
		out.close();
	}
%>
</center>
</body>

</html>