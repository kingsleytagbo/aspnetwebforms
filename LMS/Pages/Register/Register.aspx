<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LMS.Register" %>

<asp:Content ID="MetaTags" ContentPlaceHolderID="MetaContent" runat="server">
    <style>
        .progress-box {
            height: 3rem;
            width: 100%;
            color: white;
            border-radius: 0px;
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid #000; 
        }
        .progress-line {
            position: absolute;
            top: 25%;
            left: 0%;
            height: 0.3rem;
            width: 100%;
            border-radius: 0px;
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid #DEDEDE;
        }
    </style>
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContent" runat="server">
    <h3>Contact Information</h3>
</asp:Content>

<asp:Content ID="Progress1" ContentPlaceHolderID="ProgressContent" runat="server">
       <div class="row mb-3 rounded-lg p-2" style="position:relative;">

                <div class="col-sm-1 mx-0 px-0">
                    <div class="progress-box DarkBlue">
                        1
                    </div>
                    <h6 class="LightBlueColor mt-1 pt-1 mx-auto" style="
                            font-size: 1rem;
                            text-transform: uppercase;">Register</h6>
                </div>
                <div class="col-sm-4 mx-0 px-0">
                    <div class="progress-line DarkBlue">
                    </div>
                </div>
                <div class="col-sm-1 mx-0 px-0">
                    <div class="progress-box DarkBlue">
                        2
                    </div>
                    <h6 class="LightBlueColor mt-1 pt-1 mx-auto" style="text-transform:uppercase;">Submit Info</h6>
                </div>
                <div class="col-sm-5 mx-0 px-0">
                    <div class="progress-line" style="background-color: #FFF;">
                    </div>
                </div>
                <div class="col-sm-1 mx-0 px-0">
                    <div class="progress-box" style="background-color: #FFF; color: #000; border-color:#FFF;">
                        3
                    </div>
                    <h6 class="LightBlueColor mt-1 pt-1 mx-auto" style="text-transform:uppercase;">Complete</h6>
                </div>

    </div>
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
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"  ClientIDMode="Static" />
        </div>

        <div class="form-group">
            <label for="txtLastName">Last Name: *</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" ClientIDMode="Static" />
        </div>

        <div class="form-group">
            <label for="dropDownListState">State: *</label>
            <asp:DropDownList ID="dropDownListState" runat="server" CssClass="form-control" ClientIDMode="Static" >
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
                    All correspondence will be sent via email.
                </h6>
            </div>
        </div>

        <div class="form-group">
            <label for="txtEmail">Email: *</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ClientIDMode="Static" />
        </div>

        <div class="form-group">
            <label for="txtConfirmEmail">Confirm Email: *</label>
            <asp:TextBox ID="txtConfirmEmail" runat="server" CssClass="form-control" ClientIDMode="Static" />
        </div>

        <div class="form-group">
            <div class="checkbox">
                <asp:CheckBox ID="chkSubscribeMe" Checked="true" Text="  Subscribe to Newsletter" runat="server" />
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <div class="float-right">
                        <asp:Button ID="btnContinue" Text="Continue" runat="server" Class="btn btn-info btn-lg DarkBlue"
                            ClientIDMode="Static" OnClientClick="return btn_disable;" OnClick="RegisterUser" />
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

<asp:Content ID="Script" ContentPlaceHolderID="ScriptContent" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <script type="text/javascript">
        const LMSApp = (function () {
            'use strict';

            return {

                getElementRef: function (input) {
                    return $('#' + input);
                },

                validateInputs: function () {
                    let isValid = true;
                    const inputs = ['txtFirstName', 'txtLastName', 'txtEmail', 'txtConfirmEmail', 'dropDownListState'];

                    for (let i = 0; i < inputs.length; i++) {
                        let validInput = this.validateInput(inputs[i]);
                        if (!validInput) {
                            isValid = false;
                        }
                    }

                    if (!isValid) {
                        $("#btnContinue").prop('disabled', true);
                    }
                    else {
                        $("#btnContinue").prop('disabled', false);
                    }

                },

                validateInput: function (input) {

                    let isValid = false;
                    let validationMessage = '';
                    const messages = {
                        txtFirstName: 'Please enter a valid First Name',
                        txtLastName: 'Please enter a valid Last Name',
                        dropDownListState: 'Please choose a State',
                        txtEmail: 'Please enter a valid email',
                        txtConfirmEmail: 'Please confirm your email'
                    }

                    if (input) {
                        validationMessage = messages[input];
                    }

                    const $label = $("label[for='" + input + "']");
                    const $this = LMSApp.getElementRef(input);
                    const element = $this[0];

                    if ($this.val().length === 0) {
                        element.setCustomValidity(validationMessage);
                        if (!$this.hasClass("is-invalid")) {
                            $this.addClass("is-invalid");
                        }
                        if (!$this.hasClass("text-danger")) {
                            $label.addClass("text-danger");
                        }
                    }
                    else if
                        (
                            ((input === 'txtEmail') || (input === 'txtConfirmEmail')) &&
                            (LMSApp.getElementRef('txtEmail').val() != LMSApp.getElementRef('txtConfirmEmail').val())
                        ) {
                            isValid = false;
                          }
                    else {
                        element.setCustomValidity('');
                        $this.removeClass("is-invalid");
                        $label.removeClass("text-danger");
                        isValid = true;
                    }

                    return isValid;

                }

            }

        }());

        $(document).ready(function () {

            LMSApp.validateInputs();

            $('#txtFirstName, #txtLastName, #txtEmail, #txtConfirmEmail').keyup(function () {
                const inputId = $(this).attr("id");
                LMSApp.validateInputs();
            });

            $('#dropDownListState').change(function () {
                const inputId = $(this).attr("id");
                LMSApp.validateInputs();
            });

        });

        function btn_disable(event) {
            $("#btnContinue").prop('disabled', true);
            return true;
        }


    </script>

</asp:Content>
