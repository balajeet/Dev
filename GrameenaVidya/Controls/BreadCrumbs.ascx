<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BreadCrumbs.ascx.cs" Inherits="Controls_BreadCrumbs" %>


<div class="page-title" id="bcrumbs">
  <div class="container">
    <div class="row">
      <div class="col-md-12 ptn-bg text-right">
      <%--  <h2>Our Team</h2>--%>
        <ol class="breadcrumb">
          <li> <asp:SiteMapPath ID="gvSiteMapPath" runat="server" PathSeparator=" » " CssClass="breadcrumb">
                    </asp:SiteMapPath></li>
         
        </ol>
      </div>
    </div>
  </div>
</div>