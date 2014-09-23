<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="User_carpoolingselect.aspx.cs" Inherits="User_carpoolingselect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="#CC3300" 
            style="font-size: xx-large">SELECT BOOKING </asp:Label>
        <br />
        <br />
    </p>
    <p>
        <br />
    </p>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Cabid" DataSourceID="SqlDataSource1" Height="194px" 
            Width="853px" >
            <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Cabid,cabname,perkmcharge,source,landmark1,landmark2,landmark3,destination,noofkms,Capacity,available"
               DataNavigateUrlFormatString="User_CarPooling.aspx?Cabid={0} &cabaname={1} &perkmcharge={2} &source={3} &landmark1={4} &landmark2={5} &landmark3={6} &destination={7} &noofkms={8} &Capacity={9} &available={10}" Text="Select" />
                <asp:BoundField DataField="Cabid" HeaderText="Cabid" ReadOnly="True" 
                    SortExpression="Cabid" />
                <asp:BoundField DataField="cabname" HeaderText="cabname" 
                    SortExpression="cabname" />
                <asp:BoundField DataField="perkmcharge" HeaderText="perkmcharge" 
                    SortExpression="perkmcharge" />
                <asp:BoundField DataField="source" HeaderText="source" 
                    SortExpression="source" />
                <asp:BoundField DataField="landmark1" HeaderText="landmark1" 
                    SortExpression="landmark1" />
                <asp:BoundField DataField="landmark2" HeaderText="landmark2" 
                    SortExpression="landmark2" />
                <asp:BoundField DataField="landmark3" HeaderText="landmark3" 
                    SortExpression="landmark3" />
                <asp:BoundField DataField="destination" HeaderText="destination" 
                    SortExpression="destination" />
                <asp:BoundField DataField="noofkms" HeaderText="noofkms" 
                    SortExpression="noofkms" />
                     <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                    SortExpression="Capacity" />
                     <asp:BoundField DataField="available" HeaderText="available" 
                    SortExpression="available" />
            </Columns>
        </asp:GridView>
        </ContentTemplate>
        <Triggers>
        
        </Triggers>
        </asp:UpdatePanel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CabConnectionString %>" 
            SelectCommand="SELECT [Cabid], [cabname], [perkmcharge], [source], [landmark1], [landmark2], [landmark3], [destination], [noofkms], [Capacity], [available] FROM [carpoolin]">
        </asp:SqlDataSource>
    </div>
    <p>
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtsearch" runat="server" Height="28px" Width="146px" 
            CssClass="box"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Search Source" CssClass="box" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcab" runat="server" Height="28px" Width="146px" 
            CssClass="box"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="box" Height="26px" 
            onclick="Button2_Click" Text="Search Cab" Width="100px" />
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

