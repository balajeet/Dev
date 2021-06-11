<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="HowToDonate.aspx.cs" Inherits="GrameenaVidya.GetInvolved.HowToDonate" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbInvolve").addClass("activelink");


      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>

<!--  banner section ending-->
<div class="causes"><!--  Main-container section --> 

  <!-- faq close -->
  <div class="container"> <!--  accordion start -->
    <div class="row faq">
      <div class="col-md-6">
       <h1 class="page-heading">How To Donate</h1>     

      
                                    <p>
                                        <b style="color:Green">Step 1:</b><br />
                                      To Donate - Select a school or choose a school from our list</p>
                                    <p>
                                        <b style="color:Green">Step 2:</b><br />
                                        How much to Donate - Sponser can pay full for one or multiple units of smart classrooms<br />
                                                                            (or)
                                        Start a campaign by atleast covering the hardware for smart classroom
                                        </p>
                                    <p>
                                        <b style="color:Green">Step 3:</b><br />
                                        Donors can (Step 1) Donate in full by Adopting a School, (Step 2) Start a campaign and donate
                                        the minimum amount that covers the hardware expense of the school they adopted,
                                        other donors can join the campaign and contribute the remaining balance and (Step 3)
                                        Donate any amount to Grameena Vidya pool, which will be spent on existing list of
                                        beneficiary schools that have no donors as yet.</p>
                                    <p>
                                        <b style="color:Green">Step 4:</b><br />
                                        Donors receive regular reports of their adopted school from Grameena Vidya and directly
                                        from the beneficiary school administration as well. You can take a tour or interact
                                        remotely with the school principal, teachers and students.</p>
                                    <br />
                                    
                                   
                            
 </div>

    <div class="col-md-6">
        <div class="panel-group" id="accordion">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Steps to Donate?</a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
              <center><iframe width="100%" height="300" src="https://www.youtube.com/embed/91MJBQJ1BB4" frameborder="0" allowfullscreen></iframe></center>
            </div>
          </div>
          </div>
          
       
        </div>
     
    
    </div>
  </div>
  <!-- accordion close --> 
  
</div>

<script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>
</asp:Content>
