<%@ Page Title="Facturación" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Facturacion.aspx.cs" Inherits="TestLogin.Facturación" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Objects.css" rel="stylesheet" />
    <link href="CSS/Grid.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor4">
    <div class="contenedor" style="text-align: center">
        <h1>
            <span style="color: #FFFFFF">Facturación</span>
        </h1>
        <table align="center" style="width: 100%">
            <tr>
                <td style="color: #FFFFFF; text-align: center; height: 27px;">Codigo</td>
                <td style="color: #FFFFFF; text-align: center; height: 27px;">Producto</td>
                <td style="color: #FFFFFF; text-align: center; height: 27px;">Cantidad</td>
                <td style="color: #FFFFFF; text-align: center; height: 27px;">Precio</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox class="input3" ID="Tcodigo" placeholder="Escriba el codigo" runat="server" OnTextChanged="Tcodigo_TextChanged"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:TextBox class="input3" ID="Tproducto" placeholder="Escriba el producto" runat="server" OnTextChanged="Tproducto_TextChanged"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:TextBox class="input3" ID="Tcantidad" placeholder="Escriba la cantidad" runat="server"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:TextBox class="input3" ID="Tprecio" placeholder="Escriba el precio" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; color: #FFFFFF;">
                    Codigo Cliente</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox class="input3" placeholder="Escriba el codigo" ID="Tcodigocliente" runat="server"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td>&nbsp;</td>

                <td>&nbsp;</td>
            </tr>
        </table>
        
        
    </div>
</div>
    <div class="contenedor4">
    <div class="contenedor" style="text-align: center">
        <br />
        <table style="width: 100%">
            <tr>
                <td style="color: #FFFFFF; text-align: center">Subtotal</td>
                <td style="color: #FFFFFF; text-align: center">IVA</td>
                <td style="color: #FFFFFF; text-align: center">Total</td>
            </tr>
            <tr>
                <td style="text-align: center; width: 344px;">
                    <asp:Label ID="LSB" runat="server" style="color: #FFFFFF" Text="0"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="LIVA" runat="server" style="color: #FFFFFF" Text="0"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="LTOTAL" runat="server" style="color: #FFFFFF" Text="0"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Label ID="Lmensaje" runat="server" style="color: #FF0000"></asp:Label>
        <br />
        <asp:Button class="button2" ID="Bingresar" runat="server" Text="Ingresar" OnClick="Bingresar_Click" style="margin-bottom:100px"/>

        <asp:Button class="button" ID="Bfacturar" runat="server" Text="Facturar" OnClick="Bfacturar_Click" />

    </div>

    <div style="text-align: center">

    <asp:GridView CssClass="grid2" ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" />
                </Columns>
         <RowStyle CssClass="RowStyle" />
    <EmptyDataRowStyle CssClass="EmptyRowStyle" />
    <PagerStyle CssClass="PagerStyle" />
    <SelectedRowStyle CssClass="SelectedRowStyle" />
    <HeaderStyle CssClass="HeaderStyle" />
    <EditRowStyle CssClass="EditRowStyle" />
    <AlternatingRowStyle CssClass="AltRowStyle" />
            </asp:GridView>
    </div>
</div>
</asp:Content>
