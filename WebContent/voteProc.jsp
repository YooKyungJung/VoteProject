<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
[type='radio'] { display: none; }

figure { float:left; width:195px; text-align:center; margin:0px; }

#mem1:checked+label img { content: url('image/member/도영2.png'); }
#mem2:checked+label img { content: url('image/member/동혁2.png'); }
#mem3:checked+label img { content: url('image/member/마크2.png'); }
#mem4:checked+label img { content: url('image/member/윈윈2.png'); }
#mem5:checked+label img { content: url('image/member/유타2.png'); }
#mem6:checked+label img { content: url('image/member/재민2.png'); }
#mem7:checked+label img { content: url('image/member/재현2.png'); }
#mem8:checked+label img { content: url('image/member/쟈니2.png'); }
#mem9:checked+label img { content: url('image/member/제노2.png'); }
#mem10:checked+label img { content: url('image/member/지성2.png'); }
#mem11:checked+label img { content: url('image/member/쿤2.png'); }
#mem12:checked+label img { content: url('image/member/태용2.png'); }
#mem13:checked+label img { content: url('image/member/태일2.png'); }
#mem14:checked+label img { content: url('image/member/텐2.png'); }
#mem15:checked+label img { content: url('image/member/한솔2.png'); }

#memImg { width:230px; height:230px; margin-left:15%; margin-right:15%;}

input[type='submit'] { width:200px; height:60px; border-radius:15px; border:0px; 
background-color:#0f0c44; color:white; margin-top:30px; font-size:15pt; font-family: 'Jeju Myeongjo';  }
input[type='submit']:hover {background-color:#eb6670;}
input[type='reset'] { width:200px; height:60px; border-radius:15px; border:0px;
 background-color:#0f0c44; color:white; margin-top:30px; font-size:15pt; font-family: 'Jeju Myeongjo'; }
input[type='reset']:hover {background-color:#eb6670;}

</style>
</head>
<body>
<center>
<form method="post" action="complete.jsp">
<table style="text-align:center; margin-top:25px;">
 <tr>
  <td>
  	<input type="radio" name="sel" value="도영" id="mem1" required>
  	<label for="mem1"><figure><img src="image/member/도영1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="동혁" id="mem2">
  	<label for="mem2"><figure><img src="image/member/동혁1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="마크" id="mem3">
  	<label for="mem3"><figure><img src="image/member/마크1.png" id="memImg"></figure></label>
  </td>
 </tr>
 
 <tr>
  <td><p>도영</p></td>
  <td><p>동혁</p></td>
  <td><p>마크</p></td>
 </tr>
 
 <tr>
  <td>
  	<input type="radio" name="sel" value="윈윈" id="mem4">
  	<label for="mem4"><figure><img src="image/member/윈윈1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="유타" id="mem5">
  	<label for="mem5"><figure><img src="image/member/유타1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="재민" id="mem6">
  	<label for="mem6"><figure><img src="image/member/재민1.png" id="memImg"></figure></label>
  </td>
 </tr>
  
 <tr>
  <td><p>윈윈</p></td>
  <td><p>유타</p></td>
  <td><p>재민</p></td>
 </tr>
 
 <tr>
  <td>
  	<input type="radio" name="sel" value="재현" id="mem7">
  	<label for="mem7"><figure><img src="image/member/재현1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="쟈니" id="mem8">
  	<label for="mem8"><figure><img src="image/member/쟈니1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="제노" id="mem9">
  	<label for="mem9"><figure><img src="image/member/제노1.png" id="memImg"></figure></label>
  </td>
 </tr>
 
 <tr>
  <td><p>재현</p></td>
  <td><p>쟈니</p></td>
  <td><p>제노</p></td>
 </tr>
 
 <tr>
  <td>
  	<input type="radio" name="sel" value="지성" id="mem10">
  	<label for="mem10"><figure><img src="image/member/지성1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="쿤" id="mem11">
  	<label for="mem11"><figure><img src="image/member/쿤1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="태용" id="mem12">
  	<label for="mem12"><figure><img src="image/member/태용1.png" id="memImg"></figure></label>
  </td>
 </tr>
 
 <tr>
  <td><p>지성</p></td>
  <td><p>쿤</p></td>
  <td><p>태용</p></td>
 </tr>
 
 <tr>
  <td>
  	<input type="radio" name="sel" value="태일" id="mem13">
  	<label for="mem13"><figure><img src="image/member/태일1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="텐" id="mem14">
  	<label for="mem14"><figure><img src="image/member/텐1.png" id="memImg"></figure></label>
  </td>
  <td>
  	<input type="radio" name="sel" value="한솔" id="mem15">
  	<label for="mem15"><figure><img src="image/member/한솔1.png" id="memImg"></figure></label>
  </td>
 </tr>
 
 <tr>
  <td><p>태일</p></td>
  <td><p>텐</p></td>
  <td><p>한솔</p></td>
 </tr>
 
 <tr>
  <td colspan=3>
 	<input type="submit" value="투표완료">&nbsp;<input type="reset" value="다시선택">
  </td>
 </tr>
</table>
<br>
</form>
</center>
</body>
</html>