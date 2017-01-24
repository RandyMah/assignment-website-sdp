<%@ Page Title="" Language="VB" MasterPageFile="~/Staff_Manager/SM-Main.master" AutoEventWireup="false" CodeFile="Modify_Rooms.aspx.vb" Inherits="Staff_Manager_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">

        <div class="col-md-12 center-block">
            <h1>Update and Modify Rooms</h1>
        </div>

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Room Number:</h4>
        </div>

        <div class="col-md-7">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Button ID="Button3" runat="server" Text="Search" CssClass="btn btn-info" />
        </div>

    </div>

    <asp:Panel ID="Panel1" runat="server">
        <div class="row">

            <div class="col-md-3" style="left: 0px; top: 0px">
                <h4>Types of Suite:</h4>
            </div>

            <div class="col-md-9">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>

        </div>

     <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Number of Beds:</h4>
        </div>

        <div class="col-md-9">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>

    </div>

      <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Number of Towels:</h4>
        </div>

        <div class="col-md-9">
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </div>

    </div>
    
    <div class="row">

        <div class="col-md-12" style="left: 0px; top: 0px">
            <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn btn-info center-block" />
        </div>

    </div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
         <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Types of Suite:</h4>
        </div>

        <div class="col-md-9">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">Please Select a Room</asp:ListItem>
                <asp:ListItem>Luxury</asp:ListItem>
                <asp:ListItem>Business</asp:ListItem>
                <asp:ListItem>Economy</asp:ListItem>
            </asp:DropDownList>
        </div>

    </div>

     <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Number of Beds:</h4>
        </div>

        <div class="col-md-9">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

    </div>

      <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Number of Towels:</h4>
        </div>

        <div class="col-md-9">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

    </div>
    
    <div class="row">

        <div class="col-md-12" style="left: 0px; top: 0px">
            <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-info center-block" />
        </div>

    </div>
    </asp:Panel>
</asp:Content>


