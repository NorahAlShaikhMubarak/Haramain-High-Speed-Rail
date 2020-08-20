<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Haramain_High_Speed_Rail.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="css/style1.css" rel="stylesheet" />
</head>
<body style=" background-image: url('../img/img104.jpg'); background-size: cover; background-position: center;">
    <form id="form1" runat="server">
        <br />
                    <div class="cd-form" style=" width: 50%; margin-left:25%; margin-top: 15%; background-color: rgba(0, 0, 0, 0.5);">
                      <%-- Enter Email--%>
                        <p class="fieldset">
                            <label class="image-replace cd-email" for="signin-email">Email: </label>
                            <asp:TextBox ID="txtLEmail" runat="server" ClientIDMode="Static" CssClass="full-width has-padding has-border" TextMode="Email" placeholder="Email"></asp:TextBox>
                            <span class="cd-error-message">خطأ!</span>
                        </p>
                       <%-- Enter Password--%>
                        <p class="fieldset">
                            <label class="image-replace cd-password" for="signin-password">Password: </label>
                            <asp:TextBox ID="txtLPassword" runat="server" ClientIDMode="Static" CssClass="full-width has-padding has-border" TextMode="password" placeholder="Password"></asp:TextBox>
                            <span class="cd-error-message">Error!</span>
                        </p>
                        <br />
                        <p class="fieldset">
                            <asp:CheckBox runat="server" ClientIDMode="Static" ID="cbRememberMe" checked="true"/>
                            <label for="remember-me" style="color: white">Remember me</label>
                        </p>
                        <%--Login button--%>
                        <p class="fieldset">
                            <asp:Button ID="lbLogin" runat="server" ClientIDMode="Static" Text="Login" CssClass="btn btn-success btn-lg btn-block" Style="margin-left: 320px; background-color: rgba(0, 0, 0, 0.5);"  ForeColor="white" Height="20px" Font-Size="15px" Width="57px" Font-Bold="True" BorderColor="White" BorderStyle="Solid" OnClick="lbLogin_Click"/>
                        </p>
                        <%--Create a new account button--%>
                         <p class="fieldset">
                            <asp:LinkButton runat="server" ClientIDMode="Static" ID="LinkButton2"  Text="Create a new account" CssClass="btn btn-success btn-lg btn-block" Style="margin-left: 250px; background-color: rgba(0, 0, 0, 0.5);" ForeColor="white" Height="30px" Font-Size="20px" Width="200px" Font-Bold="True" PostBackUrl="~/Register.aspx" BorderColor="White" BorderStyle="Solid"></asp:LinkButton>
                        </p>
                    </div>  
    </form>
</body>
</html>
