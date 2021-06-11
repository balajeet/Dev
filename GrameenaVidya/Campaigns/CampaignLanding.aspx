<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true"
    CodeBehind="CampaignLanding.aspx.cs" Inherits="GrameenaVidya.Campaigns.CampaignLanding" %>

<%@ Register src="../Controls/Getinvolved.ascx" tagname="Getinvolved" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //$("#HeaderInside1_aForums").addClass("active");
            $("#lbInvolve").addClass("activelink");
            //$("#divAbout").hide();
        });
    </script>
    <style>
      .sidebar-donate {
    background:#F8F8F8;
    border:1px solid #e5e5e5;
    border-radius: 4px;
    margin-bottom: 20px;
    padding: 20px 30px;
     font-size:14px;
    
}

   .sidebar-donate-blk {
    background:#e5e5e5;
    border:1px solid #d5d5d5;
    border-radius: 4px;
    margin-bottom: 20px;
    padding: 20px 30px;
     font-size:14px;
    
}

.campaign-landing
{
    min-height:500px;
    
    
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<%--<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>--%>

    <div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container campaign-landing">
                <div class="row">
                    <div class="col-md-9">
                        <!-- progaram detail start -->
                        <h1 class="page-heading">
                          Campaign
                        </h1>
                        <p>
                            Grameena Vidya’s (Rural school Education) Adopt-a-School and Adopt-a-Village programs
                            provide 21st century technology enabled digital smart classrooms and learning solution
                            for rural India. Students and teachers can access learning and teaching resources
                            anytime and anywhere. It provides curriculum specific quality multimedia learning
                            objects, content presented in multiple formats, vocational and learning skills,
                            variety of assessments, software applications, that can complement and supplement
                            school education and career skills of rural and inner-city children.
                             Grameena Vidya
                            is an initiative of “<a href="about-ctrd.aspx" style="text-decoration: underline;">Center
                                for Training, Research and Development,</a>” (CTRD) a non-profit, non-government
                            organization (NGO).</p>
                            <p>  It provides curriculum specific quality multimedia learning
                            objects, content presented in multiple formats, vocational and learning skills,
                            variety of assessments, software applications, that can complement and supplement
                            school education and career skills of rural and inner-city children. Grameena Vidya
                            is an initiative of “<a href="about-ctrd.aspx" style="text-decoration: underline;">Center
                                for Training, Research and Development,</a>” (CTRD) a non-profit, non-government
                            organization (NGO)</p>
               
                        <div class="row">
                            <div class="col-md-4 col-md-offset-2">
                            <a href="CampaignDonate.aspx" class="btn btn-lg btn-yellow btn-block">Start a Campaign</a>
                            
                            </div>
                             <div class="col-md-4">
                            <a href="OngoingCampaigns.aspx" class="btn btn-lg btn-yellow btn-block">Join a Campaign</a>
                            
                            </div>
                        </div>
                    </div>
                    <!-- progaram detail close -->
                  
    <uc1:Getinvolved ID="Getinvolved1" runat="server" />
                    <!-- sidebar section dending -->
                </div>
            </div>
        </div>
    </div>

 



  <script src="../js/jquery-1.9.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <script src="../js/script.js"></script>
    <script src="../js/owl.carousel.js"></script>
 

</asp:Content>
