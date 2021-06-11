<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true"
    CodeFile="about-smart-content.aspx.cs" Inherits="AboutUS_about_smart_content" %>

<%@ Register Src="../Controls/Aside_right.ascx" TagName="Aside_right" TagPrefix="uc1" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //$("#HeaderInside1_aForums").addClass("active");
            $("#lbAbout").addClass("activelink");


        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>
    <div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <!-- progaram detail start -->
                          <h1 class="page-heading">
                         Smart Content
                            <%--<a href="http://www.teachlearnweb.com/Features/Students/Default.aspx" target="_blank" class="btn btn-yellow btn-right">Demo</a>--%>
                        </h1>
                        <!--  banner close-->
                        <div class="row">
                            <div class="col-md-12 ch-tab">
                                <!-- Nav tabs Start -->
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#home" data-toggle="tab">Why Smart Classroom?</a></li>
                                    <li><a href="#content" data-toggle="tab">Content</a></li>
                                    <li><a href="#artifacts" data-toggle="tab">Artifacts</a></li>
                                    <li><a href="#hardware" data-toggle="tab">Hardware</a></li>
                                </ul>
                                <!-- Nav tabs Close -->
                                <!-- Tab Start -->
                                <div class="tab-content product-tab">
                                    <div class="tab-pane active fade in" id="home">
                                        <p>
                                            Because in the traditional way of learning children only focus on memorizing rather
                                            than learning. Using smart classroom technologies and reusable digital content will
                                            help children learn more quickly and master skills more deeply.
                                        </p>
                                        <p>
                                            Learning resources in multimedia and other formats keeps children engaged, make
                                            complex concepts simple and imbibe learning and career skills.</p>
                                        <img src="../images/smart-learning2.jpg" class="img-responsive" alt="">
                                        <br />
                                    </div>
                                    <div class="tab-pane fade" id="content">
                                        43,000+ Animations, 20,000+ Presentations, 1,00,000+ Worksheets (Skill based, General,
                                        Short Answer Questions), Course specific Class notes, Mind maps, Concept maps, Learning
                                        skills proficiency tests in multiple subjects, formative/summative tests.
                                        <br />
                                        Curriculum specific learning resources, both online/offline, multilingual, multiple subjects (Maths,Science,Social,English...) virtual labs and
                                        interactive resources and teacher resources all made available anywhere anytime
                                        for students to learn at their own pace.
                                        <br />
                                        <br />
                                        <br />
                                        <img src="../images/artifacts.png" class="img-responsive" alt="">
                                    </div>
                                    <div class="tab-pane fade" id="artifacts">
                                        <section id="set-5">
		<div class="artifacts-new">
			
			<a href="#" class="artifact-icons"><i class="pe pe-li-video pe-4x pe-icon"></i>Animations</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-browser pe-4x pe-icon"></i>Presentations</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-file pe-4x pe-icon"></i>Classnotes</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-notepad pe-4x pe-icon"></i>Worksheets</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-graph pe-4x pe-icon"></i>Reports</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-net pe-4x pe-icon"></i>Mind Maps</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-news pe-4x pe-icon"></i>Points</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-check pe-4x pe-icon"></i>Topic Test</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-pencil pe-4x pe-icon"></i>Skill Diagnostic</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-copy pe-4x pe-icon"></i>Add Subtopic</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-monitor pe-4x pe-icon"></i>E-Tutor</a>
			<a href="#" class="artifact-icons"><i class="pe pe-li-book pe-4x pe-icon"></i>Subject Test</a>
			
			
			</div>
				
			</section>
                                    </div>
                                    <div class="tab-pane fade" id="hardware">
                                         <table class="table">
                                            <tr>
                                                <td>
                                                    <img src="../images/digi-box.png" class="img-responsive" alt="Digi Box">
                                                </td>
                                                <td>
                                                    <b>Digibox:</b><br />
                                                    This Digibox contains smart classroom software and content to access the Class wise, Subject wise, Chapter wise and Subtopic wise content.
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td>
                                                    <img src="../images/projector.png" class="img-responsive" alt="projector">
                                                </td>
                                                <td>
                                                    <b>Projector:</b><br />
                                                    The Digibox is connected to this Projector to display output.
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td>
                                                    <img src="../images/white-screen.png" class="img-responsive" alt="White Screen">
                                                </td>
                                                <td>
                                                    <b>White Screen (Display):</b><br />
                                                    A projection screen is an installation consisting of a surface and a support structure used for displaying a projected image for the view of an audience.
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td>
                                                    <img src="../images/speakers.png" class="img-responsive" alt="Speakers">
                                                </td>
                                                <td>
                                                    <b>Multimedia Speakers:</b><br />
                                                    These are the speakers to hear the voice or audio output of the content played in Digibox
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td>
                                                    <img src="../images/keyboard.png" class="img-responsive" alt="Keyboard">
                                                </td>
                                                <td>
                                                    <b>Keyboard & Mouse:</b><br />
                                                    These are the wireless devices to access software in Digibox
                                                </td>
                                                
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Tab Close -->
                        </div>
                        <!-- Main-container close -->
                    </div>
                    <!-- progaram detail close -->
                    <uc1:Aside_right ID="Aside_right1" runat="server" />
                    <!-- sidebar section dending -->
                </div>
            </div>
        </div>
    </div>
    <script src="../js/jquery-1.9.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <script src="../js/script.js"></script>
    <script src="../js/owl.carousel.js"></script>
</asp:Content>
