<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LMS.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row was-validated">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div style="max-width: 100%;">
                <h2 class="form-signin-heading">Login</h2>
                <div class="form-group">
                    <label for="txtUsername">
                        Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username"
                         />
                </div>

                <div class="form-group">
                    <label for="txtPassword">
                        Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"
                        placeholder="Enter Password" required="true" />
                    <div ID="PasswordValid" runat="server" class="valid-feedback">Valid.</div>
                    <div ID="PasswordInvalid" runat="server" class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class="form-group form-check">
                    <div class="checkbox">
                        <asp:CheckBox ID="chkRememberMe" Text="Remember Me" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="Authenticate" Class="btn btn-primary" />
                </div>
                <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
                    <strong>Error!</strong>
                    <asp:Label ID="lblMessage" runat="server" />
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>

</asp:Content>
