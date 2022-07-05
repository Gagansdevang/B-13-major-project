
<%@page import="java.sql.*"%>
<%
   String id=(String)session.getAttribute("id");
   String user=(String)session.getAttribute("name");
    try{
  String email=request.getParameter("email");
  String mobile=request.getParameter("mobile");
  String id1=request.getParameter("id");
  String name=request.getParameter("user");
  String location=request.getParameter("location");
  String frm=request.getParameter("froom");
  String too=request.getParameter("too");
 
   
    
   
   Class.forName("com.mysql.jdbc.Driver"); 
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group","root","root");
   PreparedStatement ps=con.prepareStatement("Insert into movements (id,user,email,mobile,location,frm,too)values ('"+id+"','"+user+"','"+email+"','"+mobile+"','"+location+"','"+frm+"','"+too+"')");
   System.out.println(ps);
   ps.executeUpdate();
   
   
   out.print(" Movements added Successfully ");
   out.println("<script>"); 			
   out.println("alert(\"Movements added Successfully \")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/vmvmnts.jsp");  
        rd.include(request, response);  

 
            
    }   catch(Exception e){
        out.println("<script>"); 			
        out.println("alert(\"Please Try Again..\")");
        out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/vmvmnts.jsp");  
        rd.include(request, response);  

        
    }
    %>

