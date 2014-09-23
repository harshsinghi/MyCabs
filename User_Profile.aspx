<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="User_Profile.aspx.cs" Inherits="User_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            color: #FF0000;
        }
        .style16
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <strong>
        <span class="style16">Welcome </span>
        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="style16"></asp:Label>
        <span class="style16">,</span></strong>&nbsp;<strong><asp:Label ID="Label3" 
            runat="server" Text="Label" Visible="False"></asp:Label>
        </strong>
    </p>
    <p style="text-align: center">
        <strong>
        <br />
        Your Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="24px" 
            ontextchanged="TextBox1_TextChanged" CssClass="box" Enabled="False" ></asp:TextBox>
        <br />
        <br />
        Mobile Number:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="23px" CssClass="box"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="27px" CssClass="box"></asp:TextBox>
          <asp:RegularExpressionValidator ID = "RegularExpressionValidator" runat="server" 
                   ControlToValidate="TextBox3" ErrorMessage="Only Character allowed"
         ForeColor="Red" ValidationExpression="(^[a-z|A-z| ]*)"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="25px" CssClass="box"></asp:TextBox>
           <asp:RegularExpressionValidator ID = "RegularExpressionValidator1" runat="server" 
                   ControlToValidate="TextBox4" ErrorMessage="Only Character allowed"
         ForeColor="Red" ValidationExpression="(^[a-z|A-z| ]*)"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Email Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Height="25px" CssClass="box"></asp:TextBox>
         <asp:RegularExpressionValidator ID = "RegularExpressionValidator2" runat="server" 
                   ControlToValidate="TextBox5" ErrorMessage="Email Id Invalid"
         ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
            Text=" Save" Width="80px" CssClass="box" />
        </strong>
    </p>
    <div>
        <br />
        <span class="style15"><strong><br />
        <br />
        <br />
        </strong></span>
        <br />
    </div>
    <p style="text-align: center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

