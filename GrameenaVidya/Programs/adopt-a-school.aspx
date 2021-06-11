<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="adopt-a-school.aspx.cs" Inherits="Programs_adopt_a_school" %>



<%@ Register src="../Controls/Aside_right.ascx" tagname="Aside_right" tagprefix="uc1" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>

<%@ Register src="~/Controls/DonateControl.ascx" tagname="DonateControl" tagprefix="uc4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

  <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbSchool").addClass("activelink");
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
                <div class="">
                    <div class="col-md-7 adopt-left-block">
                        <!-- progaram detail start -->
                        <h1 class="page-heading">
                            Adopt-a-School
                            <%--  <a href="http://www.teachlearnweb.com/Features/Students/Default.aspx" target="_blank" class="btn btn-yellow btn-right">View Schools</a>--%>
                        </h1>
                        <div class="pic">
                            <img src="../images/adopt-a-school.jpg" alt="Alternate Text" class="img-responsive" />
                        </div>
                         <p>
                        ADOPT-A-SCHOOL initiative is a Digital / Smart Classroom program. It will help transform regular schools into digital schools and then into data driven schools. It is a combination of computing hardware + broadband + software + curriculum aligned multimedia content + teacher training + continuous support + generating intelligent reports. Our focus is to adopt bottom of the pyramid schools or Government schools.</strong></p>
                        <p>
                            <b>Benefits:</b> This program will generate measureable improvement and positive outcomes - improving school enrollment, student attendance, quality teaching, improved learning outcomes, reduce academic gaps within the class cohort and increase school retention and reduce school drop-outs. One Smart Classroom can cater to at least 4 grade levels. Sponsoring your own alma meter or Government, or rural or an inner-city school will generate the highest Social Return on Investment. <b>This is Vidya Dhaan</b>.

                        </p>
                        <p><b>
                            Individuals or Corporate can Adopt-a-School by sponsoring one or multiple Digital / Smart Classrooms. Each Smart Classroom costs Rs 180000/- (One Lakh Eighty thousand rupees) or USD 2500/- (Two thousand five hundred US dollars based on current exchange rates). This sponsorship (donation) can be paid is full or 4 monthly installments. <a href="../Donate/Donate.aspx" class="btn btn-link">Donate Now</a> 
                           </b>

                        </p>
        <p>
            This above sponsorship will cover for 3 years of installation and continues support of Smart or Digital Classroom:
              <ul style="padding-left:50px">
                <li style="list-style:inherit">	Computing Hardware</li>
<li style="list-style:inherit">	Computing and Mobile Software</li>
<li style="list-style:inherit">Broadband</li>
<li style="list-style:inherit">Multimedia Curriculum Aligned Content for all Grades</li>
<li style="list-style:inherit"> Training</li>
<li style="list-style:inherit">Digital Classroom Usage Reports</li>
<li style="list-style:inherit"> Support of all above for 3 years.</li>

            </ul>

        </p> 
                      <p>
                          For additional information about donation please contact us – info@grameenavidya.org or +91 7702444575
                      </p>
<!-- Testimonial slides -->   
<a name="testimonial"></a>
<div class="container pr-testimonials" style="display:none">
	<div class="row">
		<div class="col-sm-12">
        <h3><strong>Testimonial</strong></h3>
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
                        <a name="form"></a>
<div class="container sub-form" style="display:none">
    <div class="row">
        <h1>Adopt a School Form</h1>
        <div class="col-md-12">

            
        <form>

            <div class="form-group row">
            <label for="text1" class="col-md-4 col-form-label">Name of the School</label> 
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
                        <a name="listofschools"></a>
                        
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
                        
                        
                        
                        
                        
                        
                       <%-- <h2>
                            Why Adopt-a-School?</h2>
                       
                        <br />
                        <h2>
                            What does Adopt-a-School Program entail?</h2>
                        
                        <br />
                        <h2>
                            How does Adopt-a-School Program work?</h2>
                        
                        <br />--%>
                    </div>
                    <!-- progaram detail close -->
                    <div class="col-md-5 right-sidebar" id="divaside">
                    <uc4:DonateControl ID="DonateControl1" runat="server" />
     </div>  
                   
                        <!-- progaram detail close -->
                
                </div>
                    <!-- sidebar section dending -->
                </div>
            </div>
        </div>
  
    <script>
        $("#<%=hfDCPage.ClientID%>").val("3");
			var hash = window.location.hash,
				current = 0,
				demos = Array.prototype.slice.call( document.querySelectorAll( '#codrops-demos > a' ) );
			
			if( hash === '' ) hash = '#set-1';
			setDemo( demos[ parseInt( hash.match(/#set-(\d+)/)[1] ) - 1 ] );

			demos.forEach( function( el, i ) {
				el.addEventListener( 'click', function() { setDemo( this ); } );
			} );

			function setDemo( el ) {
				var idx = demos.indexOf( el );
				if( current !== idx ) {
					var currentDemo = demos[ current ];
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
   <asp:HiddenField ID="hfDCPage" runat="server" Value="3" />
</asp:Content>

