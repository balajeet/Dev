<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Campaign.ascx.cs" Inherits="GrameenaVidya.Controls.Campaign" %>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <br /><h1 class="page-heading">
              Get Involved / Campaigns
            </h1>
        </div>
    </div>
    <div class="row">
    <div class="col-md-12 text-right">
    <asp:LinkButton ID="lnkcreate" runat="server" CssClass="btn btn-yellow"><i class="fa fa-plus-circle"> </i> Create Campaign
</asp:LinkButton>
   
    </div>
    </div>
        
    <div class="row">
 <asp:Repeater ID="repCamp" runat="server">
    <ItemTemplate>
    
        <div class=" col-md-3 campaign-strips">
        <div class="inner-strips">
             <div class="blk blk2">
            <div class="pic" style="margin:0px;">
                 <a href='../Campaigns/FundraisingCampaigns.aspx?CID=<%# Eval("ID")%>'><img src='../CampaignsImages/<%#Eval("Image") %>' class="img-responsive" alt=""></a>
                 <label class="campaign-name">Donate Me</label>
                    
            </div>
            </div>

              <div class="causes-info">
               <h5>Created By: <%#Eval("UserName") %></h5>
                 <h5 class="donated-to">Donated to:<%#Eval("SchoolName") %></h5>
                 <span>Whether you want to fundraise at home, at school or at work;</span>
                <div class="progress">
                    <div class="progress-bar" style='width: <%# Eval("DonatePersentage")%>%' role="progressbar" aria-valuenow="60%" aria-valuemin="0"
                        aria-valuemax="100%">
                        <%# Eval("DonatePersentage")%>%
                    </div>
                </div>
              <%--  <div class="progress-info">
                    <p>
                        <strong> <%# Eval("DonatePersentage")%>%</strong> Donated/ <strong><%#Eval("RemainingAmount")%></strong> TO GO</p>
                </div>--%>
                 
                <div class="progress-info row">
                    <span class="col-md-6 text-center">Need: <br />Rs <strong class="donate-amount"> <%#Eval("GoalAmount") %></strong></span>
                    <span class="text-center col-md-6">Raised So far:<br />Rs<strong class="donate-amount">  <%#Eval("DonateAmount") %></strong> </span>
                                    
                    </div>
          <%--  <p>
               <%#Eval("Content_message")%>
            </p>--%>
          <%--  <asp:LinkButton ID="lnkDonate" runat="server" class="btn btn-yellow" PostBackUrl="~/Campaigns/CampaignDetails.aspx?=">Donate</asp:LinkButton>
            <a href='~/Campaigns/CampaignDetails.aspx?catid=<%# Eval("CollectionID")%>'>Donate</a>--%>
            <div class="text-center">
            <a href='../../Campaigns/FundraisingCampaigns.aspx?CID=<%# Eval("ID")%>' class="btn btn-sm menu-donate">Donate</a>
            </div>
            </div>
        </div>
        </div> 
      
    </ItemTemplate>
    </asp:Repeater>
    <div class="row">
    <div class="col-md-12 text-right">
    
    <asp:HyperLink ID="hypViewMore" runat="server" NavigateUrl="~/Campaigns/OngoingCampaigns.aspx?Camp=Camp" Visible="false" style="color:#377bba;"><u>View More</u></asp:HyperLink>
      </div>  </div>
    </div>
</div>
