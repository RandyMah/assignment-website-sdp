﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="testing2.aspx.vb" Inherits="testing2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/mainContent.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/mainContentjs.js"></script>
     <link href="css/jquery.datetimepicker.css" rel="stylesheet" />
    <script src="/js/jquery.js"></script>
    <script src="/js/jquery.datetimepicker.full.min.js"></script>
        <script  type ="text/javascript">
            jQuery(function () {
                jQuery('#date_timepicker_start').datetimepicker({
                    format: 'Y/m/d',
                    onShow: function (ct) {
                        this.setOptions({
                            maxDate: jQuery('#date_timepicker_end').val() ? jQuery('#date_timepicker_end').val() : false
                        })
                    },
                    timepicker: false
                });
                jQuery('#date_timepicker_end').datetimepicker({
                    format: 'Y/m/d',
                    onShow: function (ct) {
                        this.setOptions({
                            minDate: jQuery('#date_timepicker_start').val() ? jQuery('#date_timepicker_start').val() : false
                        })
                    },
                    timepicker: false
                });
            });
        </script>
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
                <asp:Button ID="Button1" runat="server" Text="Button" data-toggle="modal" data-target="#myModal" OnClientClick="return false"/>
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
       
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" tabindex="-1">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Book this room now!</h4>
        </div>
        <div class="modal-body">
            <div class="form-horizontal">
                <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                 <asp:TextBox ID="TxtEmail" runat="server" placeholder="Email address" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Check-in date" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="TxtCheckin" runat="server" placeholder="Check-in date" CssClass="form-control"></asp:TextBox>
                        <span class="glyphicon glyphicon-calendar" id="calendar-icon"></span>    
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Check-out date" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <asp:TextBox ID="TxtCheckout" runat="server" placeholder="Check-out date" CssClass="form-control"></asp:TextBox>
                    <asp:Calendar ID="Calendar2" runat="server" ></asp:Calendar>
                </div>
            </div>
            </div>
        </div>

        <div class="modal-footer">
            <asp:Button ID="Button2" runat="server" Text="Submit" cssClass="btn btn-default"/>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

    </form>
</body>

</html>