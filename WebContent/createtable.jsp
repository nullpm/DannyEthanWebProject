<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable.html</title>

<% String name = request.getParameter("nameInput");
	int rows = Integer.parseInt(request.getParameter("rowInput"));
	int columns = Integer.parseInt(request.getParameter("columnInput"));%>
</head><body style="background-color: black; color: rgb(0, 0, 0);" alink="#ee0000" link="#0000ee" vlink="#551a8b"><span style="background-color: transparent; color: white;">
<%out.println("Hello " + name + ", Here is your table"); %></span><br style="color: white;">

<table style="text-align: left; width: 187px; color: white; height: 32px;" border="1" cellpadding="2" cellspacing="2">

  <tbody>
		<%if(rows<=0){
			response.sendRedirect("classexercise.jsp?rowError=1&AnotherParam=somevalue&name="+name);
		}
		else if(columns<=0){
			response.sendRedirect("classexercise.jsp?columnError=1&AnotherParam=somevalue&name="+name);
		}%>
      	<%for(int j=0; j<rows; j++){
        	out.println("<tr>");
       		for(int i=0; i<columns; i++){
        		out.println("<td>" + i +", " + j+ "\n" + "</td>");
        	}
        out.println("</tr>");
    	}%>

  </tbody>
</table>

<br style="color: white;">

<br style="color: white;">
</body></html>