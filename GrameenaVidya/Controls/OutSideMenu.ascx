<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OutSideMenu.ascx.cs" Inherits="GrameenaVidya.Controls.OutSideMenu" %>
<style>		
    
.top-header .top-header-right .login {
    background: #fff none repeat scroll 0 0;
    border-radius: 3px;
    color: #000;
    display: inline-block;
    font-size: 14px;
    text-decoration:none;
    margin-left: 15px;
    padding: 0 10px 0 4px;
    cursor:pointer;
}
.top-header .top-header-right .login a
{
    color:#000;
    padding:0 10px;
}

    ul,ol ,li
    {
    	margin-bottom:0;
    }
    
		fieldset
		{
		  margin: 0;
		  padding: 0;
		  border: 0;
		}
		/*----------------------*/
		
		
		
		nav #login {
		  border-right: 1px solid #ddd;
		  -moz-box-shadow: 1px 0 0 #fff;
		  -webkit-box-shadow: 1px 0 0 #fff;
		  box-shadow: 1px 0 0 #fff;  
		  
		  -moz-user-select: none;
    background: #fff;
    border: 1px solid transparent;
    border-radius: 4px;
    cursor: pointer;
    display: inline-block;
    font-size: 14px;
    font-weight: 400;
    
    margin-bottom: 0;
    
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
		}
		
		nav #login-trigger,
		nav #signup a {
		  display: inline-block;
		  *display: inline;
		  *zoom: 1;
		  height: 25px;
		  line-height: 25px;
		  font-weight: bold;
		  padding: 0 8px;
		  text-decoration: none;
		  color: #444;
		  text-shadow: 0 1px 0 #fff; 
		}
		
		
		
		nav #login-trigger {
		  -moz-border-radius: 3px 0 0 3px;
		  -webkit-border-radius: 3px 0 0 3px;
		  border-radius: 3px 0 0 3px;
		}
		
		nav #login-trigger:hover,
		nav #login .active,
		nav #signup a:hover {
		  background: #fff;
		}
		
		nav #login-content {
		  display: none;
		  position: absolute;
		  top: 30px;		  
		  z-index: 999;   
		 
		  
		  
		}
		
		nav li #login-content {
		  
		  width: 350px;  
		}
		
		
	</style>


    <script src="../../js/jquery.js"></script>
<script>
    $(document).ready(function () {
        $('#login-trigger').click(function () {
            $(this).next('#login-content').slideToggle();
            $(this).toggleClass('active');

            if ($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')
            else $(this).find('span').html('&#x25BC;')
        })
    });



    $(function () {
        //$(".dropdown-menu > li > a.trigger").on("click", function (e) {
        //    var current = $(this).next();
        //    var grandparent = $(this).parent().parent();
        //    if ($(this).hasClass('left-caret') || $(this).hasClass('right-caret'))
        //        $(this).toggleClass('right-caret left-caret');
        //    grandparent.find('.left-caret').not(this).toggleClass('right-caret left-caret');
        //    grandparent.find(".sub-menu:visible").not(current).hide();
        //    current.toggle();
        //    e.stopPropagation();
        //});
        //$(".dropdown-menu > li > a:not(.trigger)").on("click", function () {
        //    var root = $(this).closest('.dropdown');
        //    root.find('.left-caret').toggleClass('right-caret left-caret');
        //    root.find('.sub-menu:visible').hide();
        //});
    });


    function Close() {
        $("#login-content").hide();
    
    }



	</script>

<a href="#" class="scrollup" style="display: none;">Scroll</a>

<div class="top-header">
   
<div class="container">
	
	<div class="top-header-right" align="right">
	
    
      <nav class="login" >
  <ul>
<li id="login">
<a class="" id="login-trigger" href="#">
	Log in <span>▼</span>
</a>
<div style="display: none;"  id="login-content">
 <img src="../images/close.png" onclick="Close();" align="right" style="margin-right:-34px; margin-top: -24px;" />
	<form>
		<div class="row login-home">

  <div class="form-group">
                <h3>Login
               
                </h3>
                <asp:TextBox ID="txtUserName" runat="server" type="email" class="form-control" placeholder="Enter Email Address"
                    AutoComplete="off" ValidationGroup="LogIn"></asp:TextBox>
                <asp:Label ID="lblUNameEmpty" runat="server" Text="Please Enter Email Address" Style="display: none;
                    color: Red;"></asp:Label>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control"
                    placeholder="Enter Password"></asp:TextBox>
                <asp:Label ID="lblUPwdEmpty" runat="server" Text="Please Enter Password" Style="display: none;
                    color: Red;"></asp:Label>
            </div>

            <div>
            <asp:Button ID="btnlogin" runat="server"  Text="Login" CssClass=" btn btn-login btn-lg"  onclick="btnlogin_Click" 
                    />
         
            
            
           <label> <a id="A6" href="~/Outlinks/ForgetPassword.aspx" runat="server" class="left hover-underline text-right">
                            Forgot Password?</a></label></div>

</div>
	</form>
</div>                     
</li>
		
</ul>
</nav>
<i class="fa fa-phone top-icon"></i> +91 7702444575
	<%--<a href="../Programs/donationlist.aspx"><div class="login2"><i class="fa fa-lock top-icon lock"></i><asp:Label ID="lblCount" runat="server" ></asp:Label> Adopted in this Month</div></a>--%>
	</div>
</div>
</div>
<div class="header">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container"> 
      
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="~/Home.aspx" runat="server"> <img id="Img1" src="~/images/logo.png" alt="logo" runat="server" /></a> </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
          <li id="lbHome" ><a id="A1"  href="~/Home.aspx"  runat="server">HOME</a></li>         
            <li id="lbSchool"><a id="A7" href="../Programs/adopt-a-school.aspx" runat="server">Adopt-a-School</a></li>							
			 <li id="lbStudent"><a href="../Programs/adopt-a-student.aspx">Adopt-a-Student</a></li>
              <li id="lbDigitalInclusion"><a href="../Programs/DigitalInclusion.aspx">Digital Inclusion</a></li>
       
         <%-- <li id="lbSponsors" class="dropdown"> <a  href="event.html" class="dropdown-toggle" data-toggle="dropdown">Sponsors<b class="caret"></b></a>
            <ul class="dropdown-menu">
            <li><a id="A8" href="../Sponsers/Individual.aspx" runat="server">Individual</a></li>			
			<li><a id="A9" href="../Sponsers/Corparate.aspx" runat="server">Corporate</a></li>			
			<li><a id="A10" href="../Sponsers/Government.aspx" runat="server">Government</a></li>
            </ul>
          </li>--%>

         <%-- <li id="lbBenfits" class="dropdown"> <a  href="blog.html" class="dropdown-toggle" data-toggle="dropdown">Beneficiaries <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a id="A11" href="~/Programs/donationlist.aspx" runat="server">Adopted Schools</a></li>
			   <li><a id="A12" href="~/Campaigns/OngoingCampaigns.aspx" runat="server">Ongoing Campaigns</a></li>
              	  
			</ul>
          </li>--%>
     

          <li class="menu-donate"><a  href="../Donate/Donate_.aspx">Donate</a></li>













     <%--     <li><a href="demo.html">Demo</a></li>--%>
        
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
      
    </div>
 

  </nav>




</div>
