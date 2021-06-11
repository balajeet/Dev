<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="FundraisingCampaigns.aspx.cs" Inherits="GrameenaVidya.Campaigns.FundraisingCampaigns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">    var switchTo5x = true;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">    stLight.options({ publisher: "f6e84229-79a1-4a90-85fe-2c8ae149e8e5", doNotHash: false, doNotCopy: false, hashAddressBar: false });</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="main-container campaign"> <!-- main-container start -->
  <div class="container"> <!-- container start -->
   

   <div class="row">
	  
	  <div class="col-md-12 ">
	  <div class="donate">
      <div class="col-md-12 campaign-list">
      <div class="row">
       <div class="col-md-6">
        <h4>Quality of Education in Government Schools</h4>
       </div>
         <div  class="col-md-6 text-right" ><br />
             <a  style="cursor:pointer;" title="Email This Page" data-toggle="modal" data-target="#myModal"><i class="fa fa-envelope fa-lg"></i></a>&nbsp;
             <a href="#" title="Print this page"><i class="fa fa-print fa-lg"></i></a>&nbsp;
             <a style="cursor:pointer;" title="Feedback Enquiry" data-toggle="modal" data-target="#myFeedback" ><i class="fa fa-pencil-square-o fa-lg" ></i></a>
             <a style="cursor:pointer;" title="Feedback Enquiry" data-toggle="modal" data-target="#myFeedback" ><i class="fa fa-pencil-square-o fa-lg" ></i> SHARE</a>
       

            </div>
      </div>

	
	
			<div class="row campaign-status">              
			  <div class="col-md-4">
              <img id= class="img-responsive" alt="">
              <asp:Image id="imgSchool" runat="server" CssClass="img-responsive"/>
              </div>
			  
              <div class="col-md-8">
               <h5>Donation amount raised For <b><asp:Label ID="lblSchoolName" runat="server"></asp:Label></b>
              
               </h5>
               <br />
               
			   
			<h4>Raised So Far Rs <asp:Label ID="lblFundRaised" runat="server"></asp:Label>/ <asp:Label ID="lblGoalAmount" runat="server"></asp:Label>
             <button class="campaign-date pending-amount">Pending Amount : <asp:Label ID="lblPendingAmt" runat="server"></asp:Label></button>
            </h4>
            <div id="divProgress" runat="server"  class="progress">
                    
                </div>
			<%--<input type = "range" min="0" max="100" onchange="rangevalue.value=value" />
			<output id="rangevalue"><asp:Label ID="lblRaisedPercentage" runat="server"></asp:Label></output>
			--%>
			<br />
			<%--<button class="campaign-date">Goal Rs</button>--%>
			 <div class="start-date">Start Date : <asp:Label ID="lblStartDate" runat="server"></asp:Label></div>
			 <div class="start-date end-date">End Date : <asp:Label ID="lblEndDate" runat="server"></asp:Label></div>
             <div class="start-date end-date">Created By : <asp:Label ID="lblCreatedby" runat="server" Text="Shilpa"></asp:Label></div>
           
			   <br />   <br />
			   <br />
			   <div class="row">
              <div class="col-md-6">
                <div class="form-group">                  
                  <asp:TextBox ID="txtAmount" runat="server" placeholder="Donation Amount" class="form-control" onChanged="Javascript:return CheckAmount();"></asp:TextBox>             
                </div>
              </div>
              
              <div class="col-md-6">
                <div class="form-group">
               <asp:Button ID="btnCampDonation" runat="server" CssClass="btn  menu-donate" 
                        Text="DONATE" 
                        onclick="btnCampDonation_Click" />
              
                </div>
              </div>
            </div>   
			   
			   
			   
              </div>


            


            </div>


              <div class="col-md-12 campaign-donors">
              
              <%--<h2>Overview</h2>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
              --%>
              <h2>Campaign Donors</h2>

              <asp:Repeater ID="rptCampaigns_Donars" runat="server">
              <ItemTemplate>
              <div class="donor-names">
              
              <b>   <%# Eval("Name")%></b> donated   <%# Eval("Amount")%>  on
   <%# Eval("Transaction_Date")%>
              
              </div>
              </ItemTemplate>
              
              </asp:Repeater>
             
              
              </div>

			<br /><br />
			
	
	
	<%--  <h2>Start a Fundraising Campaign</h2>
	  <h5 class="note">Create your own fundraising page in support of food for education</h5>
	  <button class="btn btn-default btn-yellow" type="submit">Create fundraising Campaign</button>
	  <button class="btn btn-default btn-yellow" type="submit">My Profile</button>
	  <button class="btn btn-default btn-yellow" type="submit">Other’s Active Fundraising Campaign</button>--%>
	  
	  </div>	  
	  
	  </div>
    </div>
	</div>
	
	
	
	
	
  </div>
  <!-- container start --> 
</div>

<script>
    function CheckAmount()
     { 
    
    
    
    
    }
</script>

   <script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>

</asp:Content>
