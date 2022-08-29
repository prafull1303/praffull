<%@ page import="java.sql.*" %>
<%@ include file="index.jsp" %>
<html>
<body>
<% 
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/quadwave","root","12345");
	Statement st = cn.createStatement();
	ResultSet rst=st.executeQuery("select * from file");
	%>
	<table>
	<thead>
	<th>FILE ID:</th>
	<th>FILE URL:</th>
	</thead>
	<tbody>
	
	<%while(rst.next() )
	{
		%>
		<tr>
		<td><%= rst.getString(1) %></td>
		<td><%=rst.getString(2) %></td>
		
		</tr>
	    <%
	}
	%>
	
	</tbody>
	
	</table>
	
	<%
	
	
	 
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>
</body>
</html>