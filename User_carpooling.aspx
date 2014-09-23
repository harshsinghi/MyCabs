<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="User_CarPooling.aspx.cs" Inherits="User_CarPooling" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <p>
        d</p>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type = "text/javascript">
    if (window.print) 
    {
        document.write('<form><input type=button name=print value="Print" onClick="window.print()"></form>');
    }
    </script>
    <script type = "text/javascript">
       function popupCalendar() {
           var datefield = docu
           ment.getElementById('datefield');
           if (datefield.style.display == 'none')
               datefield.style.display = 'block';
           else
               datefield.style.display = 'none';

       }

       function checkDate(sender, args) {
           if (sender._selectedDate < new Date()) {
               alert("You cannot select a day earlier than today!");
               sender._selectedDate = new Date();
               // set the date back to the current date
               sender._textbox.set_Value(sender._selectedDate.format(sender._format))
           }
       }
   </script>

   <style type = "text/css">
.ui-timepicker-div .ui-widget-header { margin-bottom: 8px; }
.ui-timepicker-div dl { text-align: left; }
.ui-timepicker-div dl dt { float: left; clear:left; padding: 0 0 0 5px; }
.ui-timepicker-div dl dd { margin: 0 10px 10px 40%; }
.ui-timepicker-div td { font-size: 90%; }
.ui-tpicker-grid-label { background: none; border: none; margin: 0; padding: 0; }

.ui-timepicker-rtl{ direction: rtl; }
.ui-timepicker-rtl dl { text-align: right; padding: 0 5px 0 0; }
.ui-timepicker-rtl dl dt{ float: right; clear: right; }
.ui-timepicker-rtl dl dd { margin: 0 40% 10px 10px; }
</style>
   <style>
   .box
        {
            border:2px solid #a1a1a1;
              
                border-radius:25px;
        }
       .style15
       {
           font-size: x-large;
       }
   </style>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <span class="style15">Welcome
        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
        ,&nbsp;
        </span>
        <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;<strong><asp:Label ID="Label20" runat="server" BackColor="#CC3300" 
            style="font-size: xx-large">Booking Details</asp:Label>
        </strong>
    </p>
    <p>
        <asp:Label ID="Label13" runat="server" style="font-weight: 700" 
            Text="Booking ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server" Height="26px" Width="143px" 
            CssClass="box"></asp:TextBox>
    </p>
    <p>
        <br />
        <asp:Label ID="Label3" runat="server" style="font-weight: 700" 
            Text="Customer ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcustid" runat="server" Height="25px" Width="141px" 
            CssClass="box"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcustid0" runat="server" Height="25px" Width="141px" 
            CssClass="box" Visible="False">Booked</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<eo:PopupCalendar ID="PopupCalendar1" 
            runat="server">
        </eo:PopupCalendar>
        <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text="Cab ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;<asp:TextBox ID="txtcabid" runat="server" AutoPostBack="true" 
            ontextchanged="TextBox12_TextChanged" CssClass="box" Height="25px" 
            Width="140px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" style="font-weight: 700" Text="Source"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtsource" runat="server" Height="25px" Width="142px" 
            CssClass="box"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;
        </p>
    <div style="text-align: left">
        <asp:Label ID="Label17" runat="server" style="font-weight: 700" 
            Text="Pickup Point"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:RadioButton ID="RadioButton1" GroupName="landmark" runat="server" 
            CssClass="box" />
&nbsp;
        <asp:RadioButton ID="RadioButton2" GroupName="landmark" runat="server" 
            CssClass="box" />
&nbsp;
        <asp:RadioButton ID="RadioButton3" GroupName="landmark" runat="server" 
            CssClass="box" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" 
            runat="server" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
<p>
        <asp:Label ID="Label7" runat="server" style="font-weight: 700" 
            Text="Destination"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtdest" runat="server" Height="25px" 
            Width="137px" CssClass="box"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" style="font-weight: 700" Text="Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID = "CalendarExtender1"  
            TargetControlID="TextBox11" Format="MM-dd-yy" runat="server" >
        </ajaxToolkit:CalendarExtender>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server"
                ControlToValidate="TextBox11" Display="Dynamic" ErrorMessage="Invalid Date"
                Operator="DataTypeCheck" Type="Date">
</asp:CompareValidator>
<ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender2"
            runat="server" Enabled="true" TargetControlID="Comparevalidator1">
        </ajaxToolkit:ValidatorCalloutExtender>
        <asp:RangeValidator ID = "range1" runat="server"
                ControlToValidate="TextBox11" ErrorMessage="RangeValidator"
                Type="Date">
        </asp:RangeValidator>

        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="range1">
        </ajaxToolkit:ValidatorCalloutExtender>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       <%-- <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True"
                    Format="dd-MM-yyyy HH':'mm':'ss" TargetControlID="txtEndDateTime" PopupButtonID="endCal"  CssClass="cal_Theme1"/>
                    <img runat="server" id="endCal" src="Images/date_picker.jpg" style="cursor: hand;" />--%>
   
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtcapacity" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtavailable" runat="server" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" style="font-weight: 700" Text="Time"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <ajaxToolkit:ToolkitScriptManager ID= "toolkit1" runat="server"></ajaxToolkit:ToolkitScriptManager>
         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/calendar.jpg" />
<%--<c1:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender"
                runat="server" Enabled="True" TargetControlID="CompareValidator1">
</cc1:ValidatorCalloutExtender>
        --%>
        
        </p>
    <p>
        <asp:Label ID="Label18" runat="server" style="font-weight: 700" 
            Text="Number of Kms"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtnokms" runat="server" Height="25px" Width="141px" 
            CssClass="box"></asp:TextBox>
    </p>
    <p>
        <asp:Label runat="server" style="font-weight: 700" 
            Text="Per km charge"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtperkmcharge" runat="server" Height="25px" Width="141px" 
            CssClass="box"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label11" runat="server" style="font-weight: 700" 
            Text="Total Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Width="143px" CssClass="box"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" style="font-weight: 700" Text="You Pay"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    &nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Calculate" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" class="box" runat="server" Height="47px" Text="Book Now" 
            Width="134px" onclick="Button1_Click" />
              
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type = "button" name=print value="Print" onClick="window.print()" 
            class="box" style="height: 47px; width: 124px" />
            &nbsp;
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

