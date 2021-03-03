
<%@page import ="Project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
 	String course=request.getParameter("course");
	String branch=request.getParameter("branch");
	String rollno=request.getParameter("rollno");
	String name=request.getParameter("name");
	String fathername=request.getParameter("fathername");
	String gender=request.getParameter("gender");
	
	try{
		Connection conn =ConnectionProvider.getCon();
		Statement st =conn.createStatement();
		st.executeUpdate("insert into student value('"+course+"','"+branch+"','"+rollno+"','"+name+"','"+fathername+"','"+gender+"')");
		request.setAttribute("alertMsg", "data add sucess");
		response.sendRedirect("adminHome.jsp");
		}
		
		
	
	catch(Exception e){
		e.printStackTrace();
		request.setAttribute("alertMsg", "somethings wrong");
		response.sendRedirect("adminHome.jsp");
		
	}
%>