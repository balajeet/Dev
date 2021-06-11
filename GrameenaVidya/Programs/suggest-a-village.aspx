<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterOutside.Master" AutoEventWireup="true" CodeBehind="suggest-a-village.aspx.cs" Inherits="GrameenaVidya.programs.suggest_a_village" %>
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
    <div class="row inner-body">
        <div class="col-lg-9 left-body">
            <h1>Adopt-a-village (Suggest)</h1>
        </div>
        <div class="col-lg-3 right-body">
            
            <uc3:AsideControl ID="AsideControl1" runat="server" />
        </div>
    </div>
</asp:Content>
