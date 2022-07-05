<%@page import="java.sql.*"%>
<%
String id=request.getParameter("sno");
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/group","root","root");
PreparedStatement ps=con.prepareStatement("update friendrequest set status='Accepted' where  sno='"+id+"'");                
      System.out.println(ps);
      ps.executeUpdate();
           out.println("<script>"); 			
                    out.println("alert(\"Friend Request Accept Send..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("friendreq.jsp");
                    rd.include(request,response);
               

%>