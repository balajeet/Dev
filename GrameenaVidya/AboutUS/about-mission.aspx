<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="about-mission.aspx.cs" Inherits="AboutUS_about_mission" %>

<%@ Register src="../Controls/Aside_right.ascx" tagname="Aside_right" tagprefix="uc1" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


  <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbAbout").addClass("activelink");


      });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>


<div class=""><!--  Main-container section -->
  <div class="causes">
    <div class="container">
      <div class="row">
                    <div class="col-md-9">
                        <!-- progaram detail start -->
                        <h1 class="page-heading">
                        Mission</h1>
                       
                        <p>
                            Grameena Vidya’s mission is to provide digital learning resources and smart classrooms
                            to 100 thousand schools and 100 million students by 2017.</p>
                        <div class="row">
                            <div class="col-md-12">
                                <h3>
                                    Vision</h3>
                                <p>                                   
                                    <ul class="adopt-list">
                                        <li>To ensure “No child is left behind.”</li>
                                        <li>To reduce digital divide and in turn social and economic inequalities.</li>
                                        <li>To promote quality education and therefore economic growth of the community, region
                                            and nation.</li>
                                    </ul>
                                </p>
                                <div class="pic">
                                    <img src="../images/our-mission.jpg" class="img-responsive" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- progaram detail close -->
                    <uc1:Aside_right ID="Aside_right1" runat="server" />
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

