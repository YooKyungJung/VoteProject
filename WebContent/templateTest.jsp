<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contentPage=request.getParameter("CONTENTPAGE");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
body {
	width:100%;
	font-family: 'Jeju Myeongjo'; 
}
table {
	width: 70%;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SM Rookies</title>
</head>
<body>
<center>
<table>
<tr>
	<a href="main.jsp"><img src="image/logo.png" width="250px"></a><br>
</tr>
<tr>
	<td>
		<jsp:include page="top.jsp" flush="flase"/>
	</td> 
<tr>

<tr>
	<td><br><br></td>
</tr>
<tr>
	<td width=350 style="margin-top:50px;">
		<jsp:include page="<%=contentPage %>" flush="flase"/>
	</td>
<tr>
<tr>
	<td><br><br><br></td>
</tr>
<tr>
	<td>
		<jsp:include page="bottom.jsp" flush="flase"/>
	</td> 
<tr>
</table>
</center>
</body>
</html>