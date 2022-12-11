<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Rutinas.aspx.cs" Inherits="TestLogin.Rutinas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Grid.css" rel="stylesheet" />
    <link href="CSS/Objects.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor3">
        <div class="contenedor2">

            <h1 style="color: #FFFFFF; text-align: center">Rutinas</h1>

            <span style="color: #FFFFFF">Rutina:</span> <asp:TextBox class="input2" ID="Trutina" placeholder="Escriba la rutina" runat="server"></asp:TextBox>

            <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_Rutina" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="codigo_Rutina" HeaderText="Codigo" ReadOnly="True" SortExpression="codigo_Rutina" />
                    <asp:BoundField DataField="nombre_Rutina" HeaderText="Rutina" SortExpression="nombre_Rutina" />
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
            <span style="color: #FFFFFF">Codigo:</span> <asp:TextBox class="input2" ID="Tcodigo" placeholder="Escriba el codigo" runat="server"></asp:TextBox>
            <p>
            <asp:Label ID="Lmensaje" runat="server" Text="" ForeColor="Red"></asp:Label>
                <br />
            <asp:Button class="button" ID="Bagregar" runat="server" Text="Agregar" OnClick="Bagregar_Click" />

            &nbsp;

            <asp:Button class="button" ID="Bmodificar" runat="server" Text="Modificar" OnClick="Bmodificar_Click" />

            &nbsp;

            <asp:Button class="button" ID="Bborrar" runat="server" Text="Borrar" OnClick="Bborrar_Click" />
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gimnasio_ProConnectionString %>" DeleteCommand="DELETE FROM [Rutinas] WHERE [codigo_Rutina] = @codigo_Rutina" InsertCommand="INSERT INTO [Rutinas] ([nombre_Rutina]) VALUES (@nombre_Rutina)" ProviderName="<%$ ConnectionStrings:Gimnasio_ProConnectionString.ProviderName %>" SelectCommand="SELECT [codigo_Rutina], [nombre_Rutina] FROM [Rutinas]" UpdateCommand="UPDATE [Rutinas] SET [nombre_Rutina] = @nombre_Rutina WHERE [codigo_Rutina] = @codigo_Rutina">
                <DeleteParameters>
                    <asp:Parameter Name="codigo_Rutina" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre_Rutina" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre_Rutina" Type="String" />
                    <asp:Parameter Name="codigo_Rutina" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            </p>
        </div>
    </div>
</asp:Content>
