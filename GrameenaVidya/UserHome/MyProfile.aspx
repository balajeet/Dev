<%@ Page Title="" Language="C#" MasterPageFile="~/Master/InsideMaster.master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="GrameenaVidya.UserHome.MyProfile" %>
<%@ Register src="../Controls/MyProfile.ascx" tagname="MyProfile" tagprefix="uc1" %>

<%@ Register src="../Controls/ChangePassword.ascx" tagname="ChangePassword12" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {

            $("#liMyProfile").addClass("active");
        });
    </script>
    <br />



    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#tab-profile" role="tab" data-toggle="tab">Profile</a></li>
                <li><a href="#tab-change-password" role="tab" data-toggle="tab">Change Password</a></li>
                
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="tab-profile">
                    <div>
                        <uc1:MyProfile ID="MyProfile1" runat="server" />
                    </div>
                </div>
                <div class="tab-pane" id="tab-change-password">
                    <div class="row">
                        <div class="col-lg-12">
                       <uc2:ChangePassword12 ID="ChangePassword111" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>






    <script>
        var element = document.getElementById("liMyProfile");
        element.classList.add("active");
    </script>
</asp:Content>
