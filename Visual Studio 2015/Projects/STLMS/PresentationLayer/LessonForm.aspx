<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LessonForm.aspx.cs" Inherits="PresentationLayer.LessonForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView CssClass="table table-hover table-bordered" ID="gvLesson" runat="server" AutoGenerateColumns="False" OnRowCommand="gvLesson_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Lesson No." InsertVisible="false">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
        </Columns>
        <Columns>
                 <asp:BoundField DataField="lesson_name" HeaderText="Lessons"></asp:BoundField>
        </Columns>
        <Columns>
                <asp:ButtonField ControlStyle-CssClass="btn btn-default" CommandName="ButtonField" Text="View" ButtonType="Button"/>
        </Columns>

        </asp:GridView>

</asp:Content>
