<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="about-board.aspx.cs" Inherits="AboutUS_about_board" %>

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

<div class="main-container"><!-- Main-container section -->
<!--  Team start -->
	<div class="container team">
    	<div class="row title">
        	<div class="col-md-offset-2 col-md-8">
                    <h1>Board of Directors</h1>
                    <p class="lead-font">Nullam sapien eros porta non rhoncus acaliquet attortor nteger non libero
    simple dummy vitae ullamcorper.</p>
            </div>
          </div>
            <div class="row blk">
                    <div class="col-md-3 team-profile">
                        <div class="pic">
                            <img src="../images/1. bala.jpg" alt="">
                        </div>
                        <h3><a href="#"> Prof. Bala Veeramacheneni 
                        Professor, State University of New York, USA
</a></h3>
                        <span class="positions">Executive Director</span>
                        <div class="yellow-line"></div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscin elit ntkeger feugianatoque penatibus.</p>
                    </div>
                    <div class="col-md-3 team-profile">
                        <div class="pic">
                            <img src="../images/2. yashodra.JPG" class="img-responsive destaurate" alt="">
                        </div>
                        <h3><a href="#">Ms. Yasodhara Veeramacheneni
Columbia University, New York, USA</a></h3>
                        <span class="positions">Technical Director</span>
                        <div class="yellow-line"></div>
                        <p>Duis pretium est in ipsum euismod mollis am accumsan dui a nunc varius, quis aliquet .</p>
                    </div>
                    <div class="col-md-3 team-profile">
                        <div class="pic">
                            <img src="../images/f9 copy.jpg" class="img-responsive destaurate" alt="">
                        </div>
                        <h3><a href="#"> Prof. B.Prasada Rao
Professor, Andhra University, Visakhapatnam, India
</a></h3>
                        <span class="positions">Program Officer</span>
                        <div class="yellow-line"></div>
                        <p>Maecenas bibendum fermentum tortorin tempus sapien auctor vel.  ipsum primis in faucibus.</p>
                    </div>
                    <div class="col-md-3 team-profile">
                        <div class="pic">
                            <img src="../images/6.1.jpg" class="img-responsive destaurate" alt="">
                        </div>
                        <h3><a href="#">Ms. Radha Kolipaka
Dayton, Ohio, USA</a></h3>
                        <span class="positions">Director of Development &amp; Outreach</span>
                        <div class="yellow-line"></div>
                        <p>Vestibulum velit purus, dignissim nec ante blandit elementum dignissim sapien.</p>
                    </div>
        	</div>
    </div>
<!--  Team close-->




    <div class="container"><!--Become-team start -->
        <div class="become-team color-blk">
            <div class="row title">
                <div class="col-md-offset-3 col-md-6">
                    <h1>become a part of our team</h1>
                    <p class="lead-font">Nullam sapien eros porta non rhoncus ac aliquet at tortor nteger non libero
        simple dummy vitae ullamcorper.</p>
                    <a href="#" class="btn btn-yellow">join the team</a>
                    <a href="#" class="btn btn-yellow">become volunteer</a>
                </div>
            </div>
        </div>
    </div><!--Become-team close-->
        <script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>
    </div>
</asp:Content>

