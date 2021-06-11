<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Corparate.aspx.cs" Inherits="GVSchools.Sponsers.Corparate" %>

<%@ Register Src="~/Controls/FooterScriptsControl.ascx" TagName="FooterScript" TagPrefix="uc3" %>

<%@ Register src="../Controls/Aside_right.ascx" tagname="Aside_right" tagprefix="uc1" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbInvolve").addClass("activelink");
          $("#divAbout").hide();

      });
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>
    

     <div class=""><!--  Main-container section -->
  <div class="causes">
    <div class="container">
      <div class="row">
        <div class="col-md-8 page-heading"> <!-- progaram detail start -->
       <h1 class="page-heading">Type of Sponsers
         
         </h1>    
           <ul class="nav nav-tabs">
                                    <li ><a href="#Individual" data-toggle="tab" style="font-size: 15px;">
                                    Individual</a></li>
                                <li><a href="#Government" data-toggle="tab" style="font-size: 15px;">Government</a></li>
                                <li class="active"><a href="#Corparate" data-toggle="tab" style="font-size: 15px;">Corporate</a></li>
                                </ul>
		
           
		
          <div class="tab-content product-tab">
                                    <div class="tab-pane fade " id="Individual">
                                       <p>
                                    Individuals can Adopt-a-school(s) or Adopt-a-village(s). They can sponsor by directly
                                    making a payment on the portal, sending a check or by contacting us directly.</p>
                                <p>
                                    They can Adopt-a-School by picking from our list or they can suggest a school. Grameena
                                    Vidya team will provide the selected school with smart class hardware, software
                                    and curriculum specific content in addition we will train the teachers and provide
                                    continuous support each student in the school will also be provided online access
                                    to class specific, subject specific multimedia content that is personalized and
                                    to help students learn at their own place at home a or anywhere outside school at
                                    anytime.</p>
                                <p>
                                    The kind gesture of the donors is immensely appreciate and recognized. The sponsor
                                    will receive a thank you gift –
                                </p>
                                <div class="col-md-12 indi-list">
                                    <!-- Orderd start -->
                                    <ol>
                                        <li>A Glass Plaque.</li>
                                        <li>A certificate of appreciation..</li>
                                        <li>They can avail guided tours of the school if they like to visit.</li>
                                        <li>2 video calls with the students and administration of the school – most donors feel
                                            it is a very fulfilling experience. </li>
                                        <li>Photographs of the smart class rooms and school.</li>
                                        <li>Students’ achievement and outcome information will be forwarded.</li>
                                        <li>Tax benefit documents and more. </li>
                                    </ol>
                                </div>
                                <p>
                                    All of this information will be made available on the portal dashboard once they
                                    log-in.</p>
                                    </div>
                                    <div class="tab-pane fade" id="Government">
                                     <p>
                                Government can use Grameena Vidya through their existing programs or launch a new
                                program to take quality learning to the grassroots. This will certainly have tremendous
                                outreach, reduce digital divide and therefore economic and social inequalities,
                                and overcome the constraints of investing in physical infrastructure and contribute
                                to economic growth and social development. Grameena Vidya is willing to partner
                                with Governments on a PPP (Public – Private Partnership) basis.</p>
                                    </div>
                                    <div class="tab-pane active fade in" id="Corparate">
                                       <p>
                                Corporate businesses can Adopt-a-school or schools or Adopt-a-village either directly
                                or as a part of CSR (Corporate Social Responsibility). Businesses can directly contact
                                our representatives to discuss an execution plan.
                            </p>
                            <div class="pic">
                                <img src="../images/corporate.jpg" class="img-responsive" alt="">
                            </div>
                            <div class=" clearfix">
                        </div>
                        <br />
                        <center>
                            <h2>
                                Corporate Donor – Corporate Social Responsibility</h2>
                        </center>
                       
                        <center>
                            <h3>
                                "Education is perhaps the single biggest threat to the future of India’s prosperity."</h3>
                        </center>
                        <h3>
                            Grameena Vidya - Champions of Education Program</h3>
                        <p>
                            Grameena Vidya (an initiative of Center for Training, Research and Development –
                            CTRD) innovative Champions of Education program enables a select group of sponsors
                            to help underwrite school’s smart classrooms - digital teaching and learning content,
                            software and administrative technologies. In addition to giving the highest ROI
                            than any other school project, Grameena Vidya Champions of Education program provides
                            educational and motivational content that students, parents and teachers can access
                            in school and at home. Content is class-wise in different subjects, different formats,
                            different languages, and both online and offline anywhere and anytime.
                        </p>
                        <p>
                            Grameena Vidya carefully selects corporate sponsors in accordance to a strict screening
                            process.
                        </p>
                        <h3>
                            Grameena Vidya provides School, Teaching and Learning Content & Technologies</h3>
                        <p>
                            Grameena Vidya is an Education Services Non Profit Non Government Organization (NGO)
                            that caters to all the needs of K-10 Schools. We provide - a portfolio of curriculum
                            specific teaching and learning digital content and technologies, professional development
                            for teachers and school administrators and continuous support.
                        </p>
                        <p>
                            We empower rural and inner-city schools to improve communication, collaboration
                            and achievement. Dedicated to serving India’s bottom of the pyramid schools, we
                            are in the business of helping students, teachers, administrators and parents at
                            the grass root level achieve more.
                        </p>
                        <p>
                            Reducing digital divide and in turn social and economic inequalities is our goal.
                            We believe for a child to compete in the 21st century, technology literacy is as
                            important as general literacy. At Grameena Vidya we believe the most important function
                            of schools is to prepare kids for the 21st century. We believe technology is a kind
                            of amplifier that lets you learn the content faster and lets you master the skills
                            more deeply.
                        </p>
                        <h3>
                            Champions of Education Integrity Policy</h3>
                        <p>
                            Grameena Vidya seeks underwriting relationships only from organizations that embrace
                            high ethical and educational values.</p>
                        <p>
                            For example, Grameena Vidya will not accept underwriting relationships:
                            <ul class="adopt-list">
                                <li>from brands of alcohol, tobacco, firearms or other controlled substances; </li>
                                <li>relating to family planning issues; </li>
                                <li>for controversial political or religious issues; </li>
                                <li>for media with age limitations (e.g.: R or A movies; 'parental advisory' music,
                                    video or television programming). </li>
                            </ul>
                        </p>
                        <p>
                            In addition, we will require sponsor-related content, other than corporate overview
                            information, that appears on company website to be informational, motivational or
                            educational in nature.
                        </p>
                        <p>
                            Grameena Vidya reserves the right to amend or discontinue an underwriting relationship
                            at any time.</p>
                        <p>
                            Corporations or schools interested in learning more about the benefits of the Champions
                            of Education program should contact Grameena Vidya at info@grameenavidya.org or
                            Ph: +91 8008 525252
                        </p>

                                    </div>
                                   
                                </div>
		 
		 
		 
		 
        </div>
        <!-- progaram detail close -->
      <uc1:Aside_right ID="Aside_right1"  runat="server" />
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
