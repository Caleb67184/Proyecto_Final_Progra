<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TestLogin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        
        .centrado{
            margin-right: auto;
            margin-left: auto;
            width: 161px;
            height: 136px;
            display: block;
        }
        .auto-style1 {
            margin-top: 50px;
            color: #FFFF00;
        }
        .botonRegistro{
            margin-top: 80px;
            width: 50%;
            background-color: #ffffff;
            color: #080710;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
            margin-right: auto;
            margin-left: auto;
            display: block;
        }
        .espacio{
            margin-top: 0px;
        }
    </style>
&nbsp;<title>Gimnasio</title><link href="CSS/style.css" rel="stylesheet" /><link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet"></head><body><div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form runat="server">
        <img src="Images/logo2.png" class="centrado" style="clip: rect(auto, auto, auto, auto)" /><h3 class="espacio" ><span class="auto-style1">Goku&#39;s</span> Gym</h3>

        <label class="espacio" for="username">Email</label>
        <asp:TextBox class="input" ID="username" runat="server"></asp:TextBox>

        <label for="password">Contraseña</label>
        <asp:TextBox class="input" ID="password" runat="server" TextMode="Password"></asp:TextBox>

        <asp:Label ID="Lmensaje" runat="server" ForeColor="Red"></asp:Label>
        <asp:Button class="button" ID="Blogin" runat="server" Text="Ingresar" OnClick="Blogin_Click" />

       
        <asp:Button class="botonRegistro" ID="Breg" runat="server" ForeColor="Black" OnClick="Breg_Click" Text="Registrarse" Font-Bold="True" Font-Names="Arial" />

       
    </form>
    <p>
        &nbsp;</p>
    <p>
</body>
</html>
