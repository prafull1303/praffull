<%@ page import="java.sql.*" %>

<html>
<body>

    
    
    
    <form action="save.jsp">
    FILE ID:<input type="text" name="idd">
    SELECT FILE TO UPLOAD<input type="file" name="fl">
    <button>ADD RECORD</button>
    
    </form>tiger
    <%
    try
    {
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/company","root","tiger");
        Statement st = cn.createStatement();
        ResultSet rst = st.executeQuery("select * from file");
         System.out.println("connected");
         %>
         <h1 style=" color:red; background-color:yellow; font-size:30px; text-align:center;">RAHUL SINGH</h1>
         <table border="2">
         <thead>
         <th>FILE ID:</th>
         <th>FILE URL:</th>
         <th>VIEW</th>
         </thead>
         <tbody>
         <%
         while(rst.next())
         {
        	 %>
        	 <tr>
        	 <td><%=rst.getString(1)%></td>
        	 <td><%=rst.getString(2) %></td>
        	 <td> <a href='viewdata.jsp?cid=<%=rst.getString(1)%>' class='la'>VIEW |</a></td>
        	 
        	 
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
    	ec.getStackTrace();
    }
    %>
    
    
</body>
</html>