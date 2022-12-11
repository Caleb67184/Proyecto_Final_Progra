<%@ Page Title="Perfil" Language="C#" MasterPageFile="~/UsuarioRegular/Menu_Regular.Master" AutoEventWireup="true" CodeBehind="Profile_Regular.aspx.cs" Inherits="TestLogin.UsuarioRegular.Profile_Regular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Grid.css" rel="stylesheet" />
    <link href="../CSS/Objects.css" rel="stylesheet" />
<style type="text/css">
    .auto-style2 {
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Gimnasio_ProConnectionString %>" SelectCommand="SELECT [Email], [Clave], [Nombre] FROM [Reg_Usuarios] WHERE ([Email] = @Email2)">
    <SelectParameters>
        <asp:ControlParameter ControlID="Lcorreo" Name="Email2" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />
    <h1 class="auto-style7">
        Perfil</h1>
<asp:Label ID="Lcorreo" runat="server" Visible="False"></asp:Label>
<br />
    <span class="auto-style2">Nombre:</span>
    <asp:TextBox class="input2" ID="Tname" placeholder="Escriba su nombre" runat="server"></asp:TextBox>
     &nbsp; <span class="auto-style2">
        Telefono:</span>
    <asp:TextBox class="input2" ID="Ttelefono" placeholder="Escriba su telefono" runat="server"></asp:TextBox>
        <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
        <asp:BoundField DataField="Clave" HeaderText="Contraseña" SortExpression="Clave" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
    </Columns>
         <RowStyle CssClass="RowStyle" />
    <EmptyDataRowStyle CssClass="EmptyRowStyle" />
    <PagerStyle CssClass="PagerStyle" />
    <SelectedRowStyle CssClass="SelectedRowStyle" />
    <HeaderStyle CssClass="HeaderStyle" />
    <EditRowStyle CssClass="EditRowStyle" />
    <AlternatingRowStyle CssClass="AltRowStyle" />
</asp:GridView>
        
    <br />
    <br />
    <span class="auto-style2">Clave:&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:TextBox class="input2" ID="Tclave" placeholder="Escriba su contraseña" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="auto-style2">Rutina:</span><asp:DropDownList ID="DDLrutina" CssClass="mydropdownlist1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_Rutina" DataValueField="nombre_Rutina">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    <br />
    <br />
    <span class="auto-style2">Email:&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <asp:TextBox class="input2" ID="Tcorreo" placeholder="Escriba su correo" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gimnasio_ProConnectionString %>" SelectCommand="SELECT [nombre_Rutina] FROM [Rutinas]"></asp:SqlDataSource>
    <asp:Button class="button3" ID="Button1" runat="server" OnClick="Button1_Click" Text="Modificar" />
</div>
</div>
</asp:Content>
