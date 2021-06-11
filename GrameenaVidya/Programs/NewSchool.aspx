<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="NewSchool.aspx.cs" Inherits="GrameenaVidya.Programs.NewSchool" %>
<%@ Register src="~/Controls/NewSchoolForm.ascx" tagname="NewSchoolForm" tagprefix="uc1" %>
<%@ Register src="../Controls/Aside_right.ascx" tagname="Aside_right" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 adopt-left-block">
    <uc1:NewSchoolForm ID="NewSchoolForm1" runat="server" />
    </div>
                        <uc1:Aside_right ID="Aside_right1" runat="server" />
                    </div>
                </div>
            </div>
    </div>
</asp:Content>
