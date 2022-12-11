<%@ Page Title="Provincia" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Provincia.aspx.cs" Inherits="TestLogin.Provincia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Grid.css" rel="stylesheet" />
    <link href="CSS/Objects.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style7 {
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor3">
    <div class="contenedor2">
    <p>
        <br class="auto-style2" />
    </p>
    <h1 class="auto-style7">
        Provincia</h1>
    <p>
        <span class="auto-style2">Nombre:</span>
        <asp:TextBox class="input2" ID="Tnombre" placeholder="Escriba el nombre" runat="server"></asp:TextBox>
        <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_Provincia" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="codigo_Provincia" HeaderText="Codigo" ReadOnly="True" SortExpression="codigo_Provincia" />
                <asp:BoundField DataField="nombre_Provincia" HeaderText="Nombre" SortExpression="nombre_Provincia" />
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
        <span class="auto-style2">Codigo:</span>&nbsp;
        <asp:TextBox class="input2" ID="Tcodigo" placeholder="Escriba el codigo" runat="server"></asp:TextBox>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gimnasio_ProConnectionString %>" DeleteCommand="DELETE FROM [Provincia] WHERE [codigo_Provincia] = @codigo_Provincia" InsertCommand="INSERT INTO [Provincia] ([nombre_Provincia]) VALUES (@nombre_Provincia)" ProviderName="<%$ ConnectionStrings:Gimnasio_ProConnectionString.ProviderName %>" SelectCommand="SELECT [codigo_Provincia], [nombre_Provincia] FROM [Provincia]" UpdateCommand="UPDATE [Provincia] SET [nombre_Provincia] = @nombre_Provincia WHERE [codigo_Provincia] = @codigo_Provincia">
            <DeleteParameters>
                <asp:Parameter Name="codigo_Provincia" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre_Provincia" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre_Provincia" Type="String" />
                <asp:Parameter Name="codigo_Provincia" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</div>
</div>
</asp:Content>
