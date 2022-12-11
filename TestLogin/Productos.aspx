<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="TestLogin.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Grid.css" rel="stylesheet" />
    <link href="CSS/Objects.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor3">
    <div class="contenedor2">
    
        <div class="auto-style7">
            <h1><span class="auto-style3">Productos</span> </h1>
        </div>

    <p >
        <span class="auto-style3">Nombre:</span>
        <asp:TextBox class="input2" ID="Tnombre" placeholder="Escriba el producto" runat="server"></asp:TextBox>
    </p>
        <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_Producto" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="codigo_Producto" HeaderText="Codigo" ReadOnly="True" SortExpression="codigo_Producto" />
                <asp:BoundField DataField="nombre_Producto" HeaderText="Nombre" SortExpression="nombre_Producto" />
                <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" />
            </Columns>
            <RowStyle CssClass="RowStyle" />
    <EmptyDataRowStyle CssClass="EmptyRowStyle" />
    <PagerStyle CssClass="PagerStyle" />
    <SelectedRowStyle CssClass="SelectedRowStyle" />
    <HeaderStyle CssClass="HeaderStyle" />
    <EditRowStyle CssClass="EditRowStyle" />
    <AlternatingRowStyle CssClass="AltRowStyle" />
        </asp:GridView>
    <p>
        <span class="auto-style3">Precio:</span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="input2" ID="Tprecio" placeholder="Escriba el precio" runat="server"></asp:TextBox>
    </p>
    <p>
        <span class="auto-style3">Codigo:&nbsp; </span>
        &nbsp;<asp:TextBox class="input2" ID="Tcodigo" placeholder="Escriba el codigo" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:Button class="button" ID="Bagregar" runat="server" Text="Agregar" OnClick="Bagregar_Click" />
&nbsp;
        <asp:Button class="button" ID="Bmodificar" runat="server" Text="Modificar" OnClick="Bmodificar_Click" />
&nbsp;
        <asp:Button class="button" ID="Bborrar" runat="server" Text="Borrar" OnClick="Bborrar_Click" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gimnasio_ProConnectionString %>" DeleteCommand="DELETE FROM [Producto] WHERE [codigo_Producto] = @codigo_Producto" InsertCommand="INSERT INTO [Producto] ([nombre_Producto], [precio]) VALUES (@nombre_Producto, @precio)" ProviderName="<%$ ConnectionStrings:Gimnasio_ProConnectionString.ProviderName %>" SelectCommand="SELECT [codigo_Producto], [nombre_Producto], [precio] FROM [Producto]" UpdateCommand="UPDATE [Producto] SET [nombre_Producto] = @nombre_Producto, [precio] = @precio WHERE [codigo_Producto] = @codigo_Producto">
            <DeleteParameters>
                <asp:Parameter Name="codigo_Producto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre_Producto" Type="String" />
                <asp:Parameter Name="precio" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre_Producto" Type="String" />
                <asp:Parameter Name="precio" Type="String" />
                <asp:Parameter Name="codigo_Producto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </div>
</div>
</asp:Content>
