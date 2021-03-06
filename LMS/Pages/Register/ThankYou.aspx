﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="LMS.RegisterThankYou" %>
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
        <h3>Complete</h3>
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
                    <div class="progress-line DarkBlue">
                    </div>
                </div>
                <div class="col-sm-1 mx-0 px-0">
                    <div class="progress-box DarkBlue">
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
                <h4 class="mb-4">Thank you for registering!
                </h4>
                <h5 class="DarkGrey mb-4">
                    You will receive a confirmation email Anytime from now, containing additional details.
                </h5>
            </div>
        </div>

    </div>
</asp:Content>
