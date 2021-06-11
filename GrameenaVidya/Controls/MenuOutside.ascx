<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuOutside.ascx.cs" Inherits="GrameenaVidya.Controls.MenuOutside" %>
<nav class="navbar navbar-default navbar-static-top" role="navigation">
<div class="container-fluid">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>				
</div>

<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav">
					
<li class="active"><a href="~"  runat="server">Home</a></li>
						
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">About us<span class="caret"></span></a>
<ul class="dropdown-menu" role="menu">
	<%--<li><a href="~/about-us/background.aspx" runat="server">Background</a></li>
	<li class="divider"></li>--%>
	<li><a href="~/about-us/grameena-vidya.aspx" runat="server">Background</a></li>
	<li class="divider"></li>
	<li><a href="~/about-us/our-mission.aspx" runat="server">Mission</a></li>
	<li class="divider"></li>
	<li><a href="~/about-us/our-model.aspx" runat="server">Model</a></li> 	
    <li class="divider"></li>
	<li><a id="A1" href="~/about-us/our-content.aspx" runat="server">Smart Content</a></li> 		
     
    						
</ul>
</li>
						
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Programs<span class="caret"></span></a>
<ul class="dropdown-menu" role="menu">
	<li><a href="~/programs/adopt-a-school.aspx" runat="server">Adopt-a-school</a></li>
	<%--<li class="divider"></li>
    <li><a id="A1" href="~/programs/suggest-a-school.aspx" runat="server">Suggest a School</a></li>--%>
	<li class="divider"></li>
    <li><a id="A2" href="~/programs/adopt-a-village.aspx" runat="server">Adopt-a-village</a></li>
	<%--<li class="divider"></li>
	<li><a href="~/programs/suggest-a-village.aspx" runat="server">Suggest a Village</a></li>--%>
</ul>
</li>
						
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Sponsors<span class="caret"></span></a>
<ul class="dropdown-menu" role="menu">
	<li><a href="~/sponsors/individual.aspx" runat="server">Individual</a></li>
	<li class="divider"></li>
	<li><a href="~/sponsors/corporate.aspx" runat="server">Corporate</a></li>
	<li class="divider"></li>
	<li><a href="~/sponsors/government.aspx" runat="server">Government</a></li>
<%--    <li class="divider"></li>
	<li><a id="A3" href="~/packages.aspx" runat="server">Packages</a></li>  --%>
</ul>
</li>
						
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Benefits<span class="caret"></span></a>
<ul class="dropdown-menu" role="menu">
	<li><a id="A3" href="~/benefits/sponsors.aspx" runat="server">Sponsors</a></li>	
    <li class="divider"></li>	
    <li><a id="A4" href="~/benefits/students.aspx" runat="server">Students</a></li>	
    <li class="divider"></li>
    <li><a href="~/benefits/schools.aspx" runat="server">School</a></li>
    <li class="divider"></li>
    <li><a id="A5" href="~/benefits/community.aspx" runat="server">Community</a></li>	
	
						 
</ul>
</li>
						
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Locations<span class="caret"></span></a>
<ul class="dropdown-menu" role="menu">
	<li><a href="~/locations/india.aspx" runat="server">India</a></li>
	<li class="divider"></li>
	<li><a href="~/locations/usa.aspx" runat="server">USA</a></li>							  
</ul>
</li>						
						
<%--						
<li><a href="~/contact.aspx" runat="server">Contact</a></li>--%>
					
					
</ul>



<ul class="nav navbar-nav navbar-right">
					<a runat="server" href="~/download/grameena-vidya.rar" class="btn btn-warning brochure-button">Brochure <i class="glyphicon glyphicon-save"></i></a>
					</ul>
					
					
</div><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->

</nav>