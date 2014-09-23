<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Delete_employee.aspx.cs" Inherits="Delete_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type ="text/css">
.box
        {
            border:2px solid #a1a1a1;
              
                border-radius:25px;
     }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; font-weight: 700">
        Delete Employee<br />
    </div>
    <div style="text-align: center">
        <asp:DropDownList ID="DropDownList1" class="box" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="mobile" DataValueField="mobile" 
            Height="42px" Width="174px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CabConnectionString %>" 
            SelectCommand="SELECT [mobile] FROM [employee]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <asp:RegularExpressionValidator ID = "RegularExpressionValidator" runat="server" 
                   ControlToValidate="TextBox1" ErrorMessage="Only digits allowed"
         ForeColor="Red" ValidationExpression="(^[0-9]*)"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="Button1" class="box" runat="server" Height="29px" onclick="Button1_Click" 
            style="font-weight: 700" Text="Delete" Width="111px" />
    </div>
    <p>
        <br />
        <br />
    </p>
</asp:Content>

