<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="about-background.aspx.cs" Inherits="AboutUS_about_background" %>




<%@ Register src="../Controls/Aside_right.ascx" tagname="Aside_right" tagprefix="uc1" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          //$("#lbAbout").addClass("activelink");
          $("#lbHome2").addClass("activelink");


      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>

    <div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 adopt-left-block">
                        <!-- progaram detail start -->
                        <h1 class="page-heading">
                            About Grameena Vidya
                        </h1>
                        <h3>VIDYA DHAAN</h3>
                        <p>
                            <b>GRAMEENA VIDYA</b> or rural education is an initiative of “Center for Training, Research and Development” (CTRD) a non-profit NGO. Our primary goal is to 
                            <b>REDUCE DIGITAL AND GENDER DIVIDE</b>. The “Digital Divide” is defined as the gap between those with regular, effective access and ability to use digital technologies and those without. </p>

                        <p>
                            Digital Divide may be the defining divide between people as the 21st century progresses. Digital divide will continue to perpetuate the vicious cycle of inequalities on race, caste, gender, age, income, employment, urban-rural-local, and educational attainment. Therefore, at Grameena Vidya, we believe, this issue is not just as an economic or social divide, it is a civil and human rights divide as well.
                        </p>

                        <p><b>ADOPT-A-SCHOOL</b> and <b>ADOPT-A-STUDENT</b> are Grameena Vidya’s two flagship programs to “Bridge Digital Divide”. Individual Donors and Corporates thru CSR can sponsor and make a difference. Your VIDYA DHAAN (Donating for Knowledge) will make an immense difference in the beneficiary’s lives. 
                        </p>
                        <p>
                          <b>GIVING FOOD IS GREAT TYPE OF CHARITY, BUT GIVING OR FACILITATING KNOWLEDGE IS EVEN GREATER, IT LASTS A LIFE TIME.</b>
                        </p>
                        <p>
                          Bridging digital divide in India can go a long way to solving the problems of poverty and social inequality. Far too many Indians do not have access to technology in their homes or access to affordable high-speed broadband required to succeed in today’s economy and in turn impacting India’s competitiveness globally.  
                        </p>
                        <p>
                            Covid 19 has shown that bridging digital divide is more than a goal – it is a necessity. To navigate in today’s world, access to broadband and computing technology is a basic necessity like food, shelter, clothing, and electricity. Basic needs like Education, Healthcare, Government Services, and Employment are now digital. Government alone cannot solve this.
                        </p>
                        <p>Digital devices and broadband will empower children at the bottom of the pyramid especially girl child to receive quality education - bringing the school to the child, acquiring life skills that provide employability, employment, and entrepreneurship, while opening rural India and many socially deprived communities to the world, and at the same time bringing the world to them.</p>
                        <div class="pic">
                            <img src="../images/donet-pic.jpg" class="img-responsive" alt="">
                            &nbsp;</div>
                        <%--<div class="row">
                            <div class="col-md-12">
                                <h2>
                                    Background</h2>
                                <p>
                                    A lot has been achieved in the rural education sector. But the problems persist.
                                    Schools have been built, but many still lack teachers and appropriate teaching methods/aids.
                                    Access to computers, digital technologies and to customized content can bridge the
                                    digital divide between the rural and the urban students. Rural students can learn
                                    at the same quick pace as their city brethren. All of this can be done at 1/100th
                                    of the cost with very high Return on Investment (ROI) unlike any other project.</p>
                                <p>
                                    For rural children, digital devices – computer, mobile phone, tablet, etc. are an
                                    ally, a friend, a window to a new world. By empowering students with access to computing
                                    and the Internet, the learning experience can be made wholesome. Also digitized
                                    content can be used to bridge gaps in instruction at school. Finally, students could
                                    learn new skills, and realize their true potential. And, it makes a lot of economic
                                    sense as well, as the market is huge; >600,000 villages spread across India. Reducing
                                    digital divide will bring about a sea change in social and economic upliftment.</p>
                            </div>
                        </div>--%>
                    </div>
                    <!-- progaram detail close -->
                    <%--<uc1:Aside_right ID="Aside_right1" runat="server" />--%>
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

