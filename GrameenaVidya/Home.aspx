<%@ Page Title="" MetaDescription="Grameena vidya is a non profit organization in India provides quality digital education and assessments to the rural and urban government schools, helping students to achieve their  goals. Adopt a school to convert rural and urban government schools into model schools." Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register src="Controls/Banner.ascx" tagname="Banner" tagprefix="uc1" %>
<%@ Register src="~/Controls/Campaign.ascx" tagname="Campaign" tagprefix="uc2" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script type="text/javascript">

    $(document).ready(function () {

        //alert("hai..");
        // $("#OutSideMenu1_lbHome").addClass("active");
        $("#lbHome").addClass("activelink");


    });
    </script>
    <style>
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   




    
<!-- header section end --> 

<!-- banner start -->
<div class="banner">
    
    
    
 
    
    
 <uc1:Banner ID="Banner2" runat="server" />
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>

<!-- banner close --> 


<!-- Service start -->
<div class="service">
  <div class="container">


     <div class="row">
      <div class="col-md-12">
        <h1>Welcome to Grameena Vidya</h1>
          <p class="lead-font">
GRAMEENA VIDYA or rural education is an initiative of “Center for Training, Research and Development” (CTRD) a non-profit NGO. Our primary goal is to REDUCE DIGITAL AND GENDER DIVIDE. The “Digital Divide” is defined as the gap between those with regular, effective access and ability to use digital technologies and those without.</p>
          <p class="lead-font">
Digital Divide may be the defining divide between people as the 21st century progresses. Digital divide will continue to perpetuate the vicious cycle of inequalities on race, caste, gender, age, income, employment, urban-rural-local, and educational attainment. Therefore, at Grameena Vidya, we believe, this issue is not just as an economic or social divide, it is a civil and human rights divide as well.</p>
          <p class="lead-font">
ADOPT-A-SCHOOL and ADOPT-A-STUDENT are Grameena Vidya’s two flagship programs to “Bridge Digital Divide”. Individual Donors and Corporates thru CSR can sponsor and make a difference. Your VIDYA DHAAN (Donating for Knowledge) will make an immense difference in the beneficiary’s lives.<a href="AboutUS/about-background.aspx" style="font-size:14px; color:#FF9900;"><u>Read more</u></a></p>
          <p class="lead-font" style="font-weight:bold;text-align:center"><div class="pr-highlight"><b>
GIVING FOOD IS A GREAT TYPE OF CHARITY, BUT GIVING OR FACILITATING KNOWLEDGE IS EVEN GREATER, IT LASTS A LIFE TIME.  </b></div>
</p>
      </div>
    </div>
    <div class="service-blk">
       <h1>Programs</h1>
      <div class="row">
          <div class="col-md-6">
             
                <div class="text">
                  <h3><a href="Programs/adopt-a-school.aspx">Adopt-a-School</a></h3>
                     <div class="programs-icon i1"></div>
                 <p >
                     ADOPT-A-SCHOOL initiative is a Digital / Smart Classroom program. It will help transform regular schools into digital schools and then into data driven schools. It is a combination of computing hardware + broadband + software + curriculum aligned multimedia content + teacher training + continuous support + generating intelligent reports. Our focus is to adopt bottom of the pyramid schools or Government schools , .. 
                      <a href="Programs/adopt-a-school.aspx"
                          style="font-size: 14px; color: #FF9900;"><u>Read more</u></a>
                  </p>
              </div>
          </div>
        <div class="col-md-6">
           
                <div class="text">
            <h3><a href="Programs/adopt-a-student.aspx">Adopt-a-Student</a></h3>
                    <div class="programs-icon i2"></div>
           <p >ADOPT-A-STUDENT initiative provides Internet-connected Computing Device for each student who are on the wrong side of the digital divide -- disadvantaged due to -- income, education, race, gender, geographic location (urban-rural), age, skills, awareness, political, cultural and psychological attitudes gaps. Our focus is to adopt students at the bottom of the pyramid; especially those identified through government issued socio-economic certification  ... <a href="Programs/adopt-a-student.aspx" style="font-size:14px; color:#FF9900;"><u>Read more</u></a></p></div>
        
        </div>


      </div>
     
    </div>
  </div>
</div>
<!-- Service close --> 




<div class="donate-home row" style="display:none">

      
    <div class="stuA">
<div class ="container" id="st-adpt">
    <h1 class="headings">Students Adopted Stats</h1>
        <div class="row">


            <div class="stat">
                <div class="first">
                    <div class="stats-icon-w3pvt">
                    <span class="fa fa-graduation-cap"></span>
                    </div>
                    <div>
                    <p class="counter font-weight-bold text-bl">14258</p>
                    </div>
                </div>
                <div class="second">
                <p class="text-colors mt-2">Students Adopted</p>
                </div>
            </div>


        <div class="stat">
            <div class="first">
            <div class="stats-icon-w3pvt">
                <span class="fa fa-female"></span>
            </div>
            <div>
                <p class="counter font-weight-bold text-bl">9891</p>
            </div>
        </div>
            <div class="second">
            <p class="text-colors mt-2">Girl Child</p>
        </div>
        </div>
        <div class="stat">
            <div class="first">
            <div class="stats-icon-w3pvt">
                <span class="fa fa-laptop"></span>
            </div>
            <div>
                <p class="counter font-weight-bold text-bl">8772</p>
            </div>
        </div>
            <div class="second">
            <p class="text-colors mt-2">Laptops</p>
        </div>
        </div>
        <div class="stat">
            <div class="first">
            <div class="stats-icon-w3pvt">
                <span class="fa fa-tablet"></span>
            </div>
            <div>
                <p class="counter font-weight-bold text-bl">431</p>
            </div>
        </div>
            <div class="second">
            <p class="text-colors mt-2">Tablets</p>
        </div>
        </div>
        <div class="stat">
            <div class="first">
            <div class="stats-icon-w3pvt">
                <span class="fa fa-thumbs-o-up"></span>
            </div>
            <div>
                <p class="counter font-weight-bold text-bl">256000</p>
            </div>
        </div>
            <div class="second">
            <p class="text-colors mt-2">Multmedia content</p>
        </div>
        </div>
        </div>
    </div>
    </div>

    </div>


   
<!--  things section start -->
<div class="gv-modal" style="display:none">
  <div class="container">
    <div class="row">

    <div class="col-md-6">
    <h1>Modal</h1>
        <img class="img-how-it-works" src="images/grameena-modal.jpg" />
        <p>The eco-system required is:<br />
A data center and a web portal
Any portable device (laptop, tablet or mobile phones along with a projector and basic interactive devices) that can access educational content
Wired or wireless connections network / broadband (2G, 3G or 4G) to ride the connectivity wave
Multimedia content and assessments that is curriculum specific and caters to different subjects / classes and vocational software for both teachers and students
The Sponsors – Individuals, Corporates and Government. </p>
    
    </div>

     <div class="col-md-6">
    <h1>How It Works</h1>
       <img class="img-how-it-works" src="images/how-it-works.jpg" />
    </div>
   
   <%--   <uc2:Campaign ID="Campaign1" runat="server" />--%>
    
    </div>
  </div>
</div>

<div class="donate-home row" >
    <div class="container text-center">
        <img src="images/slide2.png" />
    </div>
</div>


    <div class="pr-list-tables">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <table>
                        <thead>
                            <tr><td>STUDENTS ADOPTED</td></tr>
                        </thead>
                        <tbody>
                            <tr><td>14258 Students</td></tr>
                            <tr><td>9891 Girl Child</td></tr>
                            <tr><td>8757 laptops</td></tr>
                            <tr><td>5501 Tablets</td></tr>
                            <tr><td>156000 Students given Curriculum Aligned Multimedia Content</td></tr>
                        </tbody>
                    </table>
                </div>

                 <div class="col-md-4">
                    <table>
                        <thead>
                            <tr><td>SCHOOLS ADOPTED</td></tr>
                        </thead>
                        <tbody>
                            <tr><td>Adopted 5600 Schools</td></tr>
                            <tr><td>Provided 4600 Smart classrooms with Hardware</td></tr>
                            <tr><td>Provided 5600 Schools with Curriculum Aligned Multimedia Content</td></tr>
                            <tr><td>Trained over 40000 Teachers</td></tr>
                            <tr><td></td></tr>
                        </tbody>
                    </table>
                </div>

                 <div class="col-md-4">
                    <table>
                        <thead>
                            <tr><td>AWAITING TO BE ADOPTED</td></tr>
                        </thead>
                        <tbody>
                            <tr><td>6200 Students</td></tr>                            
                            <tr><td>4332 Girl Child</td></tr>
                            <tr><td>290 Schools</td></tr>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


<div class="gv-gallery">
    <div class="container">
        <div class="row">
        
    <div class="col-md-4">
        <h1>Donors</h1>
        
        <div class="individual">
             <h3>Individual Donors</h3>
            <marquee direction="up">
            <span class="name">Dr. Rama Krishna Dhanekula</span>
        <span class="details">Doctor, Vijayawada</span>
        

        <span class="name">Mr. Bhaskar Vempaty</span>
        <span class="details">IT Professional, Hyderabad</span>
        

        <span class="name">Dr. Usha Vempaty</span>
        <span class="details">Doctor, Hyderabad</span>
        

        <span class="name">Dr. Shaik Suleman</span>
        <span class="details">Government, New Delhi</span>

 <span class="name">Mr. Radha Krishna Kakkarla</span>
     <span class="details">IT Professional, Hyderabad</span>

 <span class="name">Ms. Seeta Jagathiani</span>
        <span class="details">Home Maker, Visakhapatnam</span>

 <span class="name">Ms. Radhika Ponnula</span>
        <span class="details">IT Professional, Hyderabad</span>
 <span class="name">Prof. Sarada Devi</span>
        <span class="details">Retired Professor, Visakhapatnam</span>
<span class="name">Prof. L.K. Mohana Rao</span>
        <span class="details">Retired Professor, Vijayawada</span>
<span class="name">Mr & Mrs. Srinivas Maddala</span>
         <span class="details">IT Professional, Atlanta, USA</span>
                </marquee>
        <div class="more">
            <a class="btn btn-info" href="#">More</a>
        </div>

        </div>


        <div class="individual">
             <h3>Corporate Donors</h3>

             <marquee direction="up">
                <span class="name">Aurobindo Pharma, Srikakulam</span><br />
                <span class="name">RINL, Visakhapatnam</span><br />
                <span class="name">WNS , Visakhapatnam</span><br />
                <span class="name">Divis Pharmaceuticals, Visakhapatnam / Hyderabad</span><br />
                <span class="name">Tata Consultancy Services Ltd</span>
 <span class="name">Cyiant, Visakhapatnam</span><br />
                <span class="name">Esai, Visakhapatnam</span><br />
                <span class="name">ONGC, Rajahmundry</span><br />
                <span class="name">Vishnu Chemicals,  Visakhapatnam</span><br />
                <span class="name">Varun Group, Visakhapatnam</span><br>
<span class="name">Naval Dockyard, Visakhapatnam</span>
             </marquee>
        <div class="more">
            <a class="btn btn-info" href="#">More</a>
        </div>
        </div>

        
        
    </div>
   
    <div class="col-md-8 home-adopted-blocks">
        <h1>Beneficiaries </h1>
       
        <div class="row">
            <div class="col-md-6">
            <h3>Adopted Schools</h3>
                  <marquee direction="up">
                
                       <div class="pic"><a><img src="images/photo-gallery/au/3.jpg" class="img-responsive" alt=""></a></div>
                <span class="name">Godrej Consumer Products Ltd.</span><br />
                       <div class="pic"><a><img src="images/bck6.jpg" class="img-responsive" alt=""></a></div>
                <span class="name">Cisco Systems India Pvt. Ltd.</span><br />
                      
            <div class="pic"><a><img src="images/bck5.jpg" class="img-responsive" alt=""></a></div>
                <span class="name">Indian Oil Corporation Ltd.</span><br />
 <div class="pic"><a><img src="images/GVstu4.jpeg" class="img-responsive" alt=""></a></div>
                <span class="name">Tata Consultancy Services Ltd</span>
                     
           
             </marquee>     
                </div>  
     

                
             <div class="col-md-6">
            <h3>Adopted Students</h3>
             <marquee direction="up">
               <div class="pic"><a><img src="images/bck3.jpg" class="img-responsive" alt=""></a></div>
            <div class="pic"><a><img src="images/p_pic-5.jpg" class="img-responsive" alt=""></a></div>
            <div class="pic"><a><img src="images/GVstu10.jpeg" class="img-responsive" alt=""></a></div>
  <div class="pic"><a><img src="images/GVstu7.jpeg" class="img-responsive" alt=""></a></div>
             </marquee>   
            </div>
                    </div>
          
    </div>

          
        </div>
    </div>

</div>

<!--  testimonials section -->
<div class="testimonials-gv event-strips">
  <div class="container">
    <div class="row">
      <div class="row ">
      <div class="col-md-4">
        <div class="">          
          <h2>Event/Media </h2>
          <div class="pic"><a href="Programs/media.aspx"><img src="images/media/cyinet-gv(1).jpg" class="img-responsive" alt=""></a></div>
          <p> Minister of HRD Smt.Smriti Irani and Minister of Rural Development Venkaiah Naidu...<a href="Programs/media.aspx"><Small style="color:Green;">Watch Events</Small></a></p>
         
        </div>
      </div>
      <div class="col-md-4">
        <div class=" ">
          <h2>Photo Gallery</h2>
          <div class="pic"><a href="Programs/photo-gallery.aspx"><img src="images/photo-gallery/au/3.jpg" class="img-responsive" alt=""></a></div>          
          <p>Andhra University Vice Chanceller MR GSN Raju Garu Inaugurated...<a href="Programs/photo-gallery.aspx"><Small style="color:Green;">View Gallery</Small></a> </p>
        
        </div>
      </div>
      <div class="col-md-4">
        <div class="">
          <h2>Video Testimonials </h2>
          <div class="pic"><a href="Programs/video-gallery.aspx"><img src="images/Testmonials/prasad-garu.jpg" class="img-responsive" alt=""></a></div>          
          <p>Video Testimonials Describing Grameena vidya and benifits of smart class room...<a href="Programs/video-gallery.aspx"><Small style="color:Green;">View Testmonials</Small></a></p>
         
        </div>
      </div>
      
    </div>

    </div>
  </div>
</div>
<!--  testimonials section close --> 


<!--Footer-->

<script src="js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
<script src="js/script.js"></script> 
<script src="js/owl.carousel.js"></script>
<script>

    $("#bcrumbs").hide();
    //  document.getElementById("bcrumbs").style.display = "none";
</script>


<!-- Smartsupp Live Chat script -->

<script type="text/javascript">

    var _smartsupp = _smartsupp || {};

    _smartsupp.key = 'a7ed710d609fee0dc878cefd5f133ee123f7b6aa';

    window.smartsupp || (function (d) {

        var s, c, o = smartsupp = function () { o._.push(arguments) }; o._ = [];

        s = d.getElementsByTagName('script')[0]; c = d.createElement('script');

        c.type = 'text/javascript'; c.charset = 'utf-8'; c.async = true;

        c.src = 'https://www.smartsuppchat.com/loader.js?'; s.parentNode.insertBefore(c, s);

    })(document);

</script>
</asp:Content>


