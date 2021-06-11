<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="India.aspx.cs" Inherits="Locations_India" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>


<%@ Register src="../Controls/EnqueryForm.ascx" tagname="EnqueryForm" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbLocations").addClass("activelink");


      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>


<div class="main-container"><!--  Main-container start -->
  <div class="container"><!-- contact-detail start -->
    <div class="contact-detail">
      <div class="row">
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12">
              <h1>India Locations</h1>              
                
            </div>
          </div>
          <hr>
          <div class="row">
            <div class="col-md-12  office-address">
              <div class="blk">
			  <h2>Visakhapatnam</h2>
                 <ul>
				  <li> D.No: 10-1-9/1, Flat No: 302, <br>
			Vinayagar Heights,<br>Sampth Vinayaka Road (Opp.Side of Temple), <br>
            Visakhapatnam 530003, India.</li>                  
                 
				  <li><i class="fa fa-envelope top-icon"></i>&nbsp; &nbsp;  info@grameenavidya.org</li>
				  <li><i class="fa fa-phone top-icon"></i>&nbsp; &nbsp; +91 7702444575</li>
                </ul>
              </div>
            </div>
            
          </div>


            <div class="row">
            <div class="col-md-12">
              
			    <a href="#map" class="btn btn-yellow">View Map</a>
             
            </div>
            
          </div>



         
        </div>


       <uc1:EnqueryForm ID="EnqueryForm1" runat="server" />
        
        
        <!-- sidebar blk close --> 
      </div>
    </div>
    <hr>
  </div>
  <!-- contact-detail close -->
 
  <!-- support close --> 
</div>
<a name="map"></a> 


<div class="pag">
<div class="row">
<div class="col-md-12">   
<iframe width="100%" height="600" src="https://www.google.com/maps/d/embed?mid=z0EUzoBIczYs.kyfeeGpcV1NA&amp;zoom=80"></iframe>
</div>
</div>
</div>
  <script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script> 
</asp:Content>

