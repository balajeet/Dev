<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EnqueryForm.ascx.cs" Inherits="GrameenaVidya.Controls.EnqueryForm" %>
        <style>
            .alert-success, .alert-warning
            {
                display:block;
            }
        </style>
        <div class="col-md-6"> <!-- sidebar blk start -->
          <div class=" sidebar-blk temp-form">
            <h1>Stay in Touch</h1>
            
              
              <asp:UpdatePanel ID="upPanel" runat="server">
                <ContentTemplate>
                    <div class="form-group">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" ForeColor="Red" runat="server" ControlToValidate="txtFirstName"
                            ErrorMessage="Please Enter First Name" Display="Dynamic" ValidationGroup="gv"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" ForeColor="Red" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Please Enter Email Address" Display="Dynamic" ValidationGroup="gv"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMobile" ForeColor="Red" runat="server" ControlToValidate="txtMobile"
                            ErrorMessage="Please Enter Mobile Number" Display="Dynamic" ValidationGroup="gv"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="email">
                            Contact Us Regarding</label>
                        <asp:DropDownList ID="ddlEnquiry" runat="server" CssClass="form-control option">
                            <asp:ListItem>General Enquiry</asp:ListItem>
                            <asp:ListItem>Donation</asp:ListItem>
                            <asp:ListItem>Event</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="email">
                            Type Message</label>
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" Rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvfMessage" ForeColor="Red" runat="server" ControlToValidate="txtMessage"
                            ErrorMessage="Please Enter Your Message" Display="Dynamic" ValidationGroup="gv"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-default btn-yellow" UseSubmitBehavior="true"
                        Text="Submit" ValidationGroup="gv" onclick="btnSubmit_Click" />

                        <asp:UpdateProgress ID="upProgress" runat="server">
                            <ProgressTemplate>
                                Please Wait form is submitting ...
                            </ProgressTemplate>
                        </asp:UpdateProgress>

                    <br />

                    <asp:Label ID="lblStatus" runat="server" CssClass="alert alert-success" Visible="false"></asp:Label>
                </ContentTemplate>
              </asp:UpdatePanel>
            
          
            
          </div>
        </div>
