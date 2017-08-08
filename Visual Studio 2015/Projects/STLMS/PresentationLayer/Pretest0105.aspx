<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pretest0105.aspx.cs" Inherits="PresentationLayer.Pretest0105" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lesson 5</h1>
    <h2>Pre-test</h2>
    <div class="panel panel-default">
        <div class="panel-heading">1.The interacif discipline can be used for:</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
            <asp:CheckBoxList runat="server" CssClass="checkbox" ID="RadioButtonList1">
                <asp:ListItem Value="1"> A. Outgoing interaction</asp:ListItem>
        <asp:ListItem Value="1"> B. Incoming interaction</asp:ListItem>
        <asp:ListItem Value="1"> C. Written interactions</asp:ListItem>
           </asp:CheckBoxList>
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
