<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="DigitalInclusion.aspx.cs" Inherits="GrameenaVidya.Programs.DigitalInclusion" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>
<%@ Register src="~/Controls/DigitalInclusion_right.ascx" tagname="DigitalInclusion_right" tagprefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbDigitalInclusion").addClass("activelink");
          $("#divAbout").hide();

      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>

 <div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 adopt-left-block">
                        <!-- progaram detail start -->
                        <h1 class="page-heading">
                          Digital Inclusion – Donation in Kind
                          
                        </h1>
                        
                         <p>
                       Donations to Grameena Vidya can be financial or in kind. Thru our “Digital Inclusion Initiative” individuals and corporates can contribute in kind - donations of used digital devices that are in good working conditions - such as laptops, tablets, smartphones, projectors, software, and in kind goods / services - from organizations and individual donors - to needful recipients. 
Over 90% of Indian society does not have equal opportunity for education and employment. They do not have access to basic computer equipment that is necessary for schoolwork, job search, taking on remote working employment opportunities or upgrading their computer literacy skills.
Volunteers / Brand Ambassadors / Student Interns can now organize their own <b>Digital Inclusion Donation Campaign</b>. Unfortunately, Tax exemptions will not apply for Donations in kind. </p>
<br />
<div class="pic">
                            <img src="../images/DigitalInclusion.PNG" style="width:100%" alt="Alternate Text" class="img-responsive" />
                        </div>
</div>

                    <uc4:DigitalInclusion_right ID="DigitalInclusion_right1" runat="server" />
   
</div>
</div>
</div>
</div>

 

</asp:Content>
