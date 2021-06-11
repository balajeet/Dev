<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="Community.aspx.cs" Inherits="Benfits_Community" %>

<%@ Register src="../Controls/Aside_right.ascx" tagname="Aside_right" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 
    <div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <!-- progaram detail start -->
                        <h1>
                            Community</h1>
                        
                        <p>
                            Technology is set to transform education over the next decade as much as it has
                            revolutionized the rest of our lives in the past decade. It has huge potential to
                            engage more learners and improve the learning experience. We can harness the power
                            of technology to improve standards of education, and with it realize the potential
                            of millions.
                        </p>
                        <p>
                            Adopt-a-village program is a combo offer – bringing smart classrooms to schools
                            and students and community focused IT solutions to rural youth. It helps improve
                            both <b>ACADEMIC SKILLS AND VOCATIONAL SKILLS</b>. It prepares rural students and
                            youth for higher education and careers.</p>
                        <p>
                            During regular hours, all schools in the village utilize and derive the benefits
                            of smart classroom technologies and content, however, during after school hours,
                            these locations become <b>COMMUNITY CENTERS</b>, where they can quickly gain employable
                            skills which in turn will have a positive effect on social and economic wellbeing
                            of the rural community.</p>
                    </div>
                    <!-- progaram detail close -->
                <uc1:Aside_right ID="Aside_right2" runat="server" />
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

