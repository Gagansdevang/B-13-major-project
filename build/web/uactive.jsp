<%@page import="java.sql.*"%>
<%
  String id=request.getParameter("id");
          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group","root","root");
   PreparedStatement ps=con.prepareStatement("Update ureg SET status='Activated' Where id='"+id+"' ");
   System.out.println(ps);
   ps.executeUpdate();
   out.print(" Activated Successfully ");
   out.println("<script>"); 			
   out.println("alert(\"Activated  user Successfully\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/uathu.jsp");  
        rd.include(request, response);  
 
%>
