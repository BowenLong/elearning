<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Posttest0104.aspx.cs" Inherits="PresentationLayer.Posttest0104" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lesson 4</h1>
    <h2>Post-test</h2>
    <div class="panel panel-default">
        <div class="panel-heading">1.The acronym IK stands for?</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
      <asp:RadioButtonList CssClass="checkbox" ID="RadioButtonList1" runat="server">
          <asp:ListItem Value="0"> A. Ignition Kite</asp:ListItem>
        <asp:ListItem Value="1"> B. Ignition Key</asp:ListItem>
        <asp:ListItem Value="0"> C. Ignition Keyforce</asp:ListItem>
      </asp:RadioButtonList>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select an answer." ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
            </div>
        </div>
    <div class="panel panel-default">
        <div class="panel-heading">2.The 'US' tools refer to interactions that:</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
    <asp:RadioButtonList CssClass="checkbox" ID="RadioButtonList2" runat="server">
        <asp:ListItem Value="1"> A. Happened in the past</asp:ListItem>
        <asp:ListItem Value="0"> B. Are currently happening</asp:ListItem>
        <asp:ListItem Value="0"> C. Are going to happen in the future</asp:ListItem>
    </asp:RadioButtonList>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select an answer." ControlToValidate="RadioButtonList2"></asp:RequiredFieldValidator>
           
            </div>
        </div>
    <div class="panel panel-default">
        <div class="panel-heading">3.Validation tools are used to:</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
            <asp:RadioButtonList CssClass="checkbox" ID="RadioButtonList3" runat="server">
                 <asp:ListItem Value="1"> A. Check the progress of our interaction</asp:ListItem>
        <asp:ListItem Value="0"> B. Check the quality of relationship</asp:ListItem>
        <asp:ListItem Value="0"> C. Check that both parties have committed on an action plan</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select an answer." ControlToValidate="RadioButtonList3"></asp:RequiredFieldValidator>
           
            </div>
        </div>
    <div class="panel panel-default">
        <div class="panel-heading">4.The factual review matrix is a tool which helps individuals to:</div>
    </div>
    <div class="panel panel-body">
        <div class="checkbox-panel">
            <asp:RadioButtonList CssClass="checkbox" ID="RadioButtonList4" runat="server">
                <asp:ListItem Value="1"> A. Prepare for an interaction taking into account all the facts</asp:ListItem>
        <asp:ListItem Value="0"> B. Prepare for an interaction taking into account the rational and emotional state of the person</asp:ListItem>
        <asp:ListItem Value="0"> C. Prepare for an interaction taking into account the rational and problems of the individual</asp:ListItem>
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
