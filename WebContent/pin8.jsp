<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
        .key.yellow {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #edefa0;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.key.yellow:hover {background-color: #edefa0}

.key.yellow:active {
  background-color: #edefa0;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}


.key.blue {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4e30e5;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.key.blue:hover {background-color: #4e30e5}

.key.blue:active {
  background-color: #4e30e5;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.key.white {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #FFC0CB;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.key.white:hover {background-color: #FFC0CB}

.key.white:active {
  background-color: #FFC0CB;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.key.ask{
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #7b7b7c;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.key.ask:hover {background-color: #7b7b7c}

.key.ask:active {
  background-color: #7b7b7c;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
     
.key.yellow1 { background-color: #edefa0; }   
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
      String s1 = (String)session.getAttribute("uid");
      System.out.println(s1);      String keys1=request.getParameter("keys");
session.setAttribute("data", keys1);
int l1=(int) (Math.random() * 11);
int l2=(int) (Math.random() * 11);
int l3=(int) (Math.random() * 11);int l4=(int) (Math.random() * 11);int l5=(int) (Math.random() * 11);
int l6=(int) (Math.random() * 11);
int l7=(int) (Math.random() * 11);int l8=(int) (Math.random() * 11);
int l9=(int) (Math.random() * 11);
int l10=(int) (Math.random() * 11);
       Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ebank", "root", "root");
               
         String sa="select * from deposit where fname='"+s1+"' ";
  PreparedStatement pr=con.prepareStatement(sa);
  ResultSet rs=pr.executeQuery();
  String jj="";
  if(rs.next()){
                    
      jj=rs.getString(3);
  }
                
  String kk[]=jj.split("");
                
 String keyvalue[]=keys1.split(",");
             
 System.out.println(kk[3].toString());
 for(int h=0;h<keyvalue.length;h++)
 {
     if(kk[3].toString().equalsIgnoreCase(keyvalue[h].toString()))
     {
         if(kk[3].toString().equalsIgnoreCase("0"))
         {
             l10=0;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=8;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=11;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=8;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=11;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=8;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=11;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=8;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=11;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=8;            
             }
             
                           
         }
                               
             }
         }
       else  if(kk[3].toString().equalsIgnoreCase("1"))
         {
             l1=1;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=5;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=10;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=5;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=10;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=5;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=10;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=5;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=10;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=5;            
             }
             
                           
         }
                               
             }
         }
          if(kk[3].toString().equalsIgnoreCase("2"))
         {
             l2=2;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=4;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=7;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=4;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=7;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=4;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=7;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=4;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=7;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=4;            
             }
             
                           
         }
                               
             }
         }
          
          
           if(kk[3].toString().equalsIgnoreCase("3"))
         {
             l3=3;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=8;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=11;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=8;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=11;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=8;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=11;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=8;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=11;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=8;            
             }
             
                           
         }
                               
             }
         }
           
            if(kk[3].toString().equalsIgnoreCase("4"))
         {
             l4=4;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=2;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=9;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=2;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=9;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=2;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=9;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=2;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=9;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=2;            
             }
             
                           
         }
                               
             }
         }
           
            if(kk[3].toString().equalsIgnoreCase("5"))
         {
             l5=5;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                    
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=1;    
                    System.out.println(keyvalue[lo].toString());
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=6;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=1;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=6;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=1;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=6;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=1;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=6;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=1;            
             }
             
                           
         }
                               
             }
         }
            
            
             if(kk[3].toString().equalsIgnoreCase("6"))
         {
             l6=6;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=5;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=10;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=5;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=10;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=5;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=10;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=5;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=10;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=5;            
             }
             
                           
         }
                               
             }
         }
             
             
              if(kk[3].toString().equalsIgnoreCase("7"))
         {
             l7=7;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=2;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=9;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=2;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=9;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=2;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=9;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=2;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=9;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=2;            
             }
             
                           
         }
                               
             }
         }
            
              
               if(kk[3].toString().equalsIgnoreCase("8"))
         {
             l8=8;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=0;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=3;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=0;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=3;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=0;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=3;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=0;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=3;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("9"))
             {
                   l9=0;            
             }
             
                           
         }
                               
             }
         }
         
               
                if(kk[3].toString().equalsIgnoreCase("9"))
         {
             l9=9;
                           
             for(int lo=0;lo<keyvalue.length;lo++)
             {  if(!kk[3].toString().equalsIgnoreCase(keyvalue[lo].toString()))
         {
                           
                           
             if(keyvalue[lo].toString().equalsIgnoreCase("1"))
             {
                   l1=4;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("2"))
             {
                   l2=7;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("3"))
             {
                   l3=4;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("4"))
             {
                   l4=7;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("5"))
             {
                   l5=4;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("6"))
             {
                   l6=7;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("7"))
             {
                   l7=4;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("8"))
             {
                   l8=7;            
             }
             else if(keyvalue[lo].toString().equalsIgnoreCase("0"))
             {
                   l10=4;            
             }
             
                           
         }
                               
             }
         }
               
     }
 }
               
                    


String yellow="";
String blue="";
String pink="";
String ask="";


ArrayList nn=new ArrayList();
nn.add(l10);
nn.add(l1);
nn.add(l2);
nn.add(l3);nn.add(l4);
nn.add(l5);
nn.add(l6);
nn.add(l7);
nn.add(l8);
nn.add(l9);





int ll1=0;
for(int i=0;i<10;i++)
{
ll1=Integer.valueOf(nn.get(i).toString());

if(ll1==1)
{
yellow=yellow+i+",";
pink =pink+i+",";
}
if(ll1==0)
{
yellow=yellow+i+",";
blue =blue+i+",";
}
if(ll1==2)
{
yellow=yellow+i+",";
ask=ask+i+",";
}
if(ll1==3)
{
yellow=yellow+i+",";
blue =blue+i+",";
}
if(ll1==4)
{
pink=pink+i+",";
blue =blue+i+",";
}
if(ll1==5)
{
ask=ask+i+",";
blue =blue+i+",";
}
if(ll1==6)
{
yellow=yellow+i+",";
pink =pink+i+",";
}
if(ll1==7)
{
blue=blue+i+",";
pink =pink+i+",";
}
if(ll1==8)
{
ask=ask+i+",";
pink =pink+i+",";
}
if(ll1==11)
{
ask=ask+i+",";
pink =pink+i+",";
}
if(ll1==9)
{
ask=ask+i+",";
yellow =yellow+i+",";
}
if(ll1==10)
{
ask=ask+i+",";
blue =blue+i+",";
}
  
  
}

System.out.println(yellow);
System.out.println(blue);
System.out.println(pink);
  System.out.println(ask);

                %>
                <div class="calculator">
                    <div class="row">
                        <div class="key yellow1"> </div>
                        <div class="key yellow1"></div>
                        <div class="key yellow1"></div>
                        <div class="key head"></div>

                    </div>
                    <div class="row">
                        <div class="key number<%=l1%>">1</div>
                        <div class="key number<%=l2%>">2</div>
                        <div class="key number<%=l3%>">3</div>

                    </div>
                    <div class="row">
                        <div class="key number<%=l4%>">4</div>
                        <div class="key number<%=l5%>">5</div>
                        <div class="key number<%=l6%>">6</div>

                    </div>
                    <div class="row">
                        <div class="key number<%=l7%>">7</div>
                        <div class="key number<%=l8%>">8</div>
                        <div class="key number<%=l9%>">9</div>

                    </div>
                    <div class="row">
                        <div class="key action">-></div>
                        <div class="key number<%=l10%>">0</div>
                        <div class="key action"><-</div>

                    </div>
                    <div class="row">
                        <a href="verify.jsp?keys=<%=yellow%>"> <div class="key yellow" > </div> </a>
                        <a href="verify.jsp?keys=<%=blue%>"> <div class="key blue"></div> </a>
                        <a href="verify.jsp?keys=<%=pink%>">   <div class="key white"></div> </a>
                        <a href="verify.jsp?keys=<%=ask%>">  <div class="key ask"></div> </a>

                    </div>
                </div>                         
            </center>
        </form>
        <div style="clear:both; height: 40px"></div>
    </div>
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