<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="CampaignDetails.aspx.cs" Inherits="GrameenaVidya.Campaigns.CampaignDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="main-container campaign"> <!-- main-container start -->
  <div class="container"> <!-- container start -->
   

   <div class="row">
	  
	  <div class="col-md-12 ">
	  <div class="donate">
      <div class="col-md-12 campaign-list">
	  <h2>Fundraising Campaigns List</h2>
	  <h4>Poor Quality of Education in Government Schools</h4>
	<br />
	
	
			<div class="row campaign-status">              
			  <div class="col-md-4">
              <img id= class="img-responsive" alt="">
              <asp:Image id="imgSchool" runat="server" CssClass="img-responsive"/>
              </div>
			  
              <div class="col-md-8">
               <h5>Donation amount raised equal to feed 31 children / Year</h5>
			   
			<h4>Raised So Far Rs <asp:Label ID="lblFundRaised" runat="server"></asp:Label></h4>
			<input  id="rangeFundRiase" runat="server" type = "range" min="0" max="100" onchange="rangevalue.value=value" />
			<output id="rangevalue"><asp:Label ID="lblRaisedPercentage" runat="server"></asp:Label></output>
			
			<br />
			<button class="campaign-date">Goal Rs <asp:Label ID="lblGoalAmount" runat="server"></asp:Label></button>
			<button class="campaign-date">Start Date : <asp:Label ID="lblStartDate" runat="server"></asp:Label></button>
			<button class="campaign-date">End Date : <asp:Label ID="lblEndDate" runat="server"></asp:Label></button>
			   <br />   <br />
			   
			   <div class="row">
              <div class="col-md-6">
                <div class="form-group"> 
                <asp:TextBox ID="txtAmount" runat="server" placeholder="Donation Amount" class="form-control"></asp:TextBox>                 
                
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                <asp:Button ID="btnCampDonation" runat="server" 
                        CssClass="btn btn-default btn-yellow" Text="Make your Donation" 
                        onclick="btnCampDonation_Click" />
               
                </div>
              </div>
            </div>   
			   
			   
			   
              </div>
            </div>
			<br /><br />
			
	
	
	  <h2>Start a Fundraising Campaign</h2>
	  <h5 class="note">Create your own fundraising page in support of food for education</h5>
	  <button class="btn btn-default btn-yellow" type="submit">Create fundraising Campaign</button>
	  <button class="btn btn-default btn-yellow" type="submit">My Profile</button>
	  <button class="btn btn-default btn-yellow" type="submit">Other’s Active Fundraising Campaign</button>
	  
	  </div>	  
	  
	  </div>
    </div>
	</div>
	
	
	
	
	
  </div>
  <!-- container start --> 
</div>
<!-- main-container close --> 




</asp:Content>
