<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GrameenaVidya.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="row">
  <div class="form-group">
                <asp:TextBox ID="txtUserName" runat="server" type="email" class="form-control" placeholder="Enter Email Address"
                    AutoComplete="off" ValidationGroup="LogIn"></asp:TextBox>
                <asp:Label ID="lblUNameEmpty" runat="server" Text="Please Enter Email Address" Style="display: none;
                    color: Red;"></asp:Label>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control"
                    placeholder="Enter Password"></asp:TextBox>
                <asp:Label ID="lblUPwdEmpty" runat="server" Text="Please Enter Password" Style="display: none;
                    color: Red;"></asp:Label>
            </div>

            <div>
            <asp:Button ID="btnlogin" runat="server"  Text="Login" CssClass="btn-donate" 
                    onclick="btnlogin_Click"/>
            </div>

</div>
</asp:Content>
