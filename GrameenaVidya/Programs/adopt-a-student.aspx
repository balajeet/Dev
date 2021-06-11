<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/OutSideMaster.master" CodeBehind="adopt-a-student.aspx.cs" Inherits="GrameenaVidya.Programs.adopt_a_student" %>

<%@ Register src="../Controls/AsideStu_right.ascx" tagname="AsideStu_right" tagprefix="uc1" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>
<%@ Register src="~/Controls/DonateControl.ascx" tagname="DonateControl" tagprefix="uc4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbStudent").addClass("activelink");
          $("#divAbout").hide();

      });
    </script>
<%--
<link rel="stylesheet" type="text/css" href="../css/default.css" />
<link rel="stylesheet" type="text/css" href="../css/component.css" />--%>
<script src="../js/modernizr.custom.js"></script>	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>


  <div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container-fluid">
                <div class=" ">
                    <div class="col-md-7 adopt-left-block">
                        <!-- progaram detail start -->
                        <h1 class="page-heading">
                            Adopt-a-Student</h1>
                        <div class="pic">
                               <img src="../images/adopt-a-student.jpeg" alt="Alternate Text" class="img-responsive" />
                        </div>
                           <p>
                      ADOPT-A-STUDENT initiative provides Internet-connected Computing Device for each student who are on the wrong side of the digital divide -- disadvantaged due to -- income, education, race, gender, geographic location (urban-rural), age, skills, awareness, political, cultural and psychological attitudes gaps. Our focus is to adopt students at the bottom of the pyramid; especially those identified through government issued socio-economic certification. 
                        </p>
                        <p>
                            This 1:1 student to broadband enabled device program will support: 
                               <ul style="padding-left:50px">
                <li style="list-style:inherit">	Online learning </li>
<li style="list-style:inherit">Differentiated instruction</li>
<li style="list-style:inherit">Project-based learning</li>
<li style="list-style:inherit">	Flipped classrooms</li>
<li style="list-style:inherit"> Enhances collaboration</li>
<li style="list-style:inherit">Practice communication in multiple formats</li>
<li style="list-style:inherit"> Acquire life skills </li>
                                   <li style="list-style:inherit"> A host of other instructional strategies.</li>

            </ul>
                        </p>
                        <p>
                            Unless students take devices home, there is little demonstrable impact on learning, since learning mostly continues outside schools. Your sponsorship will reduce the gaps in literacy, academic achievement, civic opportunity, economic, social and physical disability, especially among those students at the bottom of the pyramid – <b>Your sponsorship alone will help the student more than anything else. This is the greatest form of Vidya Dhaan. </b>
                        </p>
                        <p>
                           <b> Any Individual or Corporate can Adopt-a-Student(s) by sponsoring 1 or multiple students.</b> Every adopted student will be provided a broadband enabled Laptop or Tablet, or similar portable device. Usually Tablets will be given to students below 4th grade and Laptops for students above 4th grade
                        </p>
                        <p>
                            <b>
                                Adopt-a-student costs Rs 35000/- (Thirty five thousand rupees) or USD 500/- (Five hundred US dollars based on current exchange rates). This sponsorship (donation) can be paid is full or 4 monthly installments . <a href="../Donate/Donate.aspx" class="btn btn-link">Donate Now</a> 
                            </b>
                        </p>
                            <p>
                          For additional information about donation please contact us – info@grameenavidya.org or +91 7702444575
                      </p>
                       <%-- <p>
                            Therefore, the first step in transforming villages across India is by imparting
                            quality education thru smart classroom and smart schools to the masses in a cost
                            effective way. Digital education will transform villages into model villages that
                            can learn to easily adopt and adapt digital infrastructure, health care, cleanliness,
                            social justice, women empowerment, community services, etc. in the process make
                            their villages into Smart Villages.
                        </p>--%>
                        <div class="clearfix">
                        </div>
                        <div class="col-md-12" style="margin:5%"> </div>
               
       
<!-- Testimonial slides -->                        
<div class="container pr-testimonials" style="display:none">
	<div class="row">
		<div class="col-sm-12">
        <h3><strong>Testimonials</strong></h3>
        <div class="seprator"></div>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                  <div class="row" style="padding: 20px 20px 0 20px">
                    <button style="border: none;"><i class="fa fa-quote-left testimonial_fa" aria-hidden="true"></i></button>
                    <p class="testimonial_para">Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo en.</p><br>
                    <div class="row">
                    <div class="col-sm-2">
                        <img src="http://demos1.showcasedemos.in/jntuicem2017/html/v1/assets/images/jack.jpg" class="img-responsive" style="width: 80px">
                        </div>
                        <div class="col-sm-10">
                        <h4><strong>Jack Andreson</strong></h4>
                        <p class="testimonial_subtitle"><span>Chlinical Chemistry Technologist</span><br>
                        <span>Officeal All Star Cafe</span>
                        </p>
                    </div>
                    </div>
                  </div>
                </div>
               <div class="item">
                   <div class="row" style="padding: 20px 20px 0 20px">
                    <button style="border: none;"><i class="fa fa-quote-left testimonial_fa" aria-hidden="true"></i></button>
                    <p class="testimonial_para">Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo en.</p><br>
                    <div class="row">
                    <div class="col-sm-2">
                        <img src="http://demos1.showcasedemos.in/jntuicem2017/html/v1/assets/images/kiara.jpg" class="img-responsive" style="width: 80px">
                        </div>
                        <div class="col-sm-10">
                        <h4><strong>Kiara Andreson</strong></h4>
                        <p class="testimonial_subtitle"><span>Chlinical Chemistry Technologist</span><br>
                        <span>Officeal All Star Cafe</span>
                        </p>
                    </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="controls testimonial_control pull-right">
                <a class="left fa fa-chevron-left btn btn-default testimonial_btn" href="#carousel-example-generic"
                  data-slide="prev"></a>

                <a class="right fa fa-chevron-right btn btn-default testimonial_btn" href="#carousel-example-generic"
                  data-slide="next"></a>
              </div>
        </div>
	</div>
</div>



<!-- Adopt A School Form -->      
<div class="container sub-form" style="display:none">
    <div class="row">
        <h1>Adopt a Student Form</h1>
        <div class="col-md-12">

            
        <form>

            <div class="form-group row">
            <label for="text1" class="col-md-4 col-form-label">Name of the Student</label> 
            <div class="col-md-8">
            <input id="text1" name="text1" type="text" class="form-control">
            </div>
            </div>

            <div class="form-group row">
            <label for="textarea" class="col-md-4 col-form-label">Address & Contact Info</label> 
            <div class="col-md-8">
            <textarea id="textarea" name="textarea" cols="40" rows="5" class="form-control"></textarea>
            </div>
            </div>

            <div class="form-group row">
            <label for="text" class="col-md-4 col-form-label">Name of the Decision Maker</label> 
            <div class="col-md-8">
            <input id="text" name="text" type="text" class="form-control">
            </div>
            </div> 

            <h2>School Details:</h2>
            <div class="form-group row">          
                <div class="col-md-6">
                <label for="text" class="col-form-label">Curriculum</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>            
                <div class="col-md-6">
                <label for="text" class="col-form-label">Student Strength</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>
            </div> 

            <div class="form-group row">          
                <div class="col-md-6">
                <label for="text" class="col-form-label">No.of Girl Students</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>            
                <div class="col-md-6">
                <label for="text" class="col-form-label">No. Of Teachers</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>
            </div> 

            <div class="form-group row">          
                <div class="col-md-6">
                <label for="text" class="col-form-label">Private / Government School</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>            
                <div class="col-md-6">
                <label for="text" class="col-form-label">Average School Fee</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>
            </div> 

            <div class="form-group row">
            <label for="textarea" class="col-md-4 col-form-label">Socia Economic Background of Students</label> 
            <div class="col-md-8">
            <textarea id="textarea" name="textarea" cols="40" rows="5" class="form-control"></textarea>
            </div>
            </div>


            <div class="form-group row">
            <label for="text" class="col-md-4 col-form-label">How many Smart / Digital Classrooms?</label> 
            <div class="col-md-8">
            <input id="text" name="text" type="text" class="form-control">
            </div>
            </div> 

            <div class="form-group row">
            <label for="text" class="col-md-4 col-form-label">How many existing computers / Tabs for Students use?</label> 
            <div class="col-md-8">
            <input id="text" name="text" type="text" class="form-control">
            </div>
            </div> 

            <div class="form-group row">
            <label for="text" class="col-md-4 col-form-label">Do you have any On-line Classes?</label> 
            <div class="col-md-8">

          <div class="custom-control custom-checkbox custom-control-inline">
            <input name="checkbox" id="checkbox_0" type="checkbox" class="custom-control-input" value="yes"> 
            <label for="checkbox_0" class="custom-control-label">Yes</label>
          </div>


         <div class="custom-control custom-checkbox custom-control-inline">
            <input name="checkbox" id="checkbox_0" type="checkbox" class="custom-control-input" value="no"> 
            <label for="checkbox_0" class="custom-control-label">No</label>
          </div>



            </div>
            </div> 

            
            <div class="form-group row">
            <div class="offset-4 col-md-8">
            <button name="submit" type="submit" class="btn btn-primary">Submit</button>
            </div>
            </div>


        </form>
            </div>
    </div>
</div>


<!-- School Data -->  
                       
<table class="table table-striped table-bordered" style="display:none">
 <thead> <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr></thead>
    <tbody>
    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

        <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

        <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>
 </tbody>
</table>


                <div class="container">
    <div class="row">
       
             <div class="form-group row">
            <div class="offset-4 col-md-8">
             <a href="/Donate/Donate.aspx" class="btn btn-primary donate-btn">Donate Now</a>
            </div>
            </div>
       
    </div>
</div>  
                        
              
                    </div>
                    <div class="col-md-5 right-sidebar" id="divaside">
                    <uc4:DonateControl ID="DonateControl1" runat="server" />
     </div>  
                   
                        <!-- progaram detail close -->
                
                </div>
            </div>
        </div>
    </div>
 
        
    <script>
        $("#<%=hfDCPage.ClientID%>").val("4");
        
        var hash = window.location.hash,
				current = 0,
				demos = Array.prototype.slice.call(document.querySelectorAll('#codrops-demos > a'));

        if (hash === '') hash = '#set-1';
        setDemo(demos[parseInt(hash.match(/#set-(\d+)/)[1]) - 1]);

        demos.forEach(function (el, i) {
            el.addEventListener('click', function () { setDemo(this); });
        });

        function setDemo(el) {
            var idx = demos.indexOf(el);
            if (current !== idx) {
                var currentDemo = demos[current];
                currentDemo.className = currentDemo.className.replace(new RegExp("(^|\\s+)" + 'current-demo' + "(\\s+|$)"), ' ');
            }
            current = idx;
            el.className = 'current-demo';
        }
    </script>
    <script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>
     <asp:HiddenField ID="hfDCPage" runat="server" Value="4" />
</asp:Content>

