<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_addroute.aspx.cs" Inherits="Admin_addroute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style type="text/css">
                
          .box
        {
            border:2px solid #a1a1a1;
              
            border-radius:25px;
        }
    </style>
    <div style="font-weight: 700; text-align: center">
        <br />
        <br />
        Logged in as [<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        ]
        <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        ADD ROUTE:<br />
        <br />
        Route ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="box"></asp:TextBox>
        <br />
        <br />
        Source:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="box"></asp:TextBox>
        <br />
        <br />
        Destination:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" CssClass="box"></asp:TextBox>
        <br />
        <br />
        No of Kilometres:
        <asp:TextBox ID="TextBox4" runat="server" CssClass="box"></asp:TextBox>
        <br />
        <br />
        Price Per Km:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" CssClass="box"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="31px" Text="Add" 
            Width="82px" CssClass="box" onclick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <p>
        <br />
        <br />
        <br />
    </p>
    <p>
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

