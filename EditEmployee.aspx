<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Editemployee.aspx.cs" Inherits="Editemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        
        <br />
        <br />
        <br />
        
    </p>
<p>
        
        <br />
        <br />
        <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="eid" DataSourceID="SqlDataSource1" Height="164px" 
            Width="730px" OnRowEditing ="Editemploy"  AllowPaging = "True" 
            ShowFooter = "True" OnRowUpdating = "UpdateEmployee" 
                OnRowCancelingEdit = "CancelEdit" CellPadding="4" ForeColor="#333333" 
            GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>

            <asp:TemplateField ItemStyle-Width = "30px" HeaderText = "eid">
                   <ItemTemplate>
                    <asp:Label ID = "lbleid" runat = "server" Text = '<%# Eval("eid") %>'></asp:Label>
                </ItemTemplate>
              
<ItemStyle Width="30px"></ItemStyle>
              
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width = "100px"  HeaderText = "mobile">
    <ItemTemplate>
        <asp:Label ID="lblmobile" runat="server"
                Text='<%# Eval("mobile")%>'></asp:Label>
    </ItemTemplate>
    
    
<ItemStyle Width="100px"></ItemStyle>
    
    </asp:TemplateField>

     <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Name">
    <ItemTemplate>
        <asp:Label ID="lbldname" runat="server"
            Text='<%# Eval("dname")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtdname" runat="server"
            Text='<%# Eval("dname")%>'></asp:TextBox>
    </EditItemTemplate> 
    
<ItemStyle Width="150px"></ItemStyle>
    
</asp:TemplateField>

    <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "age">
    <ItemTemplate>
        <asp:Label ID="lblage" runat="server"
            Text='<%# Eval("age")%>'></asp:Label>
    </ItemTemplate>
    
<ItemStyle Width="150px"></ItemStyle>
    
</asp:TemplateField>

<asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Designation">
    <ItemTemplate>
        <asp:Label ID="lblDesignation" runat="server"
            Text='<%# Eval("Designation")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtDesignation" runat="server"
            Text='<%# Eval("Designation")%>'></asp:TextBox>
    </EditItemTemplate> 
   
<ItemStyle Width="150px"></ItemStyle>
   
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Status">
    <ItemTemplate>
        <asp:Label ID="lblStatus" runat="server"
            Text='<%# Eval("Status")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtStatus" runat="server"
            Text='<%# Eval("Status")%>'></asp:TextBox>
    </EditItemTemplate> 
  
<ItemStyle Width="150px"></ItemStyle>
  
</asp:TemplateField>

<asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "email">
    <ItemTemplate>
        <asp:Label ID="lblemail" runat="server"
            Text='<%# Eval("email")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtemail" runat="server"
            Text='<%# Eval("email")%>'></asp:TextBox>
    </EditItemTemplate> 
 
<ItemStyle Width="150px"></ItemStyle>
 
 </asp:TemplateField>
  <asp:CommandField  ShowEditButton="True" />

</Columns>
       
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
       
</asp:GridView>
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

