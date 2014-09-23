<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Bookings.aspx.cs" Inherits="Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Cpid" DataSourceID="SqlDataSource1" Height="141px" Width="613px">
            <Columns>
              <asp:HyperLinkField DataNavigateUrlFields="Cpid,Source,Destination,Status"
               DataNavigateUrlFormatString="Admin_updatebooking.aspx?Cpid={0} &Source={1} &Destination={2} &Status={3}" Text="Select" />
                <asp:BoundField DataField="Cpid" HeaderText="Cpid" ReadOnly="True" 
                    SortExpression="Cpid" />
                <asp:BoundField DataField="Source" HeaderText="Source" 
                    SortExpression="Source" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" 
                    SortExpression="Destination" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CabConnectionString %>" 
            SelectCommand="SELECT [Cpid], [Source], [Destination], [Date], [Status], [eid] FROM [carpoolcabs]">
        </asp:SqlDataSource>
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

