<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.ascx.cs" Inherits="GrameenaVidya.Controls.ChangePassword1" %>


<div class="row">
    <div class="col-lg-6 col-lg-offset-3 page-head">
        <h2>
            Change Password</h2>
        <hr class="devider" />
        <asp:UpdatePanel ID="upProfile" runat="server">
            <ContentTemplate>
                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Old Password</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password" AutoComplete="off"
                            CssClass="form-control" ValidationGroup="ChangePassword"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvOldPassword" runat="server" CssClass="err-msg"
                            ErrorMessage="Enter Your Old Password &lt;br /&gt;" ValidationGroup="ChangePassword"
                            ControlToValidate="txtOldPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="cvErrorMsg" runat="server" ErrorMessage="" CssClass="err-msg"
                            Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            New Password</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"
                            CssClass="form-control" ValidationGroup="ChangePassword"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" CssClass="err-msg"
                            ErrorMessage="Enter New Password &lt;br /&gt;" ValidationGroup="ChangePassword"
                            ControlToValidate="txtNewPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Retype Password</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtRetypePassword" runat="server" TextMode="Password"
                            CssClass="form-control" ValidationGroup="ChangePassword"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRetypePassword" runat="server" ValidationGroup="ChangePassword"
                            ErrorMessage="Confirm your new passward." CssClass="err-msg" ControlToValidate="txtRetypePassword"
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvNewPassword" runat="server" ErrorMessage="Password do not match. &lt;br /&gt;"
                            ValidationGroup="ChangePassword" CssClass="err-msg" ControlToCompare="txtNewPassword"
                            ControlToValidate="txtRetypePassword" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-4">
                        &nbsp;
                    </div>
                    <div class="col-lg-8">
                        <asp:LinkButton ID="lbSubmit" runat="server" ValidationGroup="ChangePassword" CssClass="btn btn-primary btn-lg"
                            OnClick="btnSubmit_Click">
                            Change Password
                            <asp:UpdateProgress ID="upProgress" runat="server" style="float: right; position: absolute;
                                right: 20px; top: 8px;">
                                <ProgressTemplate>
                                    <i class="fa fa-spinner fa-spin"></i>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </asp:LinkButton>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-4">
                        <label>
                            &nbsp;</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:CustomValidator ID="CustomInfo" runat="server" ErrorMessage=""></asp:CustomValidator>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>