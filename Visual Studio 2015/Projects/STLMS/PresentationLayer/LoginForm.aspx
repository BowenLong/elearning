<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="PresentationLayer.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
   
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/bootstrap-flex.css"/>
    <link rel="stylesheet" href="css/general.css" />
    <link rel="stylesheet" href="css/Login.css" />
    <title>Login</title>
</head>
<body>
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <form id="form1" runat="server">
     <div class="container">
      <div class="wrapper">
    <div class="form-signin">         
        <br/><asp:TextBox ID="txtUserName" placeholder="User Name" CssClass="form-control" runat="server"></asp:TextBox>
        <br/><asp:TextBox ID="txtPassword" placeholder="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
        <br/> 
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-lg btn-block" OnClick="btnLogin_Click" />
       </div>
</div>
</div>
    </form>
</body>
</html>
