<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="NewStudent.aspx.cs" Inherits="GrameenaVidya.Programs.NewStudent" %>
<%@ Register src="~/Controls/NewStudentForm.ascx" tagname="NewStudentForm" tagprefix="uc1" %>
<%@ Register src="../Controls/AsideStu_right.ascx" tagname="AsideStu_right" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 adopt-left-block">
    <uc1:NewStudentForm ID="NewStudentForm1" runat="server" />
                        </div>
                        <uc1:AsideStu_right ID="AsideStu_right1" runat="server" />
                    </div>
                </div>
            </div>
    </div>
</asp:Content>
