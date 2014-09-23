<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_Assignemployee.aspx.cs" Inherits="Admin_Assignemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label3" runat="server" BackColor="#CC3300" 
            style="font-size: xx-large">ASSIGN A DRIVER </asp:Label>
        <br />
    </p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Cpid" DataSourceID="SqlDataSource1" Height="143px" 
            Width="603px" OnRowEditing = "EditCab" OnRowUpdating = "UpdateCab" 
            OnRowCancelingEdit = "CancelEdit">
            <Columns>
            <asp:TemplateField ItemStyle-Width = "30px" HeaderText = "Cpid">
                   <ItemTemplate>
                    <asp:Label ID = "lblCpid" runat = "server" Text = '<%# Eval("Cpid") %>'></asp:Label>
                </ItemTemplate>
              
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width = "100px"  HeaderText = "Source">
    <ItemTemplate>
        <asp:Label ID="lblSource" runat="server"
                Text='<%# Eval("Source")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtsource" runat="server"
            Text='<%# Eval("Source")%>'></asp:TextBox>
    </EditItemTemplate> 
    
    </asp:TemplateField>
    <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Destination">
    <ItemTemplate>
        <asp:Label ID="lbldestination" runat="server"
            Text='<%# Eval("Destination")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtdestination" runat="server"
            Text='<%# Eval("source")%>'></asp:TextBox>
    </EditItemTemplate> 
    
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "cid">
    <ItemTemplate>
        <asp:Label ID="lblcid" runat="server"
            Text='<%# Eval("cid")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtcid" runat="server"
            Text='<%# Eval("cid")%>'></asp:TextBox>
    </EditItemTemplate> 
    
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Date">
    <ItemTemplate>
        <asp:Label ID="lblDate" runat="server"
            Text='<%# Eval("Date")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtdate" runat="server"
            Text='<%# Eval("Date")%>'></asp:TextBox>
    </EditItemTemplate> 
    
</asp:TemplateField>

<asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "eid">
    <ItemTemplate>
        <asp:Label ID="lbleid" runat="server"
            Text='<%# Eval("eid")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txteid" runat="server"
            Text='<%# Eval("eid")%>'></asp:TextBox>
    </EditItemTemplate> 
    
</asp:TemplateField>
<asp:CommandField  ShowEditButton="True" />

            </Columns>
            
        </asp:GridView>
       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CabConnectionString %>" 
            SelectCommand="SELECT [Cpid], [Source], [Destination], [Date], [eid] FROM []">
        </asp:SqlDataSource>--%>
    </p>
<p>
        &nbsp;</p>
<p>
        <asp:Label ID="Label4" runat="server" BackColor="#99FF66" 
            style="font-size: xx-large">DRIVER&#39;S AVAILABLE</asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="eid" DataSourceID="SqlDataSource2" Width="604px" 
            Height="136px">
            <Columns>
                <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" 
                    SortExpression="eid" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" 
                    SortExpression="mobile" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CabConnectionString %>" 
            SelectCommand="SELECT [eid], [mobile], [Status], [dname] FROM [employee]">
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Height="45px" 
            PostBackUrl="~/Admin_Home.aspx" Text="Back" Width="109px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

