<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String user=request.getParameter("user");
String sid=request.getParameter("sid");
String sname=request.getParameter("sname");
String mobile=request.getParameter("mobile");
String grup=request.getParameter("grup");

 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/group","root","root");
      PreparedStatement ps=con.prepareStatement("insert into friendrequest(id,user,mobile,grup,sid,sname,status) values ('"+id+"','"+user+"','"+mobile+"','"+grup+"','"+sid+"','"+sname+"','Request Send')");                
      ps.executeUpdate();
           out.println("<script>"); 			
                    out.println("alert(\"Friend Request Send..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("friendreq.jsp");
                    rd.include(request,response);
               

%>
