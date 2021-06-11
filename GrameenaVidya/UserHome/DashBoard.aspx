<%@ Page Title="" Language="C#" MasterPageFile="~/Master/InsideMaster.master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="GrameenaVidya.UserHome.DashBoard" %>
<%@ Register src="../Controls/ChangePassword.ascx" tagname="ChangePassword" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <script type="text/javascript" language="javascript">
        function OpenFreeUserMessage() {

            $('#overlay3').fadeIn('fast', function () {
                $('#box3').animate({ 'top': '75px' }, 500);
            });
            $(".page-head").removeClass("col-lg-6 col-lg-offset-3").addClass("col-lg-8 col-lg-offset-2");
            var iframe = document.createElement("IcPwd");
        }

        function ClosePopup() {
            $('#box3').animate({ 'top': '-500px' }, 500, function () {
                $('#overlay3').fadeOut('fast');

            });
        }



      
      

    </script>
    <style>
        .overlay3
        {
            background: transparent url(../../images/overlay.png) repeat top left;
            position: fixed;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            z-index: 100;
        }
        
        .box4
        {
            position: fixed;
            top: 300px;
            left: 50%;
            background-color: #fff;
            color: #7F7F7F;
            border: 0px solid #555;
            -moz-border-radius: 20px;
            border-radius: 3px;
            -moz-box-shadow: 0 1px 5px #333;
            -webkit-box-shadow: 0 1px 5px #333;
            z-index: 101;
            box-shadow: 0px 2px 10px #333333;
            width: 60px;
            height: 60px;
            padding: 15px;
        }
        
        
        
        
        
        .box3
        {
            position: fixed;
            top: -1000px;
            left: 10%;
            right: 10%;
            background-color: #fff;
            color: #7F7F7F;
            border: 0px solid #555;
            -moz-border-radius: 20px;
            border-radius: 3px;
            -moz-box-shadow: 0 1px 5px #333;
            -webkit-box-shadow: 0 1px 5px #333;
            z-index: 1000;
            box-shadow: 0px 2px 10px #333333;
            padding: 30px 20px 10px 20px;
        }
        
        a.boxclose3
        {
            float: right;
            margin-top: -23px;
            margin-right: -10px;
            cursor: pointer;
            font-size: 20px;
            font-weight: bold;
            color: #999999;
        }
        
.login-button2
        {

            background: radial-gradient(ellipse at center center , #f8ffe8 0%, #e3f5ab 33%, #b7df2d 100%) repeat scroll 0 0 rgba(0, 0, 0, 0);
            border: 0 none;
            border-radius: 20px;
            box-shadow: 3px 3px 2px #666;
            color: #000;
            font-weight: bold;
            margin-right: 1em;
            margin-top: 1em;
            padding: 0.7em 1em 0.7em 2em;
            text-transform: uppercase;            
        }    
        
        
         .future-box
        {

           cursor:pointer;
           
background: #fcfff4; /* Old browsers */
background: -moz-linear-gradient(top,  #fcfff4 0%, #dfe5d7 40%, #b3bead 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fcfff4), color-stop(40%,#dfe5d7), color-stop(100%,#b3bead)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #fcfff4 0%,#dfe5d7 40%,#b3bead 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #fcfff4 0%,#dfe5d7 40%,#b3bead 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #fcfff4 0%,#dfe5d7 40%,#b3bead 100%); /* IE10+ */
background: linear-gradient(to bottom,  #fcfff4 0%,#dfe5d7 40%,#b3bead 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fcfff4', endColorstr='#b3bead',GradientType=0 ); /* IE6-9 */

	border:1px solid #e5e5e5;
	border-radius:5px;
        }
        
         .future-box:hover
        {
        	background: #fcfff4; /* Old browsers */
        	/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#dfe5d7+28,b3bead+67 */
background: #dfe5d7; /* Old browsers */
background: -moz-linear-gradient(top,  #dfe5d7 28%, #b3bead 67%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(28%,#dfe5d7), color-stop(67%,#b3bead)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #dfe5d7 28%,#b3bead 67%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #dfe5d7 28%,#b3bead 67%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #dfe5d7 28%,#b3bead 67%); /* IE10+ */
background: linear-gradient(to bottom,  #dfe5d7 28%,#b3bead 67%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#dfe5d7', endColorstr='#b3bead',GradientType=0 ); /* IE6-9 */

        }    
    </style>



    <div class="overlay3" id="overlay3" style="display: none;">
    </div>
    <div class="box3" id="box3" style="width: 700px; height: 400px; margin: auto; background: #f2f2f2;">
        <a class="boxclose3" id="boxclose" onclick="javascript:ClosePopup();">&#215;</a>
        <%--<iframe src="ChangePassword.aspx" id="IcPwd" runat="server" frameborder="0" scrolling="no"
            width="100%" height="340"></iframe>--%>
        <uc1:ChangePassword ID="ChangePassword1" runat="server" />

    </div>

    <%--<div class="row">

        <div class=" col-lg-6 left">
            <h3>Welcome <asp:Label ID="lblUsername" runat="server"></asp:Label> </h3>
            <h5>Below are your adopted school details.</h5>
        </div>

        <div class=" col-lg-6 right text-right" style="display:none;">
            <a class="btn btn-warning login-button2 donate2" href="donate">Donate more<i class="glyphicon glyphicon-gift"></i></a>
        </div>

    </div>--%>
    <br />&nbsp;
<br />&nbsp;
<br />&nbsp;

  <div class="row text-center dashboard">
    <div class="col-md-offset-1 col-md-3">
        <div class="future-box donated-box">
            <div class="panel-body">
                <img src="../../images/schools.png" style="height:65px;" /><br />&nbsp;
                <h3>
                    <a href="DonatedSchools.aspx?ID=1" runat="server">Donated Schools</a> </h3>
            </div>
        </div>
    </div>
    <div class=" col-md-3">
        <div class="future-box donated-box">
            <div class="panel-body">
                <img src="../../images/money.png" /><br />&nbsp;
              <h3> <a id="A1" href="DonatedSchools.aspx?ID=3" runat="server">General Donations</a> </h3>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="future-box donated-box">
            <div class="panel-body">
                <img src="../../images/campaign.png" /><br />&nbsp;
                <h3>
                    My Campaigns</h3>
            </div>
        </div>
    </div>
</div>
   
   


  
  <div class="modal fade" id="mdDashboard" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">
        
            <label id="lblTitle">Modal Title</label>
        
        </h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       <%-- <button type="button" class="btn btn-primary">Save changes</button>--%>
      </div>
    </div>
  </div>
</div>

<script>

    function SetTitle(Title) {
        $("#lblTitle").html(Title);
    }
      
</script>

    <script>
        var element = document.getElementById("liDashboard");
        element.classList.add("active");
    </script>

</asp:Content>
