<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.ascx.cs" Inherits="GrameenaVidya.Controls.MyProfile" %>
<div class="row">
    <div class="col-lg-6 col-lg-offset-3">
        <h2>My Profile</h2>
        <hr class="devider" />
        <asp:UpdatePanel ID="upPersonalDetails" runat="server">
            <ContentTemplate>

            <div class="myprofile">

                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Name</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtFirstName" runat="server" placeholder="Name" ValidationGroup="PersonalDetails"
                            CssClass="form-control"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Contact Person</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtContactPerson" runat="server" placeholder="Contact Person Name"
                            CssClass="form-control" MaxLength="25" ValidationGroup="PersonalDetails"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Mobile Number</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtMobileNumber" runat="server" placeholder="Mobile Number" ValidationGroup="PersonalDetails"
                            CssClass="form-control" MaxLength="12"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Email Address
                        </label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtEmailAddress" runat="server" placeholder="Email Address" ValidationGroup="PersonalDetails"
                            CssClass="form-control" Enabled="false"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Address</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtAddress" runat="server" placeholder="Address" ValidationGroup="PersonalDetails"
                            CssClass="form-control"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Country</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true" DataTextField="CountryName"
                            DataValueField="CountryID" ValidationGroup="PersonalDetails" CssClass="form-control"
                            OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            State</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:DropDownList ID="ddlStates" runat="server" CssClass="form-control" ValidationGroup="PersonalDetails">
                        </asp:DropDownList>
                        <%--<asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>--%>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Location</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtCity" runat="server" placeholder="City/Town/Village" ValidationGroup="PersonalDetails"
                            CssClass="form-control"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        <label class="control-label">
                            Pin Code</label>
                    </div>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtZipCode" placeholder="Pin Code" runat="server" MaxLength="6"
                            CssClass="form-control" ValidationGroup="PersonalDetails"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-4">
                        &nbsp;
                    </div>
                    <div class="col-lg-8">
                        <asp:LinkButton ID="lbtnProfile" runat="server" ValidationGroup="PersonalDetails"
                            CssClass="btn btn-primary btn-lg" Width="100%" OnClick="btnProfile_Click">
                            Save Details
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="upPersonalDetails"
                                style="float: right; position: absolute; right: 20px; top: 8px;">
                                <ProgressTemplate>
                                    <i class="fa fa-spinner fa-spin"></i>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </asp:LinkButton>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-4">
                        &nbsp;
                    </div>
                    <div class="col-lg-8">
                        <div id="DivError" runat="server">
                            <asp:CustomValidator ID="cusvProfileInfo" runat="server" ErrorMessage=""></asp:CustomValidator></div>
                    </div>
                </div>

                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
