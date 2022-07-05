
<%@page import="java.sql.*"%>
<%
   String id=(String)session.getAttribute("id");
   String user=(String)session.getAttribute("user");
    try{
   String profile=request.getParameter("image");
   String name=request.getParameter("user");
   String description=request.getParameter("description");
   String topic=request.getParameter("topic");
   String grup=request.getParameter("grup");
  String location=request.getParameter("location");
    System.out.println( topic);
    
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group","root","root");
   PreparedStatement ps=con.prepareStatement("Insert into recommed (image,description,topic,grup,location,user)values ('"+profile+"','"+description+"','"+topic+"','"+grup+"','"+location+"','"+name+"')");
   System.out.println(ps);
   ps.executeUpdate();
   
   
   out.print(" Recommended post sucessfully to Groups ");
   out.println("<script>"); 			
   out.println("alert(\"Successfully Recommend\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/vpost.jsp");  
        rd.include(request, response);  

 
            
    }   catch(Exception e){
        out.println("<script>"); 			
        out.println("alert(\"Please Try Again..\")");
        out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/vpost.jsp");  
        rd.include(request, response);  

        
    }
    %>
