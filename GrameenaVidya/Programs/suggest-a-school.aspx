<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterOutside.Master" AutoEventWireup="true" CodeBehind="suggest-a-school.aspx.cs" Inherits="GrameenaVidya.programs.suggest_a_school" %>

<%@ Register Src="../Controls/Banner.ascx" TagName="Banner" TagPrefix="uc1" %>
<%@ Register Src="../Controls/DonorLogin.ascx" TagName="DonorLogin" TagPrefix="uc2" %>
<%@ Register Src="../Controls/AsideControl.ascx" TagName="AsideControl" TagPrefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MasterContainer" runat="server">
    <uc1:Banner ID="Banner1" runat="server" />
        <div class="row">
        <div class="col-lg-12">
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" 
                CssClass= "breadcrumb col-lg-12" PathSeparator=" / "></asp:SiteMapPath>
        </div>
    </div>

    <div class="row">
    <div class="col-lg-12 about-links">
     <a href="grameena-vidya.aspx" class="active">About Grameena Vidya</a>
     <a href="our-mission.aspx">About Our Mission</a>
     <a href="our-model.aspx">About Our Model</a>
     <a href="our-content.aspx">About Our Smart Content</a>
     <a id="A1"  href="~/packages.aspx" runat="server">Go To Packages &nbsp;&nbsp;<i class="glyphicon glyphicon-chevron-right"></i></a>
    </div>
    </div>


    <div class="row inner-body">
        <div class="col-lg-9 left-body">
            <h1>Adopt-a-school (Suggest)</h1>
        </div>
        <div class="col-lg-3 right-body">
            
            <uc3:AsideControl ID="AsideControl1" runat="server" />
        </div>
    </div>
</asp:Content>
