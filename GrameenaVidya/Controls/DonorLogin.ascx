<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DonorLogin.ascx.cs" Inherits="GrameenaVidya.Controls.DonorLogin" %>

	 <asp:UpdatePanel ID="upLoginmodal" runat="server" UpdateMode="Conditional">
     <ContentTemplate>    




    <form role="form">
    <div class="form-group">
        <label>Enter Email:</label>
        <asp:TextBox ID="txtUserName" runat="server" type="email" class="form-control" 
            AutoComplete="off" ValidationGroup="LogIn"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rvUserName" runat="server" ControlToValidate="txtUserName"
            Display="Dynamic" CssClass="error-message" ErrorMessage="Please Enter User Name &lt;br /&gt;&lt;br /&gt;Ex: rahul,  rahul.khanna, rahul_khanna, rahul123"
            ValidationGroup="LogIn">
        </asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control"
             ValidationGroup="LogIn"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rvPassword" runat="server" ControlToValidate="txtPassword"
            Display="Dynamic" CssClass="error-message" ErrorMessage="Password Missing.Please Enter Password"
            ValidationGroup="LogIn">
        </asp:RequiredFieldValidator>
        <div class="row">
            <asp:Label ID="lblStatus" runat="server" Text="" ForeColor="Red" CssClass="error-message-login" Visible="false"></asp:Label>
        </div>
    </div>
    
    
    <asp:Button ID="btnLogin" runat="server" type="submit" CssClass="btn btn-primary"
        Text="Log In" UseSubmitBehavior="true" ValidationGroup="LogIn" CausesValidation="false"
        OnClick="btnLogin_Click" />
        <asp:UpdateProgress ID="upLogin" runat="server">
    
    <ProgressTemplate>
    <img src="../img/loader.gif" />
    </ProgressTemplate>
    </asp:UpdateProgress>
    </form>
    
</ContentTemplate>
</asp:UpdatePanel>

