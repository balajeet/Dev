<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuInside.ascx.cs" Inherits="GrameenaVidya.Controls.MenuInside" %>



<div class="top-header">
   
<div class="container">
<%--	<i class="fa fa-phone top-icon"></i> +91 891 271 3724 --%>
	<div class="top-header-right" align="right">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Welcome <asp:Label ID="lblUsername" runat="server"></asp:Label>
  <asp:Button ID="btnclose" runat="server" CssClass="btn btn-default right" Text="Logout" onclick="btnclose_Click" />    

	
	</div>
</div>
</div>


<div class="header">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container"> 
      
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="index.html"><img id="Img1" src="~/images/logo.png" alt="logo" runat="server"></a> </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
          <li class="activelink"><a id="A1" href="~/UserHome/DashBoard.aspx"  class="active" runat="server">DashBoard</a></li>          
          <li id="liMyProfile"><a id="A19" href="~/UserHome/MyProfile.aspx" runat="server">My Profile</a></li>
         <%--  <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Profile <b class="caret"></b></a>--%>
            <ul class="dropdown-menu">
			  <li><a id="A15" href="#" runat="server">My Settings</a></li>
			  <li><a id="A16" href="#" runat="server">My Photos</a></li>		
              <li><a id="A4" href="#" runat="server">Logout</a></li>		
            </ul>
          </li>
         
         
          

            <li class="menu-donate"><a  href="../Donate/Donate.aspx">Donate</a></li>
         
     <%--     <li><a href="demo.html">Demo</a></li>--%>
        
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
      
    </div>
 

  </nav>

</div>