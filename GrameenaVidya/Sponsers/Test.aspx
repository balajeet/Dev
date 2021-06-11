<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="GrameenaVidya.Sponsers.Test" %>
<%@ Register src="../Controls/Testing.ascx" tagname="Testing" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Testing ID="Testing1" runat="server" />
</asp:Content>
