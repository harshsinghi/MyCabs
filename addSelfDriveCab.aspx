
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add_selfdrivecab.aspx.cs" Inherits="Add_selfdrivecab" %>

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
*{
    margin:0 0 7px 0px;
    padding:0;
}
         .box
        {
            border:2px solid #a1a1a1;
              
                border-radius:25px;
            height: 26px;
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
           
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    &nbsp;Logged in as [<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="flip">
                Click to add new cabs&nbsp;
            </div>
        
    <p>
        <br />
    </p>
   
       
        <br />
      
        <strong style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Cab Id"></asp:Label>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="cabid" class="box" runat="server" Height="29px"></asp:TextBox>
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Label ID="Label4" runat="server" Text="Cab Name"></asp:Label>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
        ID="cabname" class="box" runat="server" Height="29px"></asp:TextBox>
        &nbsp;&nbsp;
        <br />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Capacity"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="capacity" class="box" runat="server" Height="29px">
        </asp:TextBox>
        <div id = numMessage></div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Per day Charge"></asp:Label>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="perdaycharge" class="box" runat="server" Height="29px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Status"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="status" class="box" runat="server" Height="29px"></asp:TextBox>
        <br />
    <br />
&nbsp;&nbsp;&nbsp;
    
        <br />
    <asp:Label ID="Label13" runat="server" BackColor="#FFE0C0" Font-Bold="True" 
        Font-Names="Verdana" Font-Size="Small" ForeColor="Teal" 
        Style="z-index: 103; left: 162px; position: absolute; top: 684px; width: 443px;" 
        Text="Cab image file upload"></asp:Label>
    
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" 
                runat="server" Height="23px" Width="262px" />
    <br />
    <br />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
    <asp:Button ID="Button1" class="box" runat="server" Text="Save" Width="95px" 
            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" class="box" runat="server" Text="Cancel" 
        Width="87px" />
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
        
        </ContentTemplate>
        
       
          </asp:UpdatePanel>
   
    <p style="text-align: left">
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

