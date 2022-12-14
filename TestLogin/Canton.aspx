<%@ Page Title="Cantón" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Canton.aspx.cs" Inherits="TestLogin.Canton" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Grid.css" rel="stylesheet" />
    <link href="CSS/Objects.css" rel="stylesheet" />
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
    <p>
        <br />
    </p>
    <h1 class="auto-style7">
        Cantón</h1>
    <p>
        <span class="auto-style3">Nombre:</span>
        <asp:TextBox class="input2" placeholder="Escriba el nombre" ID="Tnombre" runat="server"></asp:TextBox>
        <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_Canton" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="codigo_Canton" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo_Canton" />
                <asp:BoundField DataField="nombre_Canton" HeaderText="Nombre" SortExpression="nombre_Canton" />
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
        <span class="auto-style3">Codigo:</span>&nbsp;
        <asp:TextBox class="input2" placeholder="Escriba el codigo" ID="Tcodigo" runat="server"></asp:TextBox>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gimnasio_ProConnectionString %>" DeleteCommand="DELETE FROM [Canton] WHERE [codigo_Canton] = @codigo_Canton" InsertCommand="INSERT INTO [Canton] ([nombre_Canton]) VALUES (@nombre_Canton)" SelectCommand="SELECT [codigo_Canton], [nombre_Canton] FROM [Canton]" UpdateCommand="UPDATE [Canton] SET [nombre_Canton] = @nombre_Canton WHERE [codigo_Canton] = @codigo_Canton">
            <DeleteParameters>
                <asp:Parameter Name="codigo_Canton" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre_Canton" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre_Canton" Type="String" />
                <asp:Parameter Name="codigo_Canton" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </div>
</div>
</asp:Content>
