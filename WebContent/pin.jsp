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
<script type="text/javascript" src="sound-mouseover.js"></script>
<script src="calculator.js"></script>
<script language="javascript" type="text/javascript">

</script>
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
                    String name=(String) session.getAttribute("uid");
                    System.out.println(name);

String yellow="";
String blue="";
String pink="";
String ask="";
int l1=(int) (Math.random() * 11);
int l2=(int) (Math.random() * 11);
int l3=(int) (Math.random() * 11);int l4=(int) (Math.random() * 11);int l5=(int) (Math.random() * 11);
int l6=(int) (Math.random() * 11);
int l7=(int) (Math.random() * 11);int l8=(int) (Math.random() * 11);
int l9=(int) (Math.random() * 11);
int l10=(int) (Math.random() * 11);

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




System.out.println(l1);
System.out.println(l2);
System.out.println(l3);System.out.println(l4);
System.out.println(l5);System.out.println(l6);
System.out.println(l7);
System.out.println(l8);
System.out.println(l9);
System.out.println(l10);





int lll=0;
for(int i=0;i<10;i++)
{
    
lll=Integer.valueOf(nn.get(i).toString());
 System.out.println(lll);
if(lll==1)
{
    System.out.println("yellowpink"+i);
    yellow=yellow+i+",";
    pink =pink+i+",";
}
if(lll==0)
{ System.out.println("yellowblue"+i);
     yellow=yellow+i+",";
    blue =blue+i+",";
}
if(lll==2)
{ System.out.println("yellowask"+i);
     yellow=yellow+i+",";
    ask=ask+i+",";
}
if(lll==3)
{ System.out.println("blueyellow"+i);
     yellow=yellow+i+",";
    blue =blue+i+",";
}
if(lll==4)
{
     System.out.println("bluepink"+i);
   pink=pink+i+",";
    blue =blue+i+",";
}
if(lll==5)
{
     System.out.println("blueask"+i);
     ask=ask+i+",";
    blue =blue+i+",";
}
if(lll==6)
{
    System.out.println("pinkyellow"+i);
    yellow=yellow+i+",";
    pink =pink+i+",";
}
if(lll==7)
{
    System.out.println("pinkblue"+i);
    blue=blue+i+",";
    pink =pink+i+",";
}
if(lll==8)
{System.out.println("pinkask"+i);
    ask=ask+i+",";
    pink =pink+i+",";
}
if(lll==11)
{System.out.println("askpink"+i);
    
    ask=ask+i+",";
    pink =pink+i+",";
}
if(lll==9)
{
    System.out.println("askyellow"+i);
    ask=ask+i+",";
    yellow =yellow+i+",";
}
if(lll==10)
{
    System.out.println("askblue"+i);
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
    <div class="key head"> </div>
    <div class="key head"></div>
    <div class="key head"></div>
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
    <div class="key action">#</div>
    <div class="key number<%=l10%>">0</div>
    <div class="key action">*</div>
   
  </div>
   <div class="row">
   
   <a href="pin2.jsp?keys=<%=yellow%>" onmouseover="playclip();";> <div class="key yellow" > </div> </a>
  
 
   <a href="pin2.jsp?keys=<%=blue%>" onmouseover="playclip();";> <div class="key blue" > </div> </a>
  
  
   
   <a href="pin2.jsp?keys=<%=pink%>" onmouseover="playclip()";>   <div class="key white"></div> </a>
   <a href="pin2.jsp?keys=<%=ask%>" onmouseover="playclip()";>  <div class="key ask"></div> </a>
   
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

<audio>
<source src="img/demo/click.mp3"></source>

</audio>

<div id="sounddiv"><bgsound id="sound"></div>
</body>
</html>