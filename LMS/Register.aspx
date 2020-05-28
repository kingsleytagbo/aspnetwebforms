<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LMS.Register" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContent" runat="server">
    <h3>Contact Information</h3>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="was-validated">

        <div class="row">
            <div class="col-12">
               <h6 class="DarkGrey mb-2">Please fill in the following required information.</h6>
            </div>
        </div>

        <div class="form-group">
            <label for="txtFirstName">First Name: *</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="" required="true" />
        </div>

        <div class="form-group">
            <label for="txtLastName">Last Name: *</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="" />
        </div>

        <div class="form-group">
            <label for="DropDownListState">State: *</label>
            <asp:DropDownList ID="DropDownListState" runat="server" CssClass="form-control" required="true">
                <asp:ListItem Value="">Select State</asp:ListItem>
                <asp:ListItem Value="AL">Alabama</asp:ListItem>
                <asp:ListItem Value="AK">Alaska</asp:ListItem>
                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                <asp:ListItem Value="CA">California</asp:ListItem>
                <asp:ListItem Value="CO">Colorado</asp:ListItem>
                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                <asp:ListItem Value="DE">Delaware</asp:ListItem>
                <asp:ListItem Value="FL">Florida</asp:ListItem>
                <asp:ListItem Value="GA">Georgia</asp:ListItem>
                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                <asp:ListItem Value="ID">Idaho</asp:ListItem>
                <asp:ListItem Value="IL">Illinois</asp:ListItem>
                <asp:ListItem Value="IN">Indiana</asp:ListItem>
                <asp:ListItem Value="IA">Iowa</asp:ListItem>
                <asp:ListItem Value="KS">Kansas</asp:ListItem>
                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                <asp:ListItem Value="ME">Maine</asp:ListItem>
                <asp:ListItem Value="MD">Maryland</asp:ListItem>
                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                <asp:ListItem Value="MI">Michigan</asp:ListItem>
                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                <asp:ListItem Value="MO">Missouri</asp:ListItem>
                <asp:ListItem Value="MT">Montana</asp:ListItem>
                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                <asp:ListItem Value="NV">Nevada</asp:ListItem>
                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                <asp:ListItem Value="NY">New York</asp:ListItem>
                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                <asp:ListItem Value="OH">Ohio</asp:ListItem>
                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                <asp:ListItem Value="OR">Oregon</asp:ListItem>
                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                <asp:ListItem Value="TX">Texas</asp:ListItem>
                <asp:ListItem Value="UT">Utah</asp:ListItem>
                <asp:ListItem Value="VT">Vermont</asp:ListItem>
                <asp:ListItem Value="VA">Virginia</asp:ListItem>
                <asp:ListItem Value="WA">Washington</asp:ListItem>
                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
            </asp:DropDownList>
        </div>

                <div class="row">
            <div class="col-12">
               <h6 class="DarkGrey mb-2">Please provide your email address.<br />
                   All meeting correspondence will be sent via email.
               </h6>
            </div>
        </div>

        <div class="form-group">
            <label for="txtEmail">Email: *</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="" />
        </div>

        <div class="form-group">
            <label for="txtConfirmEmail">Confirm Email: *</label>
            <asp:TextBox ID="txtConfirmEmail" runat="server" CssClass="form-control" placeholder="" />
        </div>

        <div class="form-group form-check">
            <div class="checkbox">
                <asp:CheckBox ID="chkSubscribe" Checked="true" Text="Subscribe to Newsletter" runat="server" />
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <div class="float-right">
                        <asp:Button ID="btnContinue" Text="Continue" runat="server" OnClick="RegisterUser" Class="btn btn-info" />
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
