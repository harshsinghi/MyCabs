<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="User_selfdrive1.aspx.cs" Inherits="MahindraLogan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        b</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script lang="javascript" type="text/javascript">
function SelectSingleRadiobutton(rdbtnid) {
var rdBtn = document.getElementById(rdbtnid);
var rdBtnList = document.getElementsByTagName("input");
for (i = 0; i < rdBtnList.length; i++) {
if (rdBtnList[i].type == "radio" && rdBtnList[i].id != rdBtn.id)
{
rdBtnList[i].checked = false;
}
}
}
</script>
<style type = "text/css">
.box
     {
            
            border:2px solid #a1a1a1;
            border-radius:25px;
     }

</style>
    <p>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="#CC3300" 
            style="font-size: xx-large">SELECT BOOKING </asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Cabid" DataSourceID="SqlDataSource1" Height="199px" 
            Width="754px">
            <Columns>
             <asp:HyperLinkField DataNavigateUrlFields="Cabid,Cabname,Capacity,source, destination,Perdaycharge,Status"
               DataNavigateUrlFormatString="Billing_SelfDrive.aspx?cabid={0} &cabname={1} &capacity={2} &source={3} &destination={4} &perdaycharge={5} &status={6}" Text="Select" />
                <asp:BoundField DataField="Cabid" HeaderText="Cabid" ReadOnly="True" 
                    SortExpression="Cabid" />
                <asp:BoundField DataField="Cabname" HeaderText="Cabname" 
                    SortExpression="Cabname" />
                <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                    SortExpression="Capacity" />
                <asp:BoundField DataField="source" HeaderText="source" 
                    SortExpression="source" />
                <asp:BoundField DataField="destination" HeaderText="destination" 
                    SortExpression="destination" />
                <asp:BoundField DataField="Perdaycharge" HeaderText="Perdaycharge" 
                    SortExpression="Perdaycharge" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:BoundField DataField="Filecab" HeaderText="Filecab" 
                    SortExpression="Filecab" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CabConnectionString %>" 
            SelectCommand="SELECT * FROM [Selfdrive_cab]"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;
        <asp:TextBox ID="txtsearch" runat="server" Height="28px" Width="146px" 
            CssClass="box"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Search Source" CssClass="box" />
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
