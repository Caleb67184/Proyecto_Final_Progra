<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="TestLogin.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro</title>
    <link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>



            Nombre<asp:TextBox class="input" ID="Tnombre" runat="server"></asp:TextBox>
&nbsp;
            <br />
            <br />
            Email<asp:TextBox class="input" ID="Temail" runat="server"></asp:TextBox>
            <br />
            <br />
            Contraseña
            <asp:TextBox class="input" ID="Tcontrasena" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Label ID="Lmensaje2" runat="server" ForeColor="Red"></asp:Label>



            <asp:Button class="button" ID="Bregistrar" runat="server" OnClick="Bregistrar_Click" Text="Registrarse" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button class="button" ID="Batras" runat="server" OnClick="Button1_Click" Text="Atrás" Height="53px" Width="136px" />
            <br />



&nbsp;&nbsp;&nbsp;
            


        </div>
    </form>
</body>
</html>
