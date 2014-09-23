<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Billing_SelfDrive.aspx.cs" Inherits="Billing_SelfDrive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type = "text/javascript">
    if (window.print) {
        document.write('<form><input type=button name=print value="Print" onClick="window.print()"></form>');
    }

 
        function enableButton2() {
            document.getElementById("btn1").disabled = false;
        }
    
    </script>
    <style type="text/css">
        .style15
        {
            text-align: center;
        }
        .box
     {
            
            border:2px solid #a1a1a1;
            border-radius:25px;
     }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <br />
        <br />
        <br />
        Welcome
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <p class="style15">
        <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
    <p class="style15">
        <strong><asp:Label ID="Label20" runat="server" BackColor="#CC3300" 
            style="font-size: xx-large">Booking Details</asp:Label>
        </strong>
    </p>
<p class="style15">
        <strong>&nbsp;&nbsp;Booking Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="bid" runat="server" ontextchanged="Id_TextChanged" 
            Height="24px" Width="122px" CssClass="box"></asp:TextBox>
        </strong>
    </p>
<p class="style15">
        <strong>&nbsp; Cab ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Id" runat="server" ontextchanged="Id_TextChanged" 
            Height="24px" Width="122px" CssClass="box"></asp:TextBox>
        <br />
        &nbsp;Customer Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="CustId" runat="server" Height="25px" CssClass="box"></asp:TextBox>
        </strong>
    </p>
    <p class="style15">
        <strong>Cab Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="name" runat="server" CssClass="box" Height="22px" 
            Width="119px"></asp:TextBox>
        </strong>
    </p>
    <p class="style15">
        <strong>&nbsp;&nbsp; Source&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtsource" runat="server" CssClass="box" Height="28px" 
            Width="120px"></asp:TextBox>
        </strong>
    </p>
    <p class="style15">
        <strong>&nbsp;&nbsp;&nbsp; Destination&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtdest" runat="server" CssClass="box" Height="29px" 
            Width="134px"></asp:TextBox>
        </strong>
        </p>
    <div>
        <div>
        </div>
    <p class="style15">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date of booking:&nbsp; &nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="131px" 
            CssClass="box" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
         <ajaxToolkit:CalendarExtender ID="CalendarExtender2" Format="MM-dd-yy" TargetControlID="TextBox1" runat="server" >
                </ajaxToolkit:CalendarExtender>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID = "CompareValidator2" runat="server"
                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Invalid Date"
                Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                      <asp:RangeValidator ID = "range2" runat="server"
                ControlToValidate="TextBox1" ErrorMessage="RangeValidator"
                Type="Date">

        </asp:RangeValidator>

        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="range1">
        </ajaxToolkit:ValidatorCalloutExtender>

        </strong>
    </p>
        <p class="style15">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="135px" 
                CssClass="box"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" Format="MM-dd-yy" TargetControlID="TextBox2" runat="server" >
                </ajaxToolkit:CalendarExtender>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID = "CompareValidator1" runat="server"
                ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Invalid Date"
                Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                      <asp:RangeValidator ID = "range1" runat="server"
                ControlToValidate="TextBox2" ErrorMessage="RangeValidator"
                Type="Date">

        </asp:RangeValidator>

        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="range1">
        </ajaxToolkit:ValidatorCalloutExtender>

        
            <ajaxToolkit:ToolkitScriptManager
                    ID="ToolkitScriptManager1" runat="server">
                </ajaxToolkit:ToolkitScriptManager>
                     <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" Enabled="true" TargetControlID="Comparevalidator1">
                     </ajaxToolkit:ValidatorCalloutExtender>

        
            </strong>
    </p>
    </div>
    <p class="style15">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong>
    </p>
    <p class="style15">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Number of days&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="noofdays" runat="server" ontextchanged="noofdays_TextChanged" 
            CssClass="box" Height="31px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
        </strong>
    </p>
    <p class="style15">
        <strong>Per day Charge&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="charge" runat="server" CssClass="box" Height="29px"></asp:TextBox>

        <br />
        <br />
        &nbsp;Total :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="charge0" runat="server" ontextchanged="charge0_TextChanged" 
            CssClass="box" Height="31px" Width="126px"></asp:TextBox>
        </strong>
    </p>
    <p class="style15">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="box" 
            Height="40px" style="font-weight: 700" Width="142px" 
            onclick="Button1_Click1" />
           <form>
            <input type = "button" id="btn1" name=print value="Print" onClick="window.print()" />
            </form>
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
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
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
</asp:Content>

