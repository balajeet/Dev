<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true"
    CodeBehind="about-ctrd.aspx.cs" Inherits="GrameenaVidya.AboutUS.about_ctrd" %>

<%@ Register Src="../Controls/Aside_right.ascx" TagName="Aside_right" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#lbAbout").addClass("activelink");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 adopt-left-block">
                        <!-- progaram detail start -->
                         <h1 class="page-heading">About</h1>
                        <h2>
                            Center for Training Research And Development (CTRD)
                        </h2>
                        <%--<div class="pic"> 
            <img src="../images/donet-pic.jpg" class="img-responsive" alt="">
&nbsp;</div>     --%>
                        <p>
                            Centre for Training Research and Development (CTRD) is a non-for-profit NGO registered
                            under the Societies Registration Act XXI of 1860 vide Society Registration number
                            45 of 1987 dated 1st April of 1987 at Srikakulam with 12 Aims and Objectives of
                            helping people in rural, inner-city and others at the bottom of the pyramid.</p>
                        <p>
                            Our organization has been carrying on various social service activities from its
                            inception particularly during the financial years 2007-2008, 2008–2009 and 2009-2010
                            as we received grants from Dept. of International Development, Govt. of UK (DFID)
                            and State Aids Control Society (A.P.SACS), etc. We have conducted various training
                            programs, arranged ground level local body discussions, community events, advocacy
                            meetings at various rural centers particularly for the welfare of poor and weaker
                            sections, women and children, Schedule caste and tribes.</p>
                        <p>
                            CTRD has 12-A and 80-G tax exemption certificates as well as approved under the
                            Foreign Certification Regulation Act (FCRA). Our Board of Directors are seniors,
                            expert academicians, Doctors, and Entrepreneurs from across the world.</p>
                        <p>
                            <b>The objectives of CTRD are:</b>
                        </p>
                        <p>
                            <ol>
                                <li>To provide Free digital teaching and learning resources for students, teachers and
                                    schools catering to economically weaker sections and government schools in Visakhapatnam,
                                    Vizianagaram and Srikakulam districts or any part of India.</li>
                                <li>To organize academics and institutions for younger generation to impact social,
                                    scientific and engineering skills through information system of education for self-employment
                                    and self-sustenance.</li>
                                <li>To undertake research studies on social, economic and political problems of the
                                    State of Andhra Pradesh, Telangana and any other state in the country with a view
                                    to examine the national priorities, policies and programs and their relevance.</li>
                                <li>To work for the socio – economic and cultural development of the weaker sections
                                    of the society.</li>
                                <li>To organize, promote, advice, administer and initiative various people’s organizations
                                    that are formed for socio – economic and cultural development.</li>
                                <li>To organize training programs for social workers and people involved in the governance
                                    of the country.</li>
                                <li>To act as liaison between unemployed youth and various employing agencies, both
                                    private and public.</li>
                                <li>To assist in coordinating the activities of and to work in co-operation with people’s
                                    organizations and other associations or institutions within the area of operation
                                    of the society this subscribes to the same objectives.</li>
                                <li>To disseminate information which is relevant to the furthering any of our objective.</li>
                                <li>To take up S.C & B.C Tribal Welfare Programmes.</li>
                                <li>To take up Women & Child Welfare Programmes.</li>
                                <li>All the above objectives are incorporated without any profit motive.</li>
                            </ol>
                        </p>
                        <p>
                            From 2013 onwards, we started a new initiative called Grameena Vidya which provides
                            digital education through our “Adopt a School Program” for rural and inner-city
                            schools or to the economically weaker sections. Grameena Vidya (www.grameenavidya.org)
                            provides supplemental learning resources for teaching and learning with a primary
                            focus on reducing digital divide thru education. We believe reducing digital divide
                            will reduce economic and social inequality. Education is perhaps the most important
                            variable for economic growth. About 80% of school going children and schools are
                            in rural areas and they are beset with poor infrastructure, social and economic
                            deprivation, low quality of learning and teaching.
                        </p>
                        <p>
                            <b>Our goal therefore, is </b>
                        </p>
                        <p>
                            <ol>
                                <li>To improve quality of learning for students,</li>
                                <li>To assist teachers</li>
                                <li>To reduce digital divide that can in turn reduce economic and social inequality.</li>
                            </ol>
                        </p>
                        <p>
                            Digital or smart education using ICT technologies can reach masses in a cost effective
                            manner, several studies have indicated that any project in digital education for
                            a country like India will yield the highest social return on investment (ROI), than
                            any other private or government project.
                        </p>
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
