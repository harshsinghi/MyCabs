<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_AddCabs.aspx.cs" Inherits="Add_Driver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
     Logged in as
     <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
     <style type="text/css">
        .box
        {
            border:2px solid #a1a1a1;
              
                border-radius:25px;
     }
         .style9
         {
             font-size: x-large;
         }
         .style21
     {
         font-size: 30;
         font-weight:bolder;
         border-style: solid;
          -webkit-border-radius: 6px;
          width: 100px;
     }
     </style>
    &nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
&nbsp;<p style="height: 34px">
        <strong><span class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Add a&nbsp; Cab</span></strong><br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Cab Id"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" class="box" runat="server" AutoCompleteType="FirstName" 
        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Cab Name"></asp:Label>
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" class="box" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Kilometre Charge"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" class="box" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Capacity"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" class="box" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    Hour Charge&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" class="box" runat="server"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" class="style21" runat="server" Text="ADD" 
            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" class="style21" runat="server" Text="CANCEL" />
</p>
    <p style="height: 34px">
        &nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;</p>
    <p style="height: 34px">
        &nbsp;</p>
    <p style="height: 34px">
        &nbsp;</p>
    <p style="height: 34px">
        &nbsp;</p>
    <p style="height: 34px">
        &nbsp;</p>
    <p style="height: 34px">
        &nbsp;</p>
<p style="height: 34px">
    &nbsp;</p>
<br />
<br />
</asp:Content>


