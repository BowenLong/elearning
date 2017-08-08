<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CourseInfo.aspx.cs" Inherits="PresentationLayer.CourseInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <table class="table">
        <tr>
            <td>
                <h4>Course Name</h4>
            </td>
            <td>
                <asp:Label ID="lblCourseName" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <h4>Update Date</h4>
            </td>
            <td>
                <asp:Label ID="lblUpdateDate" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
               <h4>Description</h4>
            </td>
            <td>
                <asp:Label ID="lblDescription" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <h4>Duration</h4>
            </td>
            <td>
                <asp:Label ID="lblDuration" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <h4>Author Name</h4>
            </td>
            <td>
                <asp:Label ID="lblUserName" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <h4>Contact Number</h4>
            </td>
            <td>
                <asp:Label ID="lblContactNo" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <h4>E-mail</h4>
            </td>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div class="col-center-block">
                    <asp:Button ID="btnStart" CssClass="btn btn-default" runat="server" Text="Start" OnClick="btnStart_Click"/>
                </div>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
