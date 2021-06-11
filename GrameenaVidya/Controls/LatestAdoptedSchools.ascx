<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LatestAdoptedSchools.ascx.cs" Inherits="Controls_LatestAdoptedSchools" %>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>
              Get Involved / Campaigns
            </h1>
        </div>
    </div>
    <div class="row">
    <asp:Repeater ID="repCamp" runat="server">
    <ItemTemplate>
        <div class="col-md-3">
        <div class="blk">
            <div class="pic">
                 <a href='../Campaigns/FundraisingCampaigns.aspx?CID=<%# Eval("ID")%>'><img src='../CampaignsImages/<%#Eval("Image") %>' class="img-responsive" alt=""></a>
                    
            </div>
            </div>

              <div class="causes-info">
               <h5>
                Created By: <%#Eval("UserName") %></h5>
                 <h5>Donated:<%#Eval("SchoolName") %></h5>
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
                 
                <div class="progress-info">
                    <p>
                   Need:<strong> <%#Eval("GoalAmount") %></strong> &nbsp;&nbsp;  Raised So far:<strong><%#Eval("DonateAmount") %></strong> 
                    </p>                     
                    </div>
          <%--  <p>
               <%#Eval("Content_message")%>
            </p>--%>
          <%--  <asp:LinkButton ID="lnkDonate" runat="server" class="btn btn-yellow" PostBackUrl="~/Campaigns/CampaignDetails.aspx?=">Donate</asp:LinkButton>
            <a href='~/Campaigns/CampaignDetails.aspx?catid=<%# Eval("CollectionID")%>'>Donate</a>--%>
            <a href='../../Campaigns/FundraisingCampaigns.aspx?CID=<%# Eval("ID")%>' class="btn menu-donate">Donate</a>
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