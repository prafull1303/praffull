<%@ page import="java.sql.*" %>

<html>
<body>
<%
String flname = request.getParameter("fl");
String id = request.getParameter("idd");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/company","root","tiger");
     PreparedStatement ps = cn.prepareStatement("insert into employee values(?,?)");
     System.out.println("connected");
	 ps.setString(1,id);
	 ps.setString(2,flname);
     ps.executeUpdate();
}
catch(Exception ec)
{
	System.out.println(ec);
}

%>
<jsp:include page="index.jsp"></jsp:include>


</body>
</html>