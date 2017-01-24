﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="roomPresidential1.aspx.vb" Inherits="roomPresidential1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/mainContent.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Presidential suite</title>
</head>
<body>
    <form id="form1" runat="server">
     <nav id="mainNav" class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu-collapse">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars" aria-hidden="true"></i>
                </button>
                <a class="navbar-brand" href="Mainpage.aspx">Hotel China Town Inn</a>
            </div>
            <div class="collapse navbar-collapse" id="menu-collapse">
                <ul class="navbar-nav nav navbar-right">
                    <li>
                        <a href="room.aspx">Rooms</a>
                    </li>
                    <li>
                        <a href="#mainAbout">About us</a>
                    </li>
                    <li>
                        <a href="Registerpage.aspx">Register</a>
                    </li>
                    <li>
                        <a href="Loginpage.aspx">Login</a>
                    </li>
                    <li>
                        <a href="StaffLoginpage.aspx">Staff Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
        <div class="container-figure">
             <div class="container">
                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="images/hotel1.jpg"/>
        <div class="overlay">
           <h2>Presidential suite</h2>
           <p class="info">asdfasdfsadf</p>
        </div>
    </div>
</div>
</div>
            
        <div class="container">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <a class ="btn btn-danger col-lg-12 shake-little centered" data-toggle="modal" data-target="#myModal">BOOK NOW!!</a>
            </div>
        </div>
</div>



        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Opening Hours</h3>
                            </div>
                            <div class="working_hours">
                                <ul>
                                    <li>
                                        <i class="fa fa-clock-o"></i>Monday - Thursday
                                        06.00 - 22.00 </li>
                                    <li>
                                        <i class="fa fa-clock-o"></i>Friday
                                        06.00 - 23.00</li>
                                    <li>
                                        <i class="fa fa-clock-o"></i>Saturday
                                        06.00 - 23.30</li>
                                    <li>
                                        <i class="fa fa-clock-o"></i>Sunday
                                        06.00 - 21.00</li>
                                </ul>
                            </div>
                        </div>
                    </div>  
                </div>
                <div class="regards">
                    Best regards from Hotel China Town Inn.
            </div>
                </div>
        </div>
        

  <!-- Modal Content -->
        <%--<div class="modal" id="modal-one" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-header">
      <h2>Book this room now!</h2>
      <a href="#" class="btn-close" aria-hidden="true">×</a>
    </div>
    <div class="modal-body">
      <label><b>Username</b></label>
      <asp:TextBox ID="TextBox1" runat="server" Text="Username"></asp:TextBox>

      <label><b>Password</b></label>
      <asp:TextBox ID="TextBox2" runat="server" Text="Username"></asp:TextBox>

      
    </div>
    <div class="modal-footer">
      <button type="submit">Login</button>
    </div>
  </div>
</div>--%>


  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Book this room now!</h4>
        </div>
        <div class="modal-body">
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>      
        <asp:TextBox ID="TextBox1" runat="server" Text="Email"></asp:TextBox>

      <asp:Label ID="Label2" runat="server" Text="Check-in date"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" Text="Check-in date"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Check-out date"></asp:Label>
      <asp:TextBox ID="TextBox3" runat="server" Text="Check-out date"></asp:TextBox>
        </div>
        <div class="modal-footer">
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

      
    
    </form>
</body>

</html>