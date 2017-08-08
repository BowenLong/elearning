<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Posttest0102.aspx.cs" Inherits="PresentationLayer.Posttest0102" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lesson 2</h1>
    <h2>Post-test</h2>
  <div class="panel panel-default">
       <div class="panel-heading">1.The DISC questionnaire provides incividuals with:</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
            <asp:RadioButtonList CssClass="checkbox" ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="0"> A. A clear description of their personality</asp:ListItem>
        <asp:ListItem Value="1"> B. Their behavioral tendency</asp:ListItem>
        <asp:ListItem Value="0"> C. Their attitudinal tendency</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select an answer." ControlToValidate="RadioButtonList4"></asp:RequiredFieldValidator>
        </div>
         </div>
      <div class="panel panel-default">
        <div class="panel-heading">2.Sample Question:</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
    <asp:RadioButtonList CssClass="checkbox" ID="RadioButtonList2" runat="server">
        <asp:ListItem Value="1"> A. True</asp:ListItem>
        <asp:ListItem Value="0"> B. False</asp:ListItem>
        <asp:ListItem Value="0"> C. False</asp:ListItem>
    </asp:RadioButtonList>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select an answer." ControlToValidate="RadioButtonList2"></asp:RequiredFieldValidator>
           
            </div>
        </div>
    <div class="panel panel-default">
        <div class="panel-heading">3.Sample Question:</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
            <asp:RadioButtonList CssClass="checkbox" ID="RadioButtonList3" runat="server">
                 <asp:ListItem Value="1"> A. True</asp:ListItem>
        <asp:ListItem Value="0"> B. False</asp:ListItem>
        <asp:ListItem Value="0"> C. False</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select an answer." ControlToValidate="RadioButtonList3"></asp:RequiredFieldValidator>
           
            </div>
        </div>
    <div class="panel panel-default">
        <div class="panel-heading">4.Sample Question</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
            <asp:RadioButtonList CssClass="checkbox" ID="RadioButtonList4" runat="server">
                <asp:ListItem Value="1"> A. True</asp:ListItem>
        <asp:ListItem Value="0"> B. False</asp:ListItem>
        <asp:ListItem Value="0"> C. False</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please select an answer." ControlToValidate="RadioButtonList4"></asp:RequiredFieldValidator>
           
            </div>
        </div>
    <div class="panel panel-default">
        <div class="panel-heading">5. Sample Question:</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
            <asp:RadioButtonList  CssClass="checkbox" ID="RadioButtonList5" runat="server">
                <asp:ListItem Value="0"> A. False</asp:ListItem>
        <asp:ListItem Value="1"> B. True</asp:ListItem>
        <asp:ListItem Value="0"> C. False</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please select an answer." ControlToValidate="RadioButtonList5"></asp:RequiredFieldValidator>
           
            </div>
        </div>
    <div class=" panel panel-body">
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-1">
                  <asp:Button CssClass="btn btn-default" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
            </div>
        <div class="col-lg-2"></div>
            <div class="col-lg-1">
                
                   <asp:Button CssClass="btn btn-default" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </div>
        <div class="col-lg-4"></div>
       
    </div>
        </div>
</asp:Content>
