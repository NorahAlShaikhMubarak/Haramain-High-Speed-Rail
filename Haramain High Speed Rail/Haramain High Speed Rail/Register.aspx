<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Haramain_High_Speed_Rail.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
    <link href="css/style1.css" rel="stylesheet" />
</head>
<body style=" background-image: url('../img/img104.jpg'); background-size: cover; background-position: center;">
    <form id="form1" runat="server">
                   
                  <%-- Enter Username with validation--%>
                    <div class="cd-form" style=" width: 50%; margin-left:25%; margin-top: 15%; background-color: rgba(0, 0, 0, 0.5);">
                        <p class="fieldset">
                            <label class="image-replace cd-username" for="signup-username">Username: </label>
                            <asp:TextBox runat="server"  CssClass="full-width has-padding has-border" ID="txtRUsername" placeholder="Username"></asp:TextBox>
                            <span class="cd-error-message">Error!</span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="txtRUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>

                         <%-- Enter Email with validation--%>
                        <p class="fieldset">
                            <label class="image-replace cd-email" for="signup-email">Email: </label>
                            <asp:TextBox runat="server"  CssClass="full-width has-padding has-border" ID="txtREmail" placeholder="Email"></asp:TextBox>
                            <span class="cd-error-message">Error!</span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="txtREmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="txtREmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        </p>

                         <%-- Enter Password with validation--%>
                        <p class="fieldset">
                            <label class="image-replace cd-password" for="signup-password">Password: </label>
                            <asp:TextBox ID="txtRPassword" runat="server"  CssClass="full-width has-padding has-border" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <span class="cd-error-message">Error!</span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is required" ControlToValidate="txtRPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>

                        <p class="fieldset">
                            <asp:CheckBox runat="server" ClientIDMode="Static" ID="cbAgree" />
                            <label for="accept-terms" style="color: white;">Agree on the <a href="#0">terms and conditions</a></label>
                        </p>
                        <br />

                         <%-- Create a new account button--%>
                        <p class="fieldset">
                            <asp:Button ID="lbInsertUsers" runat="server" Text="  Create a new account" CssClass="btn btn-success btn-lg btn-block" Style="margin-left: 250px;  background-color: rgba(0, 0, 0, 0.5);" ForeColor="white" Height="20px" Font-Size="15px" Width="200px" Font-Bold="True" BorderColor="White" BorderStyle="Solid" OnClick="lbInsertUsers_Click"/>
                       </p>
                    </div>
                
    </form>
    <script src="js/script1.js"></script>
</body>
</html>
