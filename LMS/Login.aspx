<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LMS.Login" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContent" runat="server">
        <h3>Login</h3>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="was-validated">
        <div class="form-group">
            <label for="txtUsername">User Name *</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Username ..." />
        </div>

        <div class="form-group">
            <div class="row">
                <div class="col-12">
                    <h6 class="DarkGrey mb-2">Please enter you case sensitive password from your official invitation.</h6>
                </div>
            </div>
            <label for="txtPassword">Password *</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password ..." />
            <div id="PasswordValid" runat="server" class="valid-feedback"></div>
            <div id="PasswordInvalid" runat="server" class="invalid-feedback">X</div>
        </div>
        <div class="form-group form-check">
            <div class="checkbox">
                <asp:CheckBox ID="chkRememberMe" Text="Remember Me" runat="server" />
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <div class="float-right">
                        <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="Authenticate" Class="btn btn-info btn-lg DarkBlue" />
                    </div>
                </div>
            </div>
        </div>


        <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
            <strong>Error!</strong>
            <asp:Label ID="lblMessage" runat="server" />
        </div>
    </div>
</asp:Content>
