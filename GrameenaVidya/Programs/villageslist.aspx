<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterOutside.Master" AutoEventWireup="true" CodeBehind="villageslist.aspx.cs" Inherits="GrameenaVidya.programs.villageslist" %>
<%@ Register Src="../Controls/Banner.ascx" TagName="Banner" TagPrefix="uc1" %>
<%@ Register Src="../Controls/DonorLogin.ascx" TagName="DonorLogin" TagPrefix="uc2" %>
<%@ Register Src="../Controls/AsideControl.ascx" TagName="AsideControl" TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MasterContainer" runat="server">
    <style>
        .well
        {
            background: #FAFAFA;
        }
        
        .heading
        {
            text-align: left;
            border-bottom: 1px solid #d5d5d5;
            margin-bottom: 30px;
        }
        
        .heading h2
        {
            background: none repeat scroll 0 0 #fafafa;
            display: inline-block;
            font-size: 22px;
            font-weight: 100;
            padding: 0;
            position: relative;
            top: 21px;
            color: #52A3CC;
        }
        .section
        {
            padding: 0 50px;
        }
    </style>

    <script type="text/javascript">
        function Call(villageid) {

            document.location.href = '../programs/schoolslist.aspx?VillageID=' + villageid.toString();
        }
  
   </script>
      <div class="row">
        <div class="col-lg-12">
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" CssClass="breadcrumb col-lg-12"
                PathSeparator=" / ">
            </asp:SiteMapPath>
        </div>
    </div>
    <div class="row">
        <div class="row inner-body">
            <div class="col-lg-9 left-body">
                <h1>
                    Villages List</h1>
                <div class="well well-lg">
                    <div class="heading">
                        <h2>
                            Select A Village&nbsp;
                        </h2>
                    </div>
                    <div class="row section">
                        <div id="NewUser">
                            <div class="col-lg-2 text-right">
                                States
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" placeholder="Select State"
                                        AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" DataTextField="StateName"
                                        DataValueField="StateID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-2 text-right">
                                Disctricts
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" placeholder="Select District"
                                        AutoPostBack="true" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged"
                                        DataTextField="DistrictName" DataValueField="DistrictID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-4">
                            </div>
                            <div class="clearfix">
                            </div>
                            <asp:GridView ID="gvVillagesList" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                                PageSize="30" CssClass="table table-responsive table-bordered" OnPageIndexChanging="gvVillagesList_PageIndexChanging">
                                 <Columns>
                                    <asp:TemplateField HeaderText="Village">
                                        <ItemTemplate>
                                            <%#Eval("VillageName")%></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="District">
                                        <ItemTemplate>
                                            <%#Eval("DistrictName")%></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="State">
                                        <ItemTemplate>
                                            <%#Eval("StateName")%></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                        <a href="javascript: Call('<%# Eval("VillageID") %>')">View</a>
                                           <%-- <asp:LinkButton ID="lblView" runat="server" CommandArgument='<%# Eval("SchoolID") %>' >View</asp:LinkButton>--%></ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 right-body">
                <uc3:AsideControl ID="AsideControl1" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
