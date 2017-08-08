<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContinueMessage.aspx.cs" Inherits="PresentationLayer.ContinueMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12 col-center-block">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <h6>This is the end of this lesson. Do you want to continue?</h6>
        </div>
    <div class="col-lg-6">
        <asp:Button CssClass="btn btn-default col-center-block" ID="btnNext" runat="server" Text="Next Lesson" OnClick="btnNext_Click" />
        </div><div class="col-lg-6">
        <asp:Button CssClass="btn btn-default col-center-block" ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
            </div>
    </div>
</asp:Content>
