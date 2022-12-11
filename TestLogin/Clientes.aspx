<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="TestLogin.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Objects.css" rel="stylesheet" />
    <link href="CSS/Grid.css" rel="stylesheet" />
   
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style7 {
            color: #FFFFFF;
            text-align: center;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="contenedor3">
    <div class="contenedor2">
    <h1 class="auto-style7">
        Clientes</h1>
        <p>
            <span class="auto-style3">Nombre:</span>
        <asp:TextBox class="input2" ID="Tname" placeholder="Escriba su nombre" runat="server"></asp:TextBox>
        <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            </Columns>
            <RowStyle CssClass="RowStyle" />
    <EmptyDataRowStyle CssClass="EmptyRowStyle" />
    <PagerStyle CssClass="PagerStyle" />
    <SelectedRowStyle CssClass="SelectedRowStyle" />
    <HeaderStyle CssClass="HeaderStyle" />
    <EditRowStyle CssClass="EditRowStyle" />
    <AlternatingRowStyle CssClass="AltRowStyle" />
        </asp:GridView>
    </p>
    <p>
        <span class="auto-style3">Correo:&nbsp;&nbsp; </span>
        <asp:TextBox class="input2" placeholder="Escriba su correo" ID="Tmail" runat="server"></asp:TextBox>
    </p>
    <p>
        <span class="auto-style3">Clave:&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox class="input2" placeholder="Escriba su contraseña" ID="Tpassword" runat="server"></asp:TextBox>
    </p>
        
        <asp:DropDownList ID="DDLtipo" runat="server" CssClass="mydropdownlist1">
            <asp:ListItem>Regular</asp:ListItem>
            <asp:ListItem>Administrador</asp:ListItem>
        </asp:DropDownList>
            
<p>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:Button class="button" ID="Badd" runat="server" Text="Agregar" OnClick="Badd_Click" />
&nbsp;
        <asp:Button class="button" ID="Bmodify" runat="server" Text="Modificar" OnClick="Bmodify_Click" />
&nbsp;
        <asp:Button class="button" ID="Bdelete" runat="server" Text="Borrar" OnClick="Bdelete_Click" />
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gimnasio_ProConnectionString %>" DeleteCommand="DELETE FROM [Reg_Usuarios] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Reg_Usuarios] ([Email], [Clave], [Nombre], [Tipo]) VALUES (@Email, @Clave, @Nombre, @Tipo)" ProviderName="<%$ ConnectionStrings:Gimnasio_ProConnectionString.ProviderName %>" SelectCommand="SELECT [Email], [Clave], [Nombre], [Tipo] FROM [Reg_Usuarios]" UpdateCommand="UPDATE [Reg_Usuarios] SET [Clave] = @Clave, [Nombre] = @Nombre, [Tipo] = @Tipo WHERE [Email] = @Email">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Clave" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Tipo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Clave" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Tipo" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</div>
</asp:Content>
