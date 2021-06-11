<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Forgetpassword.aspx.cs" Inherits="GrameenaVidya.outlinks.Forgetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.inner-panel {
    background: white none repeat scroll 0 0;
    border-color: #e6e6e6;
    border-radius: 3px;
    border-style: solid;
    border-width: 1px;
    margin-bottom: 0.9375rem;
    min-height: 600px;
    padding: 1.25rem;
}

.forgot-password {
    background: #f2f2f2 none repeat scroll 0 0;
    border-color: #d9d9d9 #d9d9d9 #ddd;
    border-style: solid;
    border-width: 1px 1px 5px;
    margin-bottom: 0.9375rem;
    padding: 0;
    padding-bottom:25px;
}

.forgot-password h5 {
    background: #2795c9 none repeat scroll 0 0;
    font-size:20px;
    color: #fff;
    padding: 15px;
}


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  <asp:UpdatePanel ID="upRegister" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
           <div class="row">
            <div class="col-md-5">
                
            </div>
           </div>





            <div class="row">
                <div class="col-md-12">
                    <div class="inner-panel">
                        <div class="row">
                            <div class="col-md-4 col-md-push-4">
                            <br />
                            <br />
                            <div class="forgot-password">
                                <h5>
                                    <i class="fi-lock"></i>&nbsp;&nbsp;Forgot Password</h5>
                                <div class="row">
                                    <div class="col-md-9  col-md-push-1" runat="server" id="divMain">
                                        <label>
                                            Email Address:</label> <br />
                                        <asp:TextBox ID="txtUserName"  runat="server" CssClass="form-control" placeholder="Enter Email address"
                                            ValidationGroup="ForgetPassword" autofocus></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="Please provide your login Username <br />"
                                          ForeColor="Red" ValidationGroup="ForgetPassword" Display="Dynamic" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                                        <asp:CustomValidator ID="cvforgetpassword" runat="server" ErrorMessage="" 
                                            Display="Dynamic"></asp:CustomValidator>
                                        <br />
                                        
                                        <asp:LinkButton ID="lbSubmit" runat="server" ValidationGroup="ForgetPassword" CssClass="btn btn-success right"
                                            Width="200" onclick="lbSubmit_Click">
                                            Get Password
                                            <asp:UpdateProgress ID="upProgress" runat="server" AssociatedUpdatePanelID="upRegister">

                                                <ProgressTemplate>
                                                    <i class="fa fa-spinner fa-spin"></i>
                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                        </asp:LinkButton>
                                       
                                    </div>

                                    
                                    <div class="col-md-12  text-center" runat="server" id="divMessage" visible="false">
                                        <span style="font-size:18px; line-height:25px; padding:10px;  margin-bottom:10px;" >
                                            <h1><i class="fa fa-check-circle"></i></h1>
                                            Your Login credentials has been sent to your email. Please check your email
                                        
                                        </span>
                                      
                                        
                                    </div>

                                </div>
                            </div>
                           </div> 
                        </div>
                    </div>
                    </div>
                    </div>
        </ContentTemplate>
    </asp:UpdatePanel>



</asp:Content>
