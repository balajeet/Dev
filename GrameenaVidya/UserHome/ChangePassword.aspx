<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="GrameenaVidya.UserHome.ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="../../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/custom.css" rel="stylesheet" />
    <script src="../../js/respond.js"></script>
</head>
<body style="background: #e5e5e5;">
    <form id="form1" runat="server">
    <div>
        <div class="box3" id="box3" style="width: 500px; margin: 0 auto;">
            <h3>
                Change Password</h3>
            <div class="row">
                <div class="col-lg-4">
                    <label>
                        Old Password</label>
                </div>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtoldpwd" runat="server" TextMode="Password" AutoComplete="off"
                        placeholder="Old Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvOldPassword" runat="server" CssClass="err-msg"
                        ErrorMessage="Enter Your Old Password &lt;br /&gt;" ValidationGroup="ChangePassword"
                        ControlToValidate="txtoldpwd" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvErrorMsg" runat="server" ErrorMessage="" CssClass="err-msg"
                        Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <label>
                        New Password</label>
                </div>
                <div class="col-lg-8 ">
                    <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password" placeholder="New Password"
                        CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" CssClass="err-msg"
                        ErrorMessage="Enter New Password &lt;br /&gt;" ValidationGroup="ChangePassword"
                        ControlToValidate="txtNewPwd" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <label>
                        Retype Password</label>
                </div>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtConPwd" runat="server" TextMode="Password" placeholder="Retype New Password"
                        CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRetypePassword" runat="server" ValidationGroup="ChangePassword"
                        ErrorMessage="Confirm your new passward." CssClass="err-msg" ControlToValidate="txtConPwd"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvNewPassword" runat="server" ErrorMessage="Password do not match. &lt;br /&gt;"
                        ValidationGroup="ChangePassword" CssClass="err-msg" ControlToCompare="txtNewPwd"
                        ControlToValidate="txtConPwd" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12"><br />
                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary btn-lg" 
                        Text="Change Password" OnClick="btnogIn_Click" />
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12"><br />
                    <asp:CustomValidator ID="CustomInfo" runat="server" ForeColor="Red"></asp:CustomValidator>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
