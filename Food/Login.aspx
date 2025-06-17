<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Food.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login - FoodCorner</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
            padding: 50px;
        }
        .login-box {
            width: 300px;
            margin: auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 10px #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h2>Login</h2>
            <asp:Label Text="Username:" runat="server" /><br />
            <asp:TextBox ID="txtUsername" runat="server" /><br /><br />

            <asp:Label Text="Password:" runat="server" /><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br /><br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br /><br />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>

