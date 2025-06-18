<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Our_School.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Login</title>
    <style>
        body {
            background-image: url('../Image/loginBg.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .login-container {
            width: 300px;
            padding: 40px;
            background-color: rgb(0 0 0 / 0.35);
            border-radius: 8px;
            margin: 100px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .login-container h1 {
            text-align: center;
            margin-bottom: 20px;
            color:azure;
            font-family:'Script MT';
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-size: 14px;
            color:azure;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            font-size: 12px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="loginForm" runat="server">
        <div class="login-container">
            <h1>Login</h1>
            
            <div class="form-group">
                <label for="username">Email</label>
                <asp:TextBox ID="inputEmail" runat="server" CssClass="form-control" placeholder="Enter your email" />
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <asp:TextBox ID="inputPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password" />
            </div>
            
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block text-uppercase mb-2 rounded-pill shadow-sm" BackColor="#5558C9" OnClick="btnLogin_Click" />
          <div class="text-center d-flex justify-content-between mt-4">  
              </div>
            </div>
            <asp:Label ID="errorMessage" runat="server" CssClass="error" Visible="true"></asp:Label>
        </div>
    </form>
</body>
</html>