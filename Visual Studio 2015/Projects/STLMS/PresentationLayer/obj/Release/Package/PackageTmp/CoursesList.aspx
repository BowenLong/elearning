<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CoursesList.aspx.cs" Inherits="PresentationLayer.CoursesList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="container table-responsive">
        
        <asp:GridView CssClass="table table-hover table-bordered topp" ID="gvCourseList" runat="server" AutoGenerateColumns="False" OnRowCommand="gvCourseList_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Course No." InsertVisible="false">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                 <asp:BoundField DataField="course_name" HeaderText="Courses"></asp:BoundField>
            </Columns>
            <Columns>
                <asp:ButtonField ControlStyle-CssClass="btn btn-default" CommandName="ButtonField" Text="View" ButtonType="Button" />
            </Columns>
        </asp:GridView>
       
    </div>
 
</asp:Content>
