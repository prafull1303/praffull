<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
<body>
<%

String add;

String intt = request.getParameter("cid");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/quadwave","root","12345");
    PreparedStatement ps = cn.prepareStatement("select * from file where id=?");
    ps.setString(1,intt);
    ResultSet rst = ps.executeQuery();
     System.out.println("connected");
    
     while(rst.next())
     {
    	 add = rst.getString(2);
    	 try 
 		{
 			
 			FileReader fr = new FileReader(add);
 			BufferedReader br = new BufferedReader(fr);
 			String str = br.readLine();
 			System.out.println("hello");
 			
 			%>
 			<table>
 			
 			<%
 			
 			
 			while(str!=null)
 			{
 				
 				%>
 				
 				<tr>
 				<td><%=str %></td>
 				</tr>
 				
 				<%
 				
 				str = br.readLine();
 				
 			
 				
 				
 			}
 			%>
 			</table>
 			
 			<%
 			
 			
 			
 		}
 		catch(Exception ex)
 		{
 			System.out.println(ex);
 			
 		}
    	 
     }
       	
}
catch(Exception ec)
{
	System.out.println(ec);
}



		
		

	

	%>

</body>
</html>