<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
body { font-family: 'Jeju Myeongjo'; }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>result</title>
</head>
<body>
<center>
<%
	String dirPath = application.getRealPath("/WEB-INF/rookies");
	File dir = new File(dirPath);
	String filename[] = dir.list();
	//for(int i=0; i<filename.length; i++) out.println(filename[i]+"<br>");
	String voteNum[]=dir.list(); //각 멤버들의 투표수가 들어감
	String member[]={"도영","동혁","마크","윈윈","유타","재민","재현","쟈니","제노","지성","쿤","태용","태일","텐","한솔"};
	int result[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	BufferedReader reader=null;
	String filePath=null;
	
	for(int i=0; i<voteNum.length; i++) {
		filePath = application.getRealPath("/WEB-INF/rookies/" + filename[i]);
		reader = new BufferedReader(new FileReader(filePath));
		String str = reader.readLine();
		//out.println(filename[i]+"의 투표수: "+str);
	}

	int cnt=0;
	for(int i=0; i<member.length; i++) {
		cnt++;
		for(int j=0; j<voteNum.length; j++) {
			filePath = application.getRealPath("/WEB-INF/rookies/" + filename[j]);
			reader = new BufferedReader(new FileReader(filePath));
			String str = reader.readLine();
			if(filename[j].equals(member[i])) {
				result[cnt-1]=Integer.parseInt(str);
				//out.println(filename[j]+"은 "+cnt+"번째값이고, "+result[cnt]+"표를 받았당!");
			}
		}
	}
	/* test
	out.println("<br><br><br>");
	for(int i=0; i<member.length; i++) {
		out.println(member[i]+"의 득표수: "+result[i]+"<br>");
	}
	*/
	out.println("<br><br><br>");
%>
<script>
window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		animationEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: "SM Rookies"
		},
		axisY: {
			title: ""
		},
		data: [{        
			type: "column",  
			showInLegend: true, 
			legendMarkerColor: "white",
			legendText: "SR15B",
			dataPoints: [      
				{ y: <%=result[0]%>, label: "<%=member[0]%>" },
				{ y: <%=result[1]%>,  label: "<%=member[1]%>" },
				{ y: <%=result[2]%>,  label: "<%=member[2]%>" },
				{ y: <%=result[3]%>,  label: "<%=member[3]%>" },
				{ y: <%=result[4]%>,  label: "<%=member[4]%>" },
				{ y: <%=result[5]%>, label: "<%=member[5]%>" },
				{ y: <%=result[6]%>,  label: "<%=member[6]%>" },
				{ y: <%=result[7]%>,  label: "<%=member[7]%>" },
				{ y: <%=result[8]%>,  label: "<%=member[8]%>" },
				{ y: <%=result[9]%>,  label: "<%=member[9]%>" },
				{ y: <%=result[10]%>,  label: "<%=member[10]%>" },
				{ y: <%=result[11]%>, label: "<%=member[11]%>" },
				{ y: <%=result[12]%>,  label: "<%=member[12]%>" },
				{ y: <%=result[13]%>,  label: "<%=member[13]%>" },
				{ y: <%=result[14]%>,  label: "<%=member[14]%>" }
			]
		}]
	});
	chart.render();
}
</script>

<div id="chartContainer"></div>
<div style="height:200px;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>