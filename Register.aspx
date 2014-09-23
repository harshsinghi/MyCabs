
<%@ Page Title="" Language="C#" MasterPageFile="~/general.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function () {
        $("#flip").click(function () {
            $("#panel").slideToggle("slow");
        });
    });
</script>
    <style type="text/css">
         .box
        {
            border:2px solid #a1a1a1;
              
                border-radius:25px;
     }
     #panel,#flip
     {
         padding:5px;
         text-align:center;
         background-color:#e5eecc;
         border: solid 1px #c3c3c3;
     }
     #panel
     {
         padding:50px;
         display:none;
     }
        .style15
     {
         font-size: xx-large;
     }
     .style15
    {
        font-size: x-large;
    }
        #TextArea1
        {
            height: 78px;
            width: 216px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id = "flip">
        <strong>
        <span class="style15">Register and start now.</span></strong></div>


       <p style="width: 343px; margin-left: 280px">
           <strong>
           <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
           </strong></p>
       <!--  <div id ="panel">-->
           <p style="width: 447px; margin-left: 280px">
               <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtname" class="box" runat="server" Height="31px" Width="147px" 
                   ontextchanged="txtname_TextChanged"></asp:TextBox>
        <asp:RegularExpressionValidator ID = "RegularExpressionValidator" runat="server" 
                   ControlToValidate="txtname" ErrorMessage="Only Character allowed"
         ForeColor="Red" ValidationExpression="(^[a-z|A-z| ]*)"></asp:RegularExpressionValidator>
        <br />
        <br />
        Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtmobile" class="box" runat="server" Height="34px" MaxLength="10" 
                   Width="144px"></asp:TextBox>
        <asp:RegularExpressionValidator ID = "RegularExpressionValidator1" runat="server" ControlToValidate="txtmobile" ErrorMessage="Only digits allowed"
         ForeColor="Red" ValidationExpression="(^[0-9]*)"></asp:RegularExpressionValidator>
               </strong>
    </p>
       <p style="width: 447px; margin-left: 280px">
           <strong>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="txtaddress" runat="server" CssClass="box" Height="35px" 
               Width="143px"></asp:TextBox>
        <br />
        <br />
        Email-ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <asp:TextBox ID="txtemail" class="box" runat="server" 
            style="margin-bottom: 1px" Height="37px" Width="141px"></asp:TextBox>
            <asp:RegularExpressionValidator ID = "RegularExpressionValidator2" runat="server" 
                   ControlToValidate="txtemail" ErrorMessage="Email Id Invalid"
         ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtpassword" class="box" runat="server" 
            style="margin-bottom: 1px" Height="34px" TextMode="Password" Width="140px" ></asp:TextBox>
          
        <br />
        <br />
        Retype Password&nbsp;&nbsp;
        <asp:TextBox ID="txtrepassword" class="box" runat="server" 
            style="margin-bottom: 1px" Height="34px" TextMode="Password" Width="138px"></asp:TextBox>
               <asp:CompareValidator ID="CompareValidator1" runat="server" 
                   ControlToCompare="txtrepassword" ControlToValidate="txtpassword" 
                   ErrorMessage="Password not matching" ForeColor="Red"></asp:CompareValidator>
        <br />
           </strong>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p style="width: 343px; margin-left: 280px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" class="box" runat="server" onclick="Button1_Click" 
            Text="Register" Height="48px" Width="114px" />
    </p>
      <!--<div>-->
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           &nbsp;</p>
       <p style="width: 343px; margin-left: 0px">
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
    </p>
       <p style="width: 343px; margin-left: 0px">
        <br />
        <strong>
        <br class="style15" />
           </strong>
    </p>
       <p style="width: 343px; margin-left: 0px">
           <br />
    </p>
       
       <p style="width: 343px; margin-left: 0px">
        <br />
    </p>
</asp:Content>


