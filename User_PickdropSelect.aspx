<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="User_Pickdropselect.aspx.cs" Inherits="User_Pickdropselect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="#CC3300" 
            style="font-size: xx-large">SELECT BOOKING </asp:Label>
    </p>
    <p>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="rid" DataSourceID="SqlDataSource1" Height="379px" 
            Width="786px">
            <Columns>
                   <asp:HyperLinkField DataNavigateUrlFields="rid,source,destination,nokms,priceperkm"
               DataNavigateUrlFormatString="User_Pickdrop.aspx?rid={0} &source={1} &destination={2} &nokms={3} &priceperkm={4}" Text="Select" />
    
                <asp:BoundField DataField="rid" HeaderText="rid" ReadOnly="True" 
                    SortExpression="rid" />
                <asp:BoundField DataField="source" HeaderText="source" 
                    SortExpression="source" />
                <asp:BoundField DataField="destination" HeaderText="destination" 
                    SortExpression="destination" />
                <asp:BoundField DataField="nokms" HeaderText="nokms" SortExpression="nokms" />
                <asp:BoundField DataField="priceperkm" HeaderText="priceperkm" 
                    SortExpression="priceperkm" />
            </Columns>
            <EditRowStyle BackColor="#993366" />
            <HeaderStyle BackColor="#99CC00" BorderColor="#660033" />
            <RowStyle BackColor="#FFFF99" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CabConnectionString %>" 
            SelectCommand="SELECT * FROM [route]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:TextBox ID="txtsearch" runat="server" Height="30px" CssClass="box" 
            Width="153px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="box" Height="32px" 
            onclick="Button1_Click" Text="Search Source" Width="120px" />
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

