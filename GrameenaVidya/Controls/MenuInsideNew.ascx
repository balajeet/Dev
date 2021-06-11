<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuInsideNew.ascx.cs" Inherits="GrameenaVidya.Controls.MenuInsideNew" %>
 <style>
        
       
        
        .profile-settings
        {
            padding-top:22px !important;
            border-left: 1px solid #00271F;
        }
        
        .profile-settings img
        {
            width:38px;
            height:38px;
            margin-right:10px;
            margin-top:7px;
            float:left;
        }
        
        .profile-settings .dropdown-toggle
        {
            color:#fff;
            text-decoration:none;
            
            background:#003666;
            display:inline-block;
            padding:14px 10px;
            
            width:220px;
        }
        .profile-settings .dropdown-menu
        {
            border-radius:0;
            margin-left:15px;
            margin: -1px 10px 0;
        }
        .profile-settings .dropdown-menu  li
        {
            width:220px;            
        }
        
        .profile-settings .student-name
        {
            float:left;
            display:inline-block; 
            min-width:100px;      
            margin-right:15px;  
            text-align:left;
            margin-left:10px;   
        }
        .profile-settings .fa-chevron-down
        {
            margin-top:10px;
        }
        
        .dropdown-user {
            margin: 13px 0;
            padding: 5px;
            height: 100%;
            float:right !important;
            opacity:0.5;
        }

        .dropdown-user:hover {
            cursor: pointer;
        }
        
        .text-muted
        {
            font-size:12px;
            color:#f2f2f2;
        }
        
        .dropdown-menu > li > a
        {
            padding:3px;
        }
        
        .dropdown-menu > li > a >i
        {
            margin-right:10px;
        }
       
    
    </style>


    <style>
        
        .navbar
        {
            min-height:80px;
            margin-bottom:0px;
            border-radius:0px;
            background:#002749;
            border:none;
        }
        
        .navbar-nav > li > a
        {
            height:80px;
            padding-top:12px;
            text-align:center;
        }
        
        .navbar-nav > li > .dropdown-menu > li > a
        {
            padding:10px 20px; 
            min-width:210px;
            font-weight:bold;
        }
        
        .nav > li > a > img
        {
            width:40px;
            height:40px;
            margin-top:0px;
            margin-right:0px;
        }
        
    #login-dp{
    min-width: 250px;
    padding: 14px 14px 0;
    overflow:hidden;
    background-color:rgba(255,255,255,.8);
}
#login-dp .help-block{
    font-size:12px    
}
#login-dp .bottom{
    background-color:rgba(255,255,255,.8);
    border-top:1px solid #ddd;
    clear:both;
    padding:14px;
}
#login-dp .social-buttons{
    margin:12px 0    
}
#login-dp .social-buttons a{
    width: 49%;
}
#login-dp .form-group {
    margin-bottom: 10px;
}
.btn-fb{
    color: #fff;
    background-color:#3b5998;
}
.btn-fb:hover{
    color: #fff;
    background-color:#496ebc 
}
.btn-tw{
    color: #fff;
    background-color:#55acee;
}
.btn-tw:hover{
    color: #fff;
    background-color:#59b5fa;
}
@media(max-width:768px){
    #login-dp{
        background-color: inherit;
        color: #fff;
    }
    #login-dp .bottom{
        background-color: inherit;
        border-top:0 none;
    }
}

    
    </style>
   


   <nav class="navbar navbar-default navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
      <a id="A5" runat="server" class="navbar-brand logo-main" href="~/Home.aspx"><img style="height:60px; margin-top:-5px; " id="Img2" runat="server" class="img-responsive" src="~/Images/logo.png" alt="GrameenaVidya" title="GrameenaVidya"></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      
      <ul class="nav navbar-nav navbar-right">
        <li ><a id="aDashBoard" runat="server" href="~/UserHome/Dashboard.aspx" ><img  runat="server" id="img1" src="~/Images/all.png" alt=""><br />Dashboard</a></li>
        <li><a id="aAssessments" runat="server" href="~/UserHome/Assessments/DTTest/" ><img  runat="server" id="img4" src="~/Images/dt-test.png" alt=""><br />Assessments</a></li>
        <li><a id="aLibrary" runat="server" href="~/UserHome/Library/Default.aspx" ><img  runat="server" id="img5" src="~/Images/my-lib.png" alt=""><br />Remedial</a></li>
       <%-- <li>
            <a id="aAssessments" href="#" class="dropdown-toggle" data-toggle="dropdown"><img  runat="server" id="img4" src="~/Images/dt-test.png" alt=""><br />Assessments <span class="caret"></a>
            <ul class="dropdown-menu" role="menu">
                <li><a runat="server" href="~/UserHome/Assessments/DTTest/Default.aspx">Diagnostic Test</a></li>
                <li class="divider"></li>
                <li><a runat="server" href="~/UserHome/Assessments/Psychometric/StartPsychometricExam.aspx" >Psychometric Test</a></li>
                <li><a runat="server" href="~/UserHome/Assessments/IQTest/StartIQExam.aspx" >IQ Test</a></li>
            </ul>
        </li>--%>
        <li>
            <a id="aReports" href="#" class="dropdown-toggle" data-toggle="dropdown"><img  runat="server" id="img3" src="~/Images/my-reports.png" alt=""><br />Reports <span class="caret"></a>
            <ul class="dropdown-menu" role="menu">
                <li><a runat="server" href="~/UserHome/Reports/DTReport.aspx" id="A8"><i class="fa fa-bar-chart" aria-hidden="true"></i> Diagnostic Assessment Report (DA)</a></li>
                <li><a runat="server" href="~/UserHome/Reports/RemedialProgress.aspx" id="A9"><i class="fa fa-line-chart" aria-hidden="true"></i></i> Remedial Progress Report</a></li> 
                <%--<li><a runat="server" href="~/UserHome/Reports/PsychometricReport.aspx" id="A2"><i class="fa fa-line-chart" aria-hidden="true"></i></i> Psychometric Report</a></li>                 --%>
                <li><a runat="server" href="~/UserHome/Reports/FinalReport.aspx" id="A1"><i class="fa fa-pie-chart" aria-hidden="true"></i> Final Report</a></li>                
            </ul>
        </li>

        <%--<li><a id="a2"  href=""  onclick="GetPCP();" ><img  runat="server" id="img6" src="~/Images/my-lib.png" alt=""><br />PCP</a></li>--%>

        <li class="dropdown" >
          <a id="aProfile" href="#" class="dropdown-toggle profile-settings" data-toggle="dropdown">
                 
                    <img class="img-circle" runat="server" id="imgProfilePic"
                             src="~/Images/photo.png"
                             alt="User Pic">

                    
                    <span class="student-name">
                        <strong><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></strong><br>
                        <span class="text-muted"><asp:Label ID="lbldetails" runat="server" Text=""></asp:Label></span>
                    </span>

                    <span class="fa fa-chevron-down"></span>
                    

          </a>
          <ul class="dropdown-menu" role="menu" >
            <li><a href="~/UserHome/Profile/ChangePassword.aspx" runat="server" id="A6"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Change Password</a></li>
            <li><a href="~/UserHome/Profile/ProfileData.aspx" runat="server" id="A7"><i class="fa fa-user" aria-hidden="true"></i> Edit My Profile</a></li>                
            <%--<li><a href="#" id="A2"><i class="fa fa-cog" aria-hidden="true"></i> Settings</a></li>  --%>              
            <li role="separator" class="divider"></li>   
            <%--<li> <asp:LinkButton ID="lbSignOut"  runat="server" onclick="lbSignOut_Click"><i class="fa fa-sign-out" aria-hidden="true"></i>LOG OUT</asp:LinkButton></li>   --%>
            <li> <a id="A1" runat="server" href="~/UserHome/AppSignout.aspx"><i class="fa fa-sign-out" aria-hidden="true"></i> LOG OUT</a> </li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>