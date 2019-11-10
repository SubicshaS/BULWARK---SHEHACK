<%@page import="java.util.ArrayList"%>
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
<script src="ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="calculator.js"></script>
<style>
    *,
*:after,
*:before {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}

*:before,
*:after {
  display: table-cell;
  content: '';
}

*:after { clear: both; }

body { font-family: helvetica, arial, sans-serif; }

.container {
  margin: 0 auto;
  width: 350px;
}

.calculator {
  padding: 10px;
  margin-top: 20px;
  background-color: white;
  border-radius: 5px;
  /*this is to remove space between divs that are inline-block*/
  font-size: 0;
}

.calculator > input[type=text] {
  width: 100%;
  height: 50px;
  border: none;
  background-color: #eee;
  text-align: right;
  font-size: 30px;
  padding-right: 10px;
}

.calculator .row { margin-top: 10px; }

.calculator .key {
  width: 78.7px;
  display: inline-block;
  background-color: black;
  color: white;
  font-size: 1rem;
  margin-right: 5px;
  border-radius: 5px;
  height: 50px;
  line-height: 50px;
  text-align: center;
}

.calculator .key:hover { cursor: pointer; }

.key.last { margin-right: 0px; }
.key.number0 {    background: linear-gradient(to bottom, #edefa0 0%, #edefa0 50%, #4e30e5 51%, #4e30e5 100%); }
.key.number1 {   background: linear-gradient(to bottom, #edefa0 0%, #edefa0 50%, pink 51%, pink 100%);  }
.key.number2 {   background: linear-gradient(to bottom, #edefa0 0%, #edefa0 50%, #7b7b7c 51%, #7b7b7c 100%);  }

.key.number3 {    background: linear-gradient(to bottom, #4e30e5 0%, #4e30e5 50%, #edefa0 51%, #edefa0 100%); }
.key.number4 {   background: linear-gradient(to bottom, #4e30e5 0%, #4e30e5 50%, pink 51%, pink 100%);  }
.key.number5 {   background: linear-gradient(to bottom, #4e30e5 0%, #4e30e5 50%, #7b7b7c 51%, #7b7b7c 100%);  }

.key.number6 {    background: linear-gradient(to bottom, pink 0%, pink 50%, #edefa0 51%, #edefa0 100%); }
.key.number7 {   background: linear-gradient(to bottom, pink 0%, pink 50%, #4e30e5 51%, #4e30e5 100%);  }
.key.number8 {   background: linear-gradient(to bottom, pink 0%, pink 50%, #7b7b7c 51%, #7b7b7c 100%);  }


.key.number9 {    background: linear-gradient(to bottom, #7b7b7c 0%, #7b7b7c 50%, #edefa0 51%, #edefa0 100%); }
.key.number10 {   background: linear-gradient(to bottom, #7b7b7c 0%, #7b7b7c 50%, #4e30e5 51%, #4e30e5 100%);  }
.key.number11 {   background: linear-gradient(to bottom, #7b7b7c 0%, #7b7b7c 50%, pink 51%, pink 100%);  }

.key.action { background-color: #998e8e; }
.key.head { background-color: whitesmoke; }
.key.yellow { background-color: #edefa0; }
.key.blue { background-color: #4e30e5; }
.key.white { background-color: pink; }
.key.ask { background-color: #7b7b7c; }

    </style>
</head>
<body>
<!-- Main Menu -->
<ol id="menu">
  <li class="active_menu_item"><a href="index.html" style="color:#FFF">Home</a>
    <!-- sub menu -->
    
  </li>
  <!-- end sub menu -->
  <li><a href="Login.jsp">Login</a>
    <!-- sub menu -->
   
  </li>
  <!-- end sub menu -->
 
 
   <li><a href="deposit.jsp">Deposit</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="#">About Us</a>
    <!-- sub menu -->
 
  </li>
  <!-- end sub menu -->
  <li><a href="#">Contact</a></li>
</ol>
<div id="container">
  <div id="site_title"><a href="index.html" style="color: #FFF;font-size: 25px"> E-Banking</a></div>
  <div style="margin-bottom: 15px">  </div>
  <div style="clear:both"></div>
   <form action="pin" method="post">
                       

       <h1 style="color:white;background-color: deepskyblue"> Enter PIN</h1><center>
                              <%
                    String s = request.getAttribute("msg") != null ? request.getAttribute("msg").toString() : "";
                    
String keys1=request.getParameter("keys");
String mm=(String)session.getAttribute("data");
System.out.println(keys1+"-->"+mm);
String ll[]=keys1.split(",");
String nnn[]=mm.split(",");
int jjjj=0;
for(int i=0;i<ll.length;i++)
{
    String hh=ll[i].toString();
for(int j=0;j<nnn.length;j++)
{
      String hh1=nnn[j].toString();
    
      if(hh.equalsIgnoreCase(hh1))
      {
          System.out.println(".....> pin 1 : "+hh1);
          jjjj=jjjj+1;
      }
}
}

if(jjjj==0 ||jjjj >1 )
{
   RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");	
			request.setAttribute("msg","Wrong Pin Number" );
			rd.forward(request, response);
}

else
{
    String s2=(String)session.getAttribute("name");
 	
		
                             response.sendRedirect("welcome.jsp?name="+s2);         
           
}


                    %>
    
<!-- END container -->
<div id="footer">
  <!-- First Column -->
 
  <!-- Second Column -->
 
  <!-- Third Column -->
 
  <!-- Fourth Column -->
 
  <div style="clear:both"><center></center></div>
</div>
<!-- END footer -->
</body>
</html>