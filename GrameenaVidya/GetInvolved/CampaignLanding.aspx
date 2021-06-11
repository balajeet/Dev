<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true"
    CodeBehind="CampaignLanding.aspx.cs" Inherits="GrameenaVidya.Campaigns.CampaignLanding" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //$("#HeaderInside1_aForums").addClass("active");
            $("#lbInvolve").addClass("activelink");
            //$("#divAbout").hide();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>

    <%--<div class="container">
        <!-- container start -->
        <div class="row">
            <div class="col-md-12 ">
                <h2>
                    Fundraise with us</h2>
                <p>
                    “Intrinsic nature of every individual is to want to help” however given once budget
                    to be constrains one can only stretch so much and still be a part of this unique
                    program of education rural India from the grass root level by contributing to once
                    individual capacity and whatever way possible by getting involved in existing Campaign
                    or by starting own Campaign/p>
                    <h2>
                        To start a campaign</h2>
                    <p>
                        Allows an individual to intiate a fund raising campaign from among your friend releatives
                        and pear groups to adopt your school in your neighbourhood or your childhood school
                        or a school that you belive desires your support.</p>
                    <a href="../Donate/DonateDetails.aspx" class="btn btn-yellow">Start a Campaign</a>
                    <a href="OngoingCampaigns.aspx" class="btn btn-yellow">Join a Campaign</a>
            </div>
        </div>
    </div>--%>
    <div class="container">
        <br />
        <br />
        <div class="row">
            <div class="col-lg-6 campaign-strips">
                <center>
                    <h2>
                        Start a Campaign</h2>
                </center>
                <h3>
                    Step 1</h3>
                <p>
                    <ul class="adopt-list">
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Select or Support a School To Start a Campaign</li>
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Pick from the Donate page - Existing schools list (click on "Select a school") or
                            Suggest a school (click on "Support my School") </li>
                    </ul>
                </p>
                <br />
                <h3>
                    Step 2</h3>
                <p>
                    <ul class="adopt-list">
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Enter the amount to start the campaign (Minimum amount to start a campaign cannot
                            be lower than Rs 50000/-) </li>
                    </ul>
                </p>
                <br />
                <h3>
                    Step 3</h3>
                <p>
                    <ul class="adopt-list">
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Fill your personal Data </li>
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Submit School Details - with images. </li>
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Write an appeal to inspire others to join your campaign. </li>
                    </ul>
                </p>
                <br />
                <a href="../Donate/DonateDetails.aspx" class="btn btn-yellow">Start a Campaign</a>
            </div>
            <div class="col-lg-6">
                <center>
                    <h2>
                        Join a Campaign</h2>
                </center>
                <h3>
                    Step 1</h3>
                <p>
                    <ul class="adopt-list">
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Click on the Button below - Join a Campaign. </li>
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Choose from the list of ongoing campaigns. </li>
                    </ul>
                    <br />
                </p>
                <br />
                <h3>
                    Step 2</h3>
                <p>
                    <ul class="adopt-list">
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Enter the amount you want to contribute (Minimum amount to "Join a Campaign" cannot
                            be lower than Rs 10000/-). </li>
                    </ul>
                </p>
                <br />
                <h3>
                    Step 3</h3>
                <p>
                    <ul class="adopt-list">
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Fill your personal Data. </li>
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Refer a friend. </li>
                        <li><b style=" font-size:25px; font-weight:bold; color:#000;">&#8227;</b> Write an appeal to inspire others to join your campaign. </li>
                    </ul>
                </p>
                <br />
                <a href="OngoingCampaigns.aspx" class="btn btn-yellow">Join  a  Existing   Campaign</a>
            </div>
        </div>
        <br />
        <br />
    </div>
    <script src="../js/jquery-1.9.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <script src="../js/script.js"></script>
    <script src="../js/owl.carousel.js"></script>
</asp:Content>
