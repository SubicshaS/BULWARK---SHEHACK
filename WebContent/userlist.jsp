<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date" %>
<!DOCTYPE HTML>
<head>
<title>Covert Attentional Shoulder Surfing: Human Adversaries Are More Powerful Than Expected</title>
<meta charset="utf-8">
<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>
<!-- CSS Files -->
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="menu/css/simple_menu.css">
<link rel="stylesheet" type="text/css" href="css/gridNavigation.css">
</head>
<body>
<!-- Main Menu -->
<ol id="menu">

  <!-- end sub menu -->
   <li><a href="Welcomeadmin.jsp" style="color:#FFF">Home</a>
    <!-- sub menu -->
   
  </li>
  <li><a href="adprofile.jsp" style="color:#FFF">My Profile</a>
    <!-- sub menu -->
   
  </li>
  <!-- end sub menu -->
 
  <li><a href="userlist.jsp">User Details</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="mtransfer.jsp">Money Transfer</a>
    <!-- sub menu -->
 
 
   
   <li><a href="Login.jsp">Logout</a>
    <!-- sub menu -->
   </li>
</ol>
<div id="container">
  <div id="site_title"><a href="index.html" style="color: #FFF;font-size: 25px"> E-Banking</a></div>
  <div style="margin-bottom: 15px"> <img  src="img/demo/slide_2.jpg" alt="" width="960" height="300"> </div>
  <div style="clear:both"></div>

   <h1 style="color: white;background-color:  #f26c4f">Current User List</h1>
   <h3>               <center>   <table border="2" align="center">
                                    <%
                                    String title=(String) session.getAttribute("logname");
                                

                                        try {
                                          
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ebank", "root", "root");
                                          
                                            String sa = "select * from info";
                                            PreparedStatement pr = con.prepareStatement(sa);
                                            ResultSet rs = pr.executeQuery();
                                    %>

                                    <th>Full name</th>
                                    <th>User name</th>
                                    <th>Password</th>
                                 
                                    <th>Address</th>
                                   
                                    
                                    <th>Country</th>
                                    <th>Account number</th>
                                    <th>Amount</th>
                                    <th>OTP Code</th>
                                    <th>Email</th>
                                                                       

                                    <%
                    while (rs.next()) {%>

                    <tr><td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                  
                    <td><%=rs.getString(5)%></td>
                    
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    <td><%=rs.getString(11)%></td>
                            <td><%=rs.getString(12)%></td>
                    
                    
                    </tr>
 
                                             
                                  


                                    <%	}
                                            con.close();
                                            pr.close();
                                            rs.close();

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }




                                        %></h3></table>
  </center>
 
  <div style="clear:both; height: 40px"></div>
</div>
<!-- END container -->
<div id="footer">
  <!-- First Column -->
 
  <!-- Second Column -->
 
  <!-- Third Column -->
 
  <!-- Fourth Column -->
 
 
</div>
<!-- END footer -->
</body>
</html>