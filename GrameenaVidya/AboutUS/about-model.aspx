<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="about-model.aspx.cs" Inherits="AboutUS_about_model" %>





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
        <div class="col-md-9"> <!-- progaram detail start -->
      <h1 class="page-heading">&nbsp;Modal</h1>  
		         
            
<!--  banner close-->



    <div class="row">
      <div class="col-md-12 ch-tab"> 
        <!-- Nav tabs Start -->
        <ul class="nav nav-tabs">
          <li class="active"><a href="#home" data-toggle="tab">Model</a></li>
          <li><a href="#profile" data-toggle="tab">How It Works</a></li>         
            
        </ul>
        <!-- Nav tabs Close --> 
        
        <!-- Tab Start -->
        <div class="tab-content product-tab">
          <div class="tab-pane active fade in" id="home">
		  <img src="../images/grameena-modal.jpg" class="img-responsive" alt="">
            <br />
			<h2>The eco-system required is:</h2>
           
            <ol class="list-style">
              <li>A data center and a web portal</li>
              <li>Any portable device (laptop, tablet or mobile phones along with a projector and basic interactive devices) that can access educational content</li>
              <li>Wired or wireless connections network / broadband (2G, 3G or 4G) to ride the connectivity wave</li>
              <li>Multimedia content and assessments that is curriculum specific and caters to different subjects / classes and vocational software for both teachers and students</li>
              <li>The Sponsors – Individuals, Corporates and Government</li>
            </ol>
           
          </div>
          <div class="tab-pane fade" id="profile">          
            <img src="../images/how-it-works.jpg" class="img-responsive" alt="">

             <br />
			<h2>Steps For How it Works:</h2>
           
            <ol class="list-style">
              <li>Provides offline access to  Adopted  Schools with SmartClass Room(s)</li>
              <li>Provides online access to  Content to all Students</li>
              <li>Conduct Subject Proficiency test For each Student to identify strenghts and weakness and Provide a Personalized Learning Plan</li>
             
            </ol>
            
          </div>
          
          
          
        </div>
      </div>
      <!-- Tab Close --> 
      
    </div>

<!-- Main-container close -->     
         
        
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

