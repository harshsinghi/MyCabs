<%@ Page Title="" Language="C#" MasterPageFile="~/general.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            border-bottom-left-radius: 50px 25px; padding: 1cm;
            border-bottom-right-radius: 50px 25px; padding: 1cm;
            border-top-left-radius : 50px 25px; padding: 1cm;
            border-top-right-radius: 50px 25px; padding: 1cm; 
            width: 100%;
        }
           .box
        {
            border:2px solid #a1a1a1;
              
                border-radius:25px;
     }
        .style16
        {
            font-size: large;
        }
    .style17
    {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style15">
        <tr>
            <td class="style17">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
                <strong>
        <asp:Label ID="Label5" runat="server" BackColor="#CC3300" 
            style="font-size: xx-large; text-align: center;">CONTACT FORM</asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp; <span class="style16">&nbsp;
    Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <asp:TextBox ID="YourName" class="box" runat="server" Height="31px" Width="165px" 
                    CssClass="style16"></asp:TextBox>
                <br />
    <br class="style16"/>
                <span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Subject&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:TextBox 
                    ID="YourSubject" class="box" runat="server" Height="37px" Width="159px" 
                    CssClass="style16"></asp:TextBox>
                <br />
    <br class="style16" />
                <span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
    <asp:TextBox ID="YourEmail" class="box" runat="server" Height="36px" Width="155px" 
                    CssClass="style16" ontextchanged="YourEmail_TextChanged" Visible="False"></asp:TextBox>
                <br />
    <br class="style16" />
                <span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    feedback&nbsp;&nbsp;&nbsp; </span> 
                <asp:TextBox ID="Comments" class="box" runat="server" Height="70px" 
                    Width="171px" CssClass="style16" TextMode="MultiLine"></asp:TextBox>
                <br class="style16" />
                <span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="DisplayMessage" runat="server" Text="Label" Visible="False"></asp:Label>
                </span>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" class="box" runat="server" onclick="Button1_Click" Text="Post" 
                    Width="84px" />
                </strong>
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
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<br />
&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

