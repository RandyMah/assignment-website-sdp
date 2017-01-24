<%@ Page Title="" Language="VB" MasterPageFile="~/Staff_Manager/SM-Main.master" AutoEventWireup="false" CodeFile="Searching_Details.aspx.vb" Inherits="Staff_Manager_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">

        <div class="col-md-12 center-block">
            <h1>Search for Customer's Details</h1>
        </div>

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Name:</h4>
        </div>

        <div class="col-md-9">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

    </div>

    <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Identification Number:</h4>
        </div>

        <div class="col-md-9">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

    </div>

    <div class="row">

        <div class="col-md-12" style="left: 0px; top: 0px">
            <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn btn-info center-block" />
        </div>

        <div class="row">

            <div class="col-md-12" style="left: 0px; top: 0px">
                <asp:Label ID="Label1" runat="server" Text="Search Results" BorderStyle="Ridge"></asp:Label>
            </div>

        </div>
    </div>
</asp:Content>

