<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="GrameenaVidya.Donate.Donate"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.frb-group {
	margin: 15px 0;
}

.frb ~ .frb {
	margin-top: 15px;
}

.frb input[type="radio"]:empty,
.frb input[type="checkbox"]:empty {
	display: none;
}

.frb input[type="radio"] ~ label:before,
.frb input[type="checkbox"] ~ label:before {
	font-family: FontAwesome;
	content: '\f096';
	position: absolute;
	top: 50%;
	margin-top: -11px;
	left: 15px;
	font-size: 22px;
}

.frb input[type="radio"]:checked ~ label:before,
.frb input[type="checkbox"]:checked ~ label:before {
	content: '\f046';
}

.frb input[type="radio"] ~ label,
.frb input[type="checkbox"] ~ label {
	position: relative;
	cursor: pointer;
	width: 100%;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f2f2f2;
}

.frb input[type="radio"] ~ label:focus,
.frb input[type="radio"] ~ label:hover,
.frb input[type="checkbox"] ~ label:focus,
.frb input[type="checkbox"] ~ label:hover {
	box-shadow: 0px 0px 3px #333;
}

.frb input[type="radio"]:checked ~ label,
.frb input[type="checkbox"]:checked ~ label {
	color: #fafafa;
}

.frb input[type="radio"]:checked ~ label,
.frb input[type="checkbox"]:checked ~ label {
	background-color: #f2f2f2;
}

.frb.frb-default input[type="radio"]:checked ~ label,
.frb.frb-default input[type="checkbox"]:checked ~ label {
	color: #333;
}

.frb.frb-primary input[type="radio"]:checked ~ label,
.frb.frb-primary input[type="checkbox"]:checked ~ label {
	background-color: #337ab7;
}

.frb.frb-success input[type="radio"]:checked ~ label,
.frb.frb-success input[type="checkbox"]:checked ~ label {
	background-color: #5cb85c;
}

.frb.frb-info input[type="radio"]:checked ~ label,
.frb.frb-info input[type="checkbox"]:checked ~ label {
	background-color: #5bc0de;
}

.frb.frb-warning input[type="radio"]:checked ~ label,
.frb.frb-warning input[type="checkbox"]:checked ~ label {
	background-color: #f0ad4e;
}

.frb.frb-danger input[type="radio"]:checked ~ label,
.frb.frb-danger input[type="checkbox"]:checked ~ label {
	background-color: #d9534f;
}

.frb input[type="radio"]:empty ~ label span,
.frb input[type="checkbox"]:empty ~ label span {
	display: inline-block;
}

.frb input[type="radio"]:empty ~ label span.frb-title,
.frb input[type="checkbox"]:empty ~ label span.frb-title {
	font-size: 16px;
	font-weight: 700;
	margin: 5px 5px 5px 50px;
}

.frb input[type="radio"]:empty ~ label span.frb-description,
.frb input[type="checkbox"]:empty ~ label span.frb-description {
	font-weight: normal;
	font-style: italic;
	color: #999;
	margin: 5px 5px 5px 50px;
}

.frb input[type="radio"]:empty:checked ~ label span.frb-description,
.frb input[type="checkbox"]:empty:checked ~ label span.frb-description {
	color: #fafafa;
}

.frb.frb-default input[type="radio"]:empty:checked ~ label span.frb-description,
.frb.frb-default input[type="checkbox"]:empty:checked ~ label span.frb-description {
	color: #999;
}
</style>

<style>
    .checkbox {
  padding-left: 20px; }
  .checkbox label {
    display: inline-block;
    position: relative;
    padding-left: 5px; }
    .checkbox label::before {
      content: "";
      display: inline-block;
      position: absolute;
      width: 17px;
      height: 17px;
      left: 0;
      margin-left: -20px;
      border: 1px solid #cccccc;
      border-radius: 3px;
      background-color: #fff;
      -webkit-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
      -o-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
      transition: border 0.15s ease-in-out, color 0.15s ease-in-out; }
    .checkbox label::after {
      display: inline-block;
      position: absolute;
      width: 16px;
      height: 16px;
      left: 0;
      top: 0;
      margin-left: -20px;
      padding-left: 3px;
      padding-top: 1px;
      font-size: 11px;
      color: #555555; }
  .checkbox input[type="checkbox"] {
    opacity: 0; }
    .checkbox input[type="checkbox"]:focus + label::before {
      outline: thin dotted;
      outline: 5px auto -webkit-focus-ring-color;
      outline-offset: -2px; }
    .checkbox input[type="checkbox"]:checked + label::after {
      font-family: 'FontAwesome';
      content: "\f00c"; }
    .checkbox input[type="checkbox"]:disabled + label {
      opacity: 0.65; }
      .checkbox input[type="checkbox"]:disabled + label::before {
        background-color: #eeeeee;
        cursor: not-allowed; }
  .checkbox.checkbox-circle label::before {
    border-radius: 50%; }
  .checkbox.checkbox-inline {
    margin-top: 0; }

.checkbox-primary input[type="checkbox"]:checked + label::before {
  background-color: #428bca;
  border-color: #428bca; }
.checkbox-primary input[type="checkbox"]:checked + label::after {
  color: #fff; }

.checkbox-danger input[type="checkbox"]:checked + label::before {
  background-color: #d9534f;
  border-color: #d9534f; }
.checkbox-danger input[type="checkbox"]:checked + label::after {
  color: #fff; }

.checkbox-info input[type="checkbox"]:checked + label::before {
  background-color: #5bc0de;
  border-color: #5bc0de; }
.checkbox-info input[type="checkbox"]:checked + label::after {
  color: #fff; }

.checkbox-warning input[type="checkbox"]:checked + label::before {
  background-color: #f0ad4e;
  border-color: #f0ad4e; }
.checkbox-warning input[type="checkbox"]:checked + label::after {
  color: #fff; }

.checkbox-success input[type="checkbox"]:checked + label::before {
  background-color: #5cb85c;
  border-color: #5cb85c; }
.checkbox-success input[type="checkbox"]:checked + label::after {
  color: #fff; }
</style>
    <style>
        td.details-control {
    background: url('../images/details_open.png') no-repeat center center;
    cursor: pointer;
}
tr.shown td.details-control {
    background: url('../images/details_close.png') no-repeat center center;
}
        body p {
    text-align: center;
}
.donate-input
{
    background-color: white;
    border: 1px solid #cccccc;
    border-radius: 0;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset;
    box-sizing: border-box;
    color: rgba(0, 0, 0, 0.75);
    display: block;
    font-family: inherit;
    
    height: 3.3125rem;
    margin: 0 0 1rem;
    padding: 0.5rem;
    transition: box-shadow 0.45s ease 0s, border-color 0.45s ease-in-out 0s;
    width: 100%;        
    }
    
    .radio-check
    {
          
    
    m/argin-bottom: 10px;
    m/rgin-top: 10px;
    m/in-height: 20px;
    position: relative;     
    font-size:12px;
    font-weight:100;    
     margin-right:10px;
    }
    
    .donate-label
    {
        color:#666;
        font-weight:700;
        font-size:16px;
        margin-top:30px;
        margin-bottom:20px;
        
        }
        
        .radio label, .checkbox label
        {
            padding-left:3px;
            
            }
            
           
    
     .radio-check label
         {
             font-weight:normal;
         }
        .overlay3
        {
            background: transparent url(../images/overlay.png) repeat top left;
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
            height: 250px;
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
        
        .mylabel
        {
            padding: 5px;
            border: 1px solid #e5e5e5;
        }
        
        .radio-toolbar input[type="radio"]
        {
            display: none;
            cursor: pointer;
        }
        
        .radio-toolbar label
        {
            display: inline-block;
            padding: 6px 6px;
            cursor: pointer;
        }
        
        .radio-toolbar input[type="radio"]:checked + label
        {
            padding: 6px 6px;
            background-color: #7bae4e;
            cursor: pointer;
        }
        
        .sidebar-donate {
    background:#F8F8F8;
    border:1px solid #e5e5e5;
    border-radius: 4px;
    margin-bottom: 20px;
    padding: 20px 30px;
     font-size:14px;
    
}

   .sidebar-donate-blk {
    background:#e5e5e5;
    border:1px solid #d5d5d5;
    border-radius: 4px;
    margin-bottom: 20px;
    padding: 20px 30px;
     font-size:14px;
    
}
    </style>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="Stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css" />
<link rel="Stylesheet" href=" https://cdn.datatables.net/fixedcolumns/3.3.2/css/fixedColumns.dataTables.min.css" />
<link rel="Stylesheet" href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />
    <link href="../../CSS/donate.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container-fluid pr-donate-new">
    <div class="row">
            <div class="col-md-3">
                <div class="row">
                    <!-- How you can help box start -->
                    <div class="col-md-12">
                        <div class="sidebar-donate-blk">
                            <h3>Programs</h3>
                            <ul class="list-style">
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate.aspx" onclick="Javascript:CheckprogramType(1);">
                                    Adopt-a-School</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate.aspx" onclick="Javascript:CheckprogramType(2);">
                                    Adopt-a-Student</a></li>
                                <%--<li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Digital
                                    Libraries</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-Donar </a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-FAQ Libraries</a></li>--%>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="col-md-12 event-strips">
                        <div class="blk school-metric">
                            <h3>School Metrics</h3>
                            <marquee height="250" scrolldelay="150" direction="up">
                      <ul>
                      <li>India has <b>1.27 billion</b> people, 74% literacy rate.</li>
                      <li> World’s largest child and youth population is in India &ndash; <b>600 million</b> are below 24 years of age. (<b>480 million</b> child population)
                      There are <b>1.30</b> million schools in India.</li>
                      <li><b>220 million</b> students enroll in elementary schools every academic year, more than half drop out before class VIII. Only <b>55 million</b> are enrolled in secondary education (classes IX &ndash; XII)</li>
                      <li><b>96.7%</b> of the age <b>6-14</b> are enrolled in schools in rural India</li>
                      <li><b>120</b> million students are outside school.</li>
                      <li>There is a shortage of <b>700000</b> teachers countrywide.</li>
                      <li>Pupil &ndash; Teacher ratio is <b>49.3</b></li>
                      <li><b>9%</b> of the schools make do with 1 teacher who teaches multiple subjects and classes</li>
                      <li>Only <b>19%</b> of the students are enrolled in higher education (<b>80%</b> in USA and <b>28%</b> in China)</li>
                      <li><b>581</b> Universities and <b>35000</b> colleges enroll <b>20</b> million students in India. China has <b>1600</b> Universities and USA + Canada has over <b>9200</b> campuses.</li>
                      <li>During the past decade Government (State + Center) expenditure on education averaged <b>3.3</b> percent of the GDP.</li>
                      <li><b>53.4%</b> of the <b>5th</b> standard students surveyed could not read, write or solve arithmetic problems expected of children in 2nd standard.</li>
                      <li><b>25.4%</b> of the <b>8th</b> standard students could not read a <b>2nd</b> standard textbook.</li>
                      <li><b>32.5%</b> of the 2nd standard children cannot recognize letters as yet.</li>
                      <li>Percentage of schools with computers <b>19.6%</b></li>
                      <li><b>55.7%</b> of schools have usable girls toilets</li>
          
                      </ul></marquee>
                            <br>
                            <br>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-9 pr-steps">
        <div class="stepwizard col-md-12">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step"> <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                    <p>Choose Donation Type</p>
                </div>
                <div class="stepwizard-step"> <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                    <p>Donation Contact Info</p>
                </div>
                <div class="stepwizard-step"> <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                   
                     <p>Make Payment</p>
                </div>
                <div class="stepwizard-step"> <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                    <p>Preview </p>
                </div>
                <div class="stepwizard-step" style="display:none"> <a href="#step-5" type="button" class="btn btn-default btn-circle" disabled="disabled">5</a>
                    <p>Preview</p>
                </div>
            </div>
        </div>
        <form role="form" action="" method="post">
            <div class="row setup-content" id="step-1">
            <div class="col-md-12">
            <br />
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                          <ContentTemplate >
                          <div class="col-xs-6 " style="display:none">
                          
                                	<div class="frb frb-success">
						<input type="radio" id="radio-button-2" name="radio-button"  onclick="Javascript:SelectPackage(3);">
						<label for="radio-button-2">
							<span class="frb-title">Adopt-a- School</span>
							<span class="frb-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
						</label>
					</div>
                               </div>  
                                <div class="col-xs-6 " style="display:none">
                           
                                <div class="frb frb-success">
						<input type="radio" id="radio1" name="radio-button" onclick="Javascript:SelectPackage(4);">
						<label for="radio1">
							<span class="frb-title">Adopt-a- Student</span>
							<span class="frb-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
						</label>
					</div>
                                </div>
                                 </ContentTemplate>
                                  </asp:UpdatePanel>
                <fieldset>
  <legend>Adopt -a- School :</legend>
                    
                           <div class="row" id="dvPackageschool">

                           </div>
                    </fieldset>
                 <fieldset>
  <legend>Adopt -a- Student :</legend>
                     
                           <div class="row" id="dvPackagestudent" >

                           </div>
                    </fieldset>
                <fieldset>
  <legend>Other :</legend>
                     
                           <div id="dvPackagesother">

                           </div>
                    </fieldset>
                <br />
                 <div id="selectedforPay1"></div>
                <div class="buttons-panel">
                        <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
                    </div>
     </div>
              
            </div>
            <div class="row setup-content" id="step-6">
                <div class="col-xs-12">
                    <div class="col-md-12">
                        
                        <div class="box">
                            <div class="col-xs-12">
                    <div class="">
                        <div class="row" id="dvschool">
                            <div class="row">
                     <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                          <ContentTemplate>
                         
                                
                                 <div class="col-md-4">
                                	<div class="frb frb-primary">
						<input type="radio" id="radio2" name="school"   onclick="Javascript:Select(11);">
						<label for="radio2">
							<span class="frb-title">From GV Beneficiary</span>
							<span class="frb-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
						</label>
					</div>
                                
                                </div>
                         <div class="col-md-4"> 
                                
                                <div class="frb frb-primary">
						<input type="radio" id="radio3" name="school"   onclick="Javascript:Select(12);">
						<label for="radio3">
							<span class="frb-title">Random GV Beneficiary</span>
							<span class="frb-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
						</label>
                                
                                </div>
                          </div>
                                 
                         <div class="col-md-4">  
                                
                                 <div class="frb frb-primary">
						<input type="radio" id="radio4" name="school"   onclick="Javascript:Select(10);">
						<label for="radio4">
							<span class="frb-title">New GV Beneficiary</span>
							<span class="frb-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
						</label>
                                
                                </div>
                                
                                </div>
                       
                          
                                 
                           
                                 </ContentTemplate>
                                  </asp:UpdatePanel>
  
                    </div>
                    <hr />
                    <div class="row select-own-school mtb-20" id="dvNewSchool" style="display:none">
                       <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="textarea" class="control-label">Name of the School</label>
                                    <asp:TextBox ID="txtname" CssClass="form-control" cols="40" rows="5" TextMode="MultiLine" runat="server" placeholder="Enter School Name"></asp:TextBox>
                                
                            </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="textarea1" class="control-label">Address & Contact Info</label>
                               
                                <asp:TextBox ID="txtAddress" CssClass="form-control" TextMode="MultiLine" cols="40" rows="5"  runat="server" placeholder="Address "></asp:TextBox>
                            </div></div>
                           </div>
                            
                            <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea2" class="control-label">Name of the Decision maker</label>
                                <asp:TextBox ID="txtDmaker" runat="server"  CssClass="form-control" ></asp:TextBox>
                          
                            </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text" class="control-label">Contact Info of Decision Maker</label>
                                     <asp:TextBox ID="txtDmakercontact" runat="server"  CssClass="form-control" ></asp:TextBox>
                                </div></div>
                           </div>
                           
                              <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="text1" class="control-label">Email ID</label>
                                     <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control" ></asp:TextBox>
                                 </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text2" class="control-label">Curriculum</label>
                                     <asp:TextBox ID="txtCurriculum" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                           </div>  
                                                               
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text3" class="control-label">Student Strength</label>
                                     <asp:TextBox ID="txtNoofstudents" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text4" class="control-label">No.Of Girl Students</label>
                                     <asp:TextBox ID="txtNoofgirls" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                           </div>
                                                      
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text5" class="control-label">No.Of Teachers</label>
                                    <asp:TextBox ID="txtNoofteachers" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text6" class="control-label">Private / Government School</label>
                                     <asp:TextBox ID="txtTypeofschool" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                           </div>
                           
                      <div class="row">
                               <div class="col-md-6">  <div class="form-group">
                                <label for="text7" class="control-label">Average School Fee</label>
                                     <asp:TextBox ID="txtAvgschoolfee" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea3" class="control-label">Geographical Information</label>
                                    <asp:TextBox ID="txtGeoinfo" runat="server"  CssClass="form-control" ></asp:TextBox>
                            </div></div>
                           </div>
                          
                           
                             <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea4" class="control-label">Socio Economic Background</label>
                                     <asp:TextBox ID="txtSocio" runat="server"  CssClass="form-control" ></asp:TextBox>
                            </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text8" class="control-label">Student's Family Income Survey</label>
                                    <asp:TextBox ID="txtStudentfamilyincome" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                           </div>
                           
                                
                                 <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="text9" class="control-label">How many Computers in the school for student use?</label>
                                    <asp:TextBox ID="txtNoofcomputers" runat="server"  CssClass="form-control" ></asp:TextBox></div></div>
                               <div class="col-md-6">  </div>
                           </div>
                            
                             <div class="row">
                              <div class="col-md-6"><div class="form-group">
                                <label for="checkbox" class="control-label">Do you have any On-line Classes?</label>
                                <div>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox"  value="yes" /> Yes </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox" value="no"/> No </label>
                                </div>
                            </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="checkbox1" class="control-label">Do you already have a smart classroom?</label>
                                <div>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox1" value="yes"/> Yes </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox1" value="no"/> No </label>
                                </div>
                            </div></div>
                               
                           </div>
                            
                            
                        <div class="col-md-5 col-md-offset-1" style="display:none">
                        
                            
                            <asp:TextBox ID="txtSchoolAmount" Text="50000" CssClass="donate-input" Width="100%" runat="server" placeholder="Enter Donation Amount"></asp:TextBox>
                        </div>
                        <div class="col-md-5" style="display:none">
                           
                             <asp:UpdatePanel ID="up1" runat="server">
                                    <ContentTemplate>
                            <asp:DropDownList ID="ddlStates" runat="server" AutoPostBack="true" CssClass="donate-input" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged">
                              <%--  <asp:ListItem Value="0">Select State</asp:ListItem>  --%>                                                           
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlDistricts" runat="server" AutoPostBack="true" CssClass="donate-input" OnSelectedIndexChanged="ddlDistricts_SelectedIndexChanged">
                                <%--<asp:ListItem Value="0">Select District</asp:ListItem>     --%>                                                        
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlLocations" runat="server" AutoPostBack="true" CssClass="donate-input">
                                <%--<asp:ListItem Value="0">Select Location</asp:ListItem>    --%>                                                         
                            </asp:DropDownList>
                             </ContentTemplate>
                             </asp:UpdatePanel>
                        </div>


                    </div>
                   <div class="row" id="dvExistingSchool" style="display:none;">
                   <div id="UserData"></div>
                   
                   </div>
                            <div class="row" id="dvRandomSchool" style="display:none;">
                   <div id="RandomUserData"></div>
                   
                   </div>
                     <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" id="btnScNext" onclick="GetSelected(this)">Next</button>
                    
                        </div>

                        <div class="row" id="dvstudent" style="display:none">
                          <div class="row">
                     <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                          <ContentTemplate>

                             
                                 <div class="col-md-4">
                                	<div class="frb frb-primary">
						<input type="radio" id="radio5" name="student"   onclick="Javascript:Select(21);">
						<label for="radio5">
							<span class="frb-title">From GV Beneficiary</span>
							<span class="frb-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
						</label>
					</div>
                                
                                </div>
                         <div class="col-md-4"> 
                                
                                <div class="frb frb-primary">
						<input type="radio" id="radio6" name="student"   onclick="Javascript:Select(22);">
						<label for="radio6">
							<span class="frb-title">Random GV Beneficiary</span>
							<span class="frb-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
						</label>
                                
                                </div>
                          </div>
                                 
                         <div class="col-md-4">  
                                
                                 <div class="frb frb-primary">
						<input type="radio" id="radio7" name="student" onclick="Javascript:Select(20);">
						<label for="radio7">
							<span class="frb-title">New GV Beneficiary</span>
							<span class="frb-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
						</label>
                                
                                </div>
                                
                                </div>
                       
                          
                    
                                 
                           
                                 </ContentTemplate>
                                  </asp:UpdatePanel>
  
                    </div>

                    <div id="dvNewStudent" style="display:none">
                    <div class="row" >
                     <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtFName" CssClass="donate-input" Width="100%" runat="server" placeholder="First Name"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtLName" CssClass="donate-input" Width="100%" runat="server" placeholder="Last Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtSName" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Sur Name"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtClass" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Ex: Class 10"></asp:TextBox>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtAmount" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Amount"></asp:TextBox>
                        </div>
                        
                    </div>
                     <div class="row select-own-student">
 <form method="post">
  <div class="row" style="text-align:center">
    <h2><u>Student Scholarship Form</u></h2>
  </div>
  <hr />
                       <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="textarea" class="control-label">Name of the Student</label>
                                    <input id="Text1" class="form-control" cols="40" rows="5" placeholder="Enter School Name"/>
                                
                            </div></div>
                            <div class="col-md-6">
                           
                             <div style="text-align:center">
               <div class="image-upload">
  <label for="file-input">
  <img style="height:130px" src="https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0NjQzOTk4OTQ4OTkyMzQy/ansel-elgort-poses-for-a-portrait-during-the-baby-driver-premiere-2017-sxsw-conference-and-festivals-on-march-11-2017-in-austin-texas-photo-by-matt-winkelmeyer_getty-imagesfor-sxsw-square.jpg" alt="Rounded Image" class="rounded img-fluid" >
  </label>

  <input id="imageinput" type="file" />
</div>
            </div>
                            </div>
                             
                           </div>
                            
                            <div class="row">
                               <div class="col-md-6"> 
                               <div class="col-md-6"> 
                               <div class="form-group">
                                <label for="textarea2" class="control-label">Date Of Birth</label>
                                <input id="txtDob" type="text" class="form-control" />
                          
                            </div>
                            </div>
                            <div class="col-md-6">
                             <div class="form-group">
                                <label for="textarea2" class="control-label">Grade</label>
                                <input id="txtGrade"  type="text" class="form-control" />
                          
                            </div>
                             </div>
                            </div>
                               <div class="col-md-6">

                               <div class="form-group">
                                <label for="text" class="control-label">Gender</label>
                                      <div>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox1" value="yes"/> Male </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox1" value="no"/> Female </label>
                                </div>
                                </div></div>
                           </div>
                           
                              <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="text1" class="control-label">Caste</label>
                                     <input id="txtCaste"  type="text" class="form-control" />
                                 </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text2" class="control-label">Relegion</label>
                                     <input id="txtRelegion"  type="text" class="form-control" /> </div></div>
                           </div>  
                                                               
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text3" class="control-label">Mother Name</label>
                                     <input id="txtMName"  type="text" class="form-control" /> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text4" class="control-label">Occupation</label>
                                     <input id="txtMOccupation"  type="text" class="form-control" /> </div></div>
                           </div>
                                                      
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text5" class="control-label">Father Name/Guardian Name</label>
                                    <input id="Text2"  type="text" class="form-control" /> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text6" class="control-label">Occupation</label>
                                     <input id="txtFOccupation"  type="text" class="form-control" /> </div></div>
                           </div>
                           
                      <div class="row">
                               <div class="col-md-6">  <div class="form-group">
                                <label for="text7" class="control-label">Monthly Income</label>
                                     <input id="txtMIncome"  type="text" class="form-control" /> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea3" class="control-label">Family Size</label>
                                    <input id="txtFSize"  type="text" class="form-control" />
                            </div></div>
                           </div>
                          
                           
                             <div class="row">
                               <div class="col-md-12"> <div class="form-group">
                                 <label for="textarea1" class="control-label">Address & Contact Info</label>
                               
                                <input id="Text3" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                            </div></div>
                               <div class="col-md-12"><div class="form-group">
                               <label for="textarea1" class="control-label">Name Of The School & Contact Info</label>
                               
                                <input id="txtschool" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                               </div></div>
                           </div>
                           
                                
                                 <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Name Of The H.M & Contact Info</label>
                               
                                <input id="txtHM" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                                </div></div>
                               
                           </div>
                            <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Reference Friends / Others (1)</label>
                               
                                <input id="txtRefer1" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                                </div></div>
                               
                           </div>
                            <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Reference Friends / Others (2)</label>
                               
                                <input id="txtRefer2" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                                </div></div>
                               
                           </div>
                           <div class="row">
                           <div class="col-md-6">
                           <div class="form-group">
                                  <label for="textarea1" class="control-label">Upload Hard Copy:</label>
                           
                         <input type="file" id="filestudentform" name="img"  />
 </div>
                      
                      </div>     </div>
                           
                            <input type="submit" value="Submit"/>
                      </form>      

              
                    </div>
                    
                  </div>
                        
                        <div id="dvExistingStudent" style="display:none">
                        <div id="gvStudent">
                          

                        </div>
                            <div class="modal-body" style="max-height:500px;overflow:scroll;">
                                     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                     
                        <div class="col-md-11 col-md-offset-1 edited-table2">
                            <asp:GridView ID="gvStudents" runat="server" CssClass="thead" AutoGenerateColumns = "false">
                                <Columns>
                                    <asp:TemplateField>
                                    <ItemTemplate>
                                      <input type="radio" name="hfStudentID" value='<%#Eval("StudentID")%>' />
                                       
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="StudentID"
                                        HeaderText="StudentID"  />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="StudentName"
                                        HeaderText="Student Name"  />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="Class"
                                        HeaderText="Class" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="Amount" 
                                        HeaderText="Donate"/>
                                    </Columns>
                            
                            </asp:GridView>
                        </div>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                                 </div>
                    <div class="modal-footer">
                         <asp:Label ID="lblStudentError" runat="server" Text="" Visible="false" ></asp:Label>
                       
                        
                    </div>
                        </div>

                            <div id="dvRandomStudents" style="display:none; margin-top:100px">
                                

                            </div>
                             <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" id="btnStNext" onclick="GetSelected(this)">Next</button>
                        </div>
                      
                      
                    </div>
                </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="row setup-content" id="step-2">
                <div class="col-xs-12">
                    <div>
                      
                        <div >
                            <div class="row">
                                <%--DONAR NAME--%>
                    <div class="divDonarDetails" >
                   
                         <div class="row">
                        <div class="col-md-12">
                              <label class="donate-label">
                               <span style="color:Green; margin-right:5px;"></span>Select Citizenship </label>
                           <asp:UpdatePanel ID="Updatepanel58" runat="server">
                           <ContentTemplate>
                            
                            <div class="col-md-6">  <asp:RadioButton ID="rbdCountry" CssClass="radio" runat="server" Text="India"
                                onclick="Javascript:SelectCountry(41);" GroupName="Package1"/></div>
                         <div class="col-md-6"> <asp:RadioButton ID="rbdCountryother" CssClass="radio" runat="server" Text="United States"
                                onclick="Javascript:SelectCountry(1);" GroupName="Package1"/></div>
                                 
                      <asp:Button ID="btnDoners" class="btn btn-primary" style="float:right;margin-top: 27px;" runat="server" Text="Existing Donars List" OnClick="btnDoners_Click" Visible="false"/>
                     </ContentTemplate>
                    </asp:UpdatePanel>
                    </div>
                    </div>

                    <div class="row">
                      
                        <div class="col-md-6">
                            <asp:TextBox ID="txtDonarname" CssClass="donate-input" Width="100%" runat="server" placeholder="Name"></asp:TextBox>
                            <label class="error" id="errDonarname" style="display:none">Name Should Not Empty</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtDonarEmail" CssClass="donate-input" Width="100%" runat="server" placeholder="Email Address"></asp:TextBox>
                       <label class="error" id="errDonarEmail" style="display:none">Email Should Not Empty</label>
                        </div> 
                            </div>
                            
                   
                    <div class="row">
                        <div class="col-md-6">
                            <asp:TextBox ID="txtDonarAddress" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Address1"></asp:TextBox>
                             <label class="error" id="errDonarAddress" style="display:none">Address Should Not Empty</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtDonarLocation" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Address2"></asp:TextBox>
                             <label class="error" id="errDonarLocation" style="display:none">Location Should Not Empty</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                        <asp:UpdatePanel ID="Updatepanel8" runat="server">
                           <ContentTemplate>
                            <asp:DropDownList ID="ddlcountry" CssClass="donate-input" runat="server" DataTextField="Countryname" AutoPostBack="true"
                                DataValueField="CountryID" Width="100%" onselectedindexchanged="ddlcountry_SelectedIndexChanged">
                            </asp:DropDownList>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                           <%-- <asp:TextBox ID="txtDonarCountry" CssClass="donate-input" placeholder="Country Name" runat="server"></asp:TextBox>--%>
                        </div>
                        <div class="col-md-6">
                          <asp:UpdatePanel ID="Updatepanel9" runat="server">
                           <ContentTemplate>
                            <asp:DropDownList ID="ddlState1" CssClass="donate-input" runat="server" Width="100%" AutoPostBack="true"  onchange="BindDonarStateID();">
                            </asp:DropDownList>
                             </ContentTemplate>
                             </asp:UpdatePanel>
                            <%--<asp:TextBox ID="txtDonarState" CssClass="donate-input" placeholder="State Name" runat="server"></asp:TextBox>--%>
                        </div>
                        </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                            <asp:TextBox ID="txtDonarPin" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="pincode"></asp:TextBox>
                            <label class="error" id="errDonarPin" style="display:none">DonarPin Should Not Empty</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtDonarMobile" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="MobileNumber"></asp:TextBox>
                             <label class="error" id="errDonarMobile" style="display:none">MobileNumber Should Not Empty</label>
                        </div>
                    </div>
                        </div>

                    
                  
                    
                  

                            </div>
                        </div>
                        <div class="buttons-panel">
                        <button class="btn btn-primary prevBtn btn-lg pull-left" type="button">Previous</button>
                        <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
                            </div>
                    </div>
                </div>
            </div>
            <div class="row setup-content" id="step-3">
                <div class="col-xs-12">
                    <div class="row">
                        <%--<div class="col-md-3 col-md-offset-1">
                            <asp:RadioButton ID="rbdebit" CssClass="radio" runat="server" Text="Debit Card" onchange="javascript:GetDonationmodeID(1);"
                                GroupName="PaymentMode" />
                            <asp:RadioButton ID="rbcredit" CssClass="radio" runat="server" Text="Credit Card"
                                onchange="javascript:GetDonationmodeID(2);" GroupName="PaymentMode" />
                        </div>--%>
                        <div id="selectedforPay"></div>
                        <div class="col-md-3 col-md-offset-1">
                            <asp:RadioButton ID="rbnetbanking" CssClass="radio" runat="server" Text="Net Banking"
                                onchange="javascript:GetDonationmodeID(3);" GroupName="PaymentMode" />
                            <asp:RadioButton ID="rbchequee" CssClass="radio" runat="server" Text="Write a Chequee/DD"
                                onchange="GetCheckOptions(4);" GroupName="PaymentMode" />
                            <div class="row" id="divcheck" style="display: none;">
                                <div class="col-md-12 col-md-offset-1">
                                    <asp:RadioButton ID="rbchcollect" CssClass="radio-check" runat="server" Text="&nbsp; Collect the check"
                                        onchange="javascript:GetCheckpickUpID(1);" GroupName="PaymentMode" />&nbsp;
                                    <asp:RadioButton ID="rbchpost" CssClass="radio-check" runat="server" Text="&nbsp;I will post the check"
                                        onchange="javascript:GetCheckpickUpID(2);" GroupName="PaymentMode" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-md-offset-1">
                            <asp:CheckBox ID="chk" runat="server" Checked="true" />
                            I have read through the website's Privacy agree to make a donation
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12 col-md-offset-1">
                           
                            <asp:LinkButton ID="lbDonate" runat="server" CssClass="btn btn-info btn-lg" 
                                Text="Donate Now" onclick="lbDonate_Click"
                                ></asp:LinkButton>
                        </div>
                        <asp:Label ID="lblDError" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lblScError" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lblStudentsError" runat="server" Text="" Visible="false"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row setup-content" id="step-5">
                <div class="col-xs-8 col-md-offset-2">
                    <div class="col-md-12">
                        <h3> Step 3</h3>
                        <div class="well col-xs-12 col-sm-12 col-md-12 ">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6"> <address>
                        <strong>Elf Cafe</strong>
                        <br>
                        2135 Sunset Blvd
                        <br>
                        Los Angeles, CA 90026
                        <br>
                        <abbr title="Phone">P:</abbr> (213) 484-6829
                    </address> </div>
                                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                    <p> <em>Date: 1st November, 2013</em> </p>
                                    <p> <em>Receipt #: 34522677W</em> </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="text-center">
                                    <h1>Receipt</h1> </div>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>#</th>
                                            <th class="text-center">Price</th>
                                            <th class="text-center">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="col-md-9"><em>Baked Rodopa Sheep Feta</em></td>
                                            <td class="col-md-1" style="text-align: center"> 2 </td>
                                            <td class="col-md-1 text-center">$13</td>
                                            <td class="col-md-1 text-center">$26</td>
                                        </tr>
                                        <tr>
                                            <td class="col-md-9"><em>Lebanese Cabbage Salad</em></td>
                                            <td class="col-md-1" style="text-align: center"> 1 </td>
                                            <td class="col-md-1 text-center">$8</td>
                                            <td class="col-md-1 text-center">$8</td>
                                        </tr>
                                        <tr>
                                            <td class="col-md-9"><em>Baked Tart with Thyme and Garlic</em></td>
                                            <td class="col-md-1" style="text-align: center"> 3 </td>
                                            <td class="col-md-1 text-center">$16</td>
                                            <td class="col-md-1 text-center">$48</td>
                                        </tr>
                                        <tr>
                                            <td>   </td>
                                            <td>   </td>
                                            <td class="text-right">
                                                <p> <strong>Subtotal: </strong> </p>
                                                <p> <strong>Tax: </strong> </p>
                                            </td>
                                            <td class="text-center">
                                                <p> <strong>$6.94</strong> </p>
                                                <p> <strong>$6.94</strong> </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>   </td>
                                            <td>   </td>
                                            <td class="text-right">
                                                <h4><strong>Total: </strong></h4></td>
                                            <td class="text-center text-danger">
                                                <h4><strong>$31.53</strong></h4></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <button type="button" class="btn btn-success btn-lg btn-block"> Print Now   <span class="glyphicon glyphicon-chevron-right"></span> </button>
                            </div>
                        </div>
                        <button class="btn btn-primary prevBtn btn-lg pull-left" type="button">Previous</button>
                        <button class="btn btn-success btn-lg pull-right" type="submit">Submit</button>
                    </div>
                </div>
            </div>
        </form>
        </div>
    </div>
    </div>
   
    <script>
        $(document).ready(function () {
            var navListItems = $('div.setup-panel div a')
                , allWells = $('.setup-content')
                , allNextBtn = $('.nextBtn')
                , allPrevBtn = $('.prevBtn');
            allWells.hide();
            navListItems.click(function (e) {
                e.preventDefault();
                var $target = $($(this).attr('href'))
                    , $item = $(this);
                if (!$item.hasClass('disabled')) {
                    navListItems.removeClass('btn-primary').addClass('btn-default');
                    $item.addClass('btn-primary');
                    allWells.hide();
                    $target.show();
                    $target.find('input:eq(0)').focus();
                }
            });
            allPrevBtn.click(function () {
                var curStep = $(this).closest(".setup-content")
                    , curStepBtn = curStep.attr("id")
                    , prevStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().prev().children("a");
                prevStepWizard.removeAttr('disabled').trigger('click');
            });
            allNextBtn.click(function () {
                var curStep = $(this).closest(".setup-content")
                    , curStepBtn = curStep.attr("id")
                    , nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a")
                    , curInputs = curStep.find("input[type='text'],input[type='url']")
                    , isValid = true;
                $(".form-group").removeClass("has-error");
                if (curStepBtn == "step-2") {

                    var txtDonarname = $("#<%=txtDonarname.ClientID%>").val();
                    var txtDonarEmail = $("#<%=txtDonarEmail.ClientID%>").val();
                    var txtDonarAddress = $("#<%=txtDonarAddress.ClientID%>").val();
                    var txtDonarLocation = $("#<%=txtDonarLocation.ClientID%>").val();
                    var txtDonarPin = $("#<%=txtDonarPin.ClientID%>").val();
                    var txtDonarMobile = $("#<%=txtDonarMobile.ClientID%>").val();
                    if (txtDonarname == "") {
                        $("#errDonarname").show();
                        return;
                    }
                    else {
                        $("#errDonarname").hide();

                    }
                    if (txtDonarEmail == "") {
                        $("#errDonarEmail").show();
                        return;
                    }
                    else {
                        $("#errDonarEmail").hide();

                    }
                    if (txtDonarAddress == "") {
                        $("#errDonarAddress").show();
                        return;
                    }
                    else {
                        $("#errDonarAddress").hide();

                    }
                    if (txtDonarLocation == "") {
                        $("#errDonarLocation").show();
                        return;
                    }
                    else {
                        $("#errDonarLocation").hide();

                    }
                    if (txtDonarPin == "") {
                        $("#errDonarPin").show();
                        return;
                    }
                    else {
                        $("#errDonarPin").hide();

                    }
                    if (txtDonarMobile == "") {
                        $("#errDonarMobile").show();
                        return;
                    }
                    else {
                        $("#errDonarMobile").hide();

                    }

                }
                for (var i = 0; i < curInputs.length; i++) {
                    if (!curInputs[i].validity.valid) {
                        isValid = false;
                        $(curInputs[i]).closest(".form-group").addClass("has-error");
                    }
                }
                if (isValid) nextStepWizard.removeAttr('disabled').trigger('click');
            });
            $('div.setup-panel div a.btn-primary').trigger('click');
        });
        $('#myCollapsible').collapse({
            toggle: false
        });
        $(function () {

        });
    </script>

    <div class="container" style="display:none">
   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>--%>
        <div class="row">
            <div class="col-md-3">
                <div class="row">
                    <!-- How you can help box start -->
                    <div class="col-md-12">
                        <div class="sidebar-donate-blk">
                            <h3>
                                Programs</h3>
                            <ul class="list-style">
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate.aspx" onclick="Javascript:CheckprogramType(1);">
                                    Adopt-a-School</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate.aspx" onclick="Javascript:CheckprogramType(2);">
                                    Adopt-a-Student</a></li>
                                <%--<li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Digital
                                    Libraries</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-Donar </a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-FAQ Libraries</a></li>--%>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="col-md-12 event-strips">
                        <div class="blk school-metric">
                            <h2>
                                School Metrics</h2>
                            <marquee height="250" scrolldelay="150" direction="up">
                      <ul>
                      <li>India has <b>1.27 billion</b> people, 74% literacy rate.</li>
                      <li> World’s largest child and youth population is in India &ndash; <b>600 million</b> are below 24 years of age. (<b>480 million</b> child population)
                      There are <b>1.30</b> million schools in India.</li>
                      <li><b>220 million</b> students enroll in elementary schools every academic year, more than half drop out before class VIII. Only <b>55 million</b> are enrolled in secondary education (classes IX &ndash; XII)</li>
                      <li><b>96.7%</b> of the age <b>6-14</b> are enrolled in schools in rural India</li>
                      <li><b>120</b> million students are outside school.</li>
                      <li>There is a shortage of <b>700000</b> teachers countrywide.</li>
                      <li>Pupil &ndash; Teacher ratio is <b>49.3</b></li>
                      <li><b>9%</b> of the schools make do with 1 teacher who teaches multiple subjects and classes</li>
                      <li>Only <b>19%</b> of the students are enrolled in higher education (<b>80%</b> in USA and <b>28%</b> in China)</li>
                      <li><b>581</b> Universities and <b>35000</b> colleges enroll <b>20</b> million students in India. China has <b>1600</b> Universities and USA + Canada has over <b>9200</b> campuses.</li>
                      <li>During the past decade Government (State + Center) expenditure on education averaged <b>3.3</b> percent of the GDP.</li>
                      <li><b>53.4%</b> of the <b>5th</b> standard students surveyed could not read, write or solve arithmetic problems expected of children in 2nd standard.</li>
                      <li><b>25.4%</b> of the <b>8th</b> standard students could not read a <b>2nd</b> standard textbook.</li>
                      <li><b>32.5%</b> of the 2nd standard children cannot recognize letters as yet.</li>
                      <li>Percentage of schools with computers <b>19.6%</b></li>
                      <li><b>55.7%</b> of schools have usable girls toilets</li>
          
                      </ul></marquee>
                            <br>
                            <br>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-9">
                <div class="sidebar-donate">
                    <h1>Donate for</h1>

                      <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                               <span style="color:Green; margin-right:5px;">Step 1 :</span>Select Citizenship </label></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                          <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                          <ContentTemplate>
                        
                          
                                 
                           
                                 </ContentTemplate>
                                  </asp:UpdatePanel>
                        </div>
                        </div>
                        <hr />
                <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                               <span style="color:Green; margin-right:5px;">Step 2 :</span>Select Package </label></div>
                    </div>
                    
                    <%--PACKAGE TYPES--%>

                <div class="row">
              
                        <div class="col-md-4 col-md-offset-1" style="display:none">
                           <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                          <ContentTemplate>
                            <asp:RadioButton ID="rdbPackage1" CssClass="radio" runat="server" Text="Digital Student"
                                onclick="Javascript:SelectPackage(1);" GroupName="Package" AutoPostBack="true" OnCheckedChanged="rdbPackage1_CheckedChanged"/>
                                

                            <asp:RadioButton ID="rdbPackage2" CssClass="radio" runat="server" Text="Digital Classroom"
                                onclick="Javascript:SelectPackage(2);" GroupName="Package" AutoPostBack="true" OnCheckedChanged="rdbPackage2_CheckedChanged"/>
                                                      
                                 </ContentTemplate>
                                 </asp:UpdatePanel>
                        </div>

                        <div class="col-md-4">
                        
                        </div>

                        <div class="col-md-3" style="display:none">
                        <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                          <ContentTemplate>
                             <asp:RadioButton ID="rdbPackage5" CssClass="radio" runat="server" Text="Other"
                                onclick="Javascript:SelectPackage(5);" GroupName="Package" AutoPostBack="true" OnCheckedChanged="rdbPackage5_CheckedChanged"/>
                                </ContentTemplate>
                                </asp:UpdatePanel>
                        </div>
                   
                    
                    </div>
                    <hr />
                    <%--DIGITAL PATASALA--%>

                    <div id="divDigitalPatasala" class="package">

                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                               <span style="color:Green; margin-right:5px;">Step 2 :</span>Digital Student </label></div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            
                            <asp:DropDownList ID="ddlBoard" runat="server" CssClass="donate-input" >
                                <asp:ListItem Value="0">Select Board</asp:ListItem>
                                <asp:ListItem Value="1">CBSE</asp:ListItem>
                                <asp:ListItem Value="2">SSC</asp:ListItem>
                                <asp:ListItem Value="3">ICSE</asp:ListItem>                                
                            </asp:DropDownList>
                            <asp:Label ID="lblPerror" runat="server" Text="" Visible="false"></asp:Label>
                        </div>

                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlClass" runat="server" CssClass="donate-input">
                                <asp:ListItem Value="1">Class 1</asp:ListItem>
                                <asp:ListItem Value="2">Class 2</asp:ListItem>
                                <asp:ListItem Value="3">Class 3</asp:ListItem>                                
                                <asp:ListItem Value="4">Class 4</asp:ListItem>
                                <asp:ListItem Value="5">Class 5</asp:ListItem>
                                <asp:ListItem Value="6">Class 6</asp:ListItem>
                                <asp:ListItem Value="7">Class 7</asp:ListItem>
                                <asp:ListItem Value="8">Class 8</asp:ListItem>
                                <asp:ListItem Value="9">Class 9</asp:ListItem>
                                <asp:ListItem Value="10">Class 10</asp:ListItem>
                            </asp:DropDownList>
                             
                        </div>

                        <div class="col-md-4">
                              <asp:DropDownList ID="ddlPackage" runat="server" CssClass="donate-input">
                                <asp:ListItem Value="0">Select Package</asp:ListItem>
                                <asp:ListItem Value="500">Combo (Class 1-5) - Rs.500/-</asp:ListItem>
                                <asp:ListItem Value="599">Math (Class 6-10) - Rs.599/-</asp:ListItem>
                                <asp:ListItem Value="599">Science (Class 6-10) - Rs.599/-</asp:ListItem>                                
                                <asp:ListItem Value="999">Combo (Class 6-10) - Rs.999/-</asp:ListItem>
                            </asp:DropDownList>
                             
                        </div>
                        
                  
                      
                       
                    </div>

                    </div>
                    
                    <div id="divSchool"  class="package" style="display:none" >
                     <%--SCHOOL--%>

                    <div class="row">
                        <div class="col-md-12">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                           <ContentTemplate>
                            <label class="donate-label">

                               <span style="color:Green; margin-right:5px;">Step 3 :</span>Adopt-a-School</label>
                                 
                            <asp:Button ID="btnSchool" style="display:none" class="btn btn-primary"  runat="server" Text="Existing School List" OnClick="btnSchool_Click" autopostback="false"/>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                               </div>
                    </div>

                    <div class="row" style="display:none">
                    <div class="">
  <label><input type="radio" class="radio-inline" name="radios" value=""><span class="outside"><span class="inside"></span></span>Neopolitan</label>
  <label><input type="radio"class="radio-inline" name="radios" value=""><span class="outside"><span class="inside"></span></span>Mint Choco Chip</label>
  <label><input type="radio" class="radio-inline" name="radios" value=""><span class="outside"><span class="inside"></span></span>Blue Moon</label>
   <label><input type="radio" class="radio-inline" name="radios" value=""><span class="outside"><span class="inside"></span></span>All the Ice Cream</label>
</div>
                    </div>
                
                       
                    </div>

                    <%--STUDENT--%>
                  
                    <div id="divStudent"  class="package">

                    <div class="row">
                        <div class="col-md-12">
                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                    <ContentTemplate>
                            <label class="donate-label">
                               <span style="color:Green; margin-right:5px;">Step 3 :</span>ADOPT STUDENT</label>
                               
                             <asp:Button ID="btnStudents" class="btn btn-primary" style="float:right;margin-top: 20px;display:none" runat="server" Text="Existing Student List"  autopostback="false" OnClick="btnStudents_Click"/>
                             </ContentTemplate>
                             </asp:UpdatePanel>
                    </div>

                    </div>
                    
                  
                    </div>

                    

                    <%--CLASSROOM--%>
                    <hr />
                    <div id="divClassroom"  class="package">
                        <div class="row">
                            <div class="col-md-12">
                            <label class="donate-label">
                               <span style="color:Green; margin-right:5px;">Step 2 :</span>DONATE CLASSROOM</label></div>
                        </div>

                        <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:RadioButton ID="rd1" CssClass="radio" runat="server" Text="Rs. 17500 to Content"  ToolTip="17500"
                                onclick="Javascript:SelectAmountID(1,17500);" GroupName="dcr" />
                            <asp:RadioButton ID="rd2" CssClass="radio" runat="server" Text="Rs. 25500 to Smart Content"  ToolTip="25500"
                                onclick="Javascript:SelectAmountID(2,25500);" GroupName="dcr" />
                            <asp:RadioButton ID="rd3" CssClass="radio" runat="server" Text="Rs. 50500 to Hardware"  ToolTip="50500"
                                onclick="Javascript:SelectAmountID(3,50500);" GroupName="dcr" />
                                
                                 
                                
                        </div>
                        <div class="col-md-5">
                            <asp:RadioButton ID="rd4" CssClass="radio" runat="server" Text="Rs. 50500 to Smart Content" ToolTip="50500"
                                onclick="Javascript:SelectAmountID(4,50500);" GroupName="dcr" />
                            <asp:RadioButton ID="rd5" CssClass="radio" runat="server" Text="Rs. 17500 to Hardware"  ToolTip="17500"
                                onclick="Javascript:SelectAmountID(5, 17500);" GroupName="dcr" />
                            <asp:RadioButton ID="rd6" CssClass="radio" runat="server" Text="Rs. 25500 to Content"  ToolTip="25500"
                                onclick="Javascript:SelectAmountID(6, 25500);" GroupName="dcr" />
                                 
                        </div>
                  
                      
                       
                    </div>
                    
                    
                    </div>

                    <%--OTHER--%>

                    <div id="divOther"  class="package">

                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                               <span style="color:Green; margin-right:5px;">Step 2 :</span>OTHER</label></div>
                    </div>

                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                             <asp:TextBox ID="txtOtherAmount" CssClass="donate-input" Width="100%" runat="server" placeholder="Other Amount"></asp:TextBox>
                        </div>
                    </div>

                    </div>

                  
                    <%--DONATION MODE--%>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                                <span style="color:Green; margin-right:5px;">Step 5 :</span>Donation Mode</label></div>
                    </div>
                  
                    
                </div>


            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header modal-header-success">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            ×</button>
                        <h4>
                            <b>School List</b></h4>
                    </div>
                    <div class="modal-body" style="max-height:500px;overflow:scroll;">
                   
                    </div>
                    <div class="modal-footer">
                       
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

      <div class="modal fade" id="ModalDonars" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header modal-header-success">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            ×</button>
                        <h4>
                            <b>Doners List</b></h4>
                    </div>
                    <div class="modal-body" style="max-height:500px;overflow:scroll;">
                         <div class="col-md-11 col-md-offset-1 edited-table2">
                      <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                           <ContentTemplate>
                       <asp:GridView ID="gvDonerList" runat="server" CssClass="thead" AutoGenerateColumns = "false">
                                <Columns>
                                    <asp:TemplateField>
                                    <ItemTemplate>
                                        <input type="radio" name="hfDonerID" value='<%#Eval("UserID")%>' />
                                        
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="UserID"
                                        HeaderText="UserID"  />
                                         <asp:BoundField ItemStyle-Width="150px" DataField="UserName" 
                                        HeaderText="Name"/>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Email" 
                                        HeaderText="Email"/>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Address" 
                                        HeaderText="Address"/>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="CountryName"
                                        HeaderText="Country Name"  />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="StateName"
                                        HeaderText="State Name" />
                                     <asp:BoundField ItemStyle-Width="150px" DataField="Pincode" 
                                        HeaderText="Pincode"/>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Mobile" 
                                        HeaderText="Mobile"/>
                                    </Columns>
                            
                            </asp:GridView>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Label ID="lblerrorDoner" runat="server" Text="" Visible="false" ></asp:Label>
                       
                        <asp:Button ID="btnDSend" runat="server" Text="Send" CssClass="btn btn-default" OnClick="btnDSend_Click"/>
                        
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        
      <div class="modal fade" id="modalStudentList" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header modal-header-success">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            ×</button>
                        <h4>
                            <b>Students List</b></h4>
                    </div>
                    <div class="modal-body" style="max-height:500px;overflow:scroll;">
             
                    </div>
                    <div class="modal-footer">
                     
                       
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <div class="modal fade" id="myModalError">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">
                                Error</h4>
                        </div>
                        <div class="modal-body">
                             <label><font color="red">Please Select Package</font></label>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                Close</button>
                            
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
    <asp:HiddenField ID="hfPackageTypeID" runat="server"  />
    <asp:HiddenField ID="hfPackageID" runat="server"/>
    <asp:HiddenField ID="hfPackageAmount" runat="server" />
    <asp:HiddenField ID="hfDonerID" runat="server" />
    <asp:HiddenField ID="hfSchoolIDFinal" runat="server" />
    <asp:HiddenField ID="hfStudentIDFinal" runat="server" />
    <asp:HiddenField ID="hfUserIDFinal" runat="server" Value="1" />
    <input type="hidden" id="hfID" />
     <asp:HiddenField ID="hftbl" runat="server" />
    
  <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="../js/bootstrap.js" type="text/javascript"></script>

    <%--<script type = "text/javascript">
         function RadioCheck(rb) {
            var gv = document.getElementById("<%=gvStudents.ClientID%>");
            var rbs = gv.getElementsByTagName("input");

            var row = rb.parentNode.parentNode;
            for (var i = 0; i < rbs.length; i++) {
                if (rbs[i].type == "radio") {
                    if (rbs[i].checked && rbs[i] != rb) {
                        rbs[i].checked = false;
                        break;
                    }
                }
            }
        }  
        
        
          
</script>--%>

<script type = "text/javascript">
    //    function RadioCheckSchool(rb) {
    //       
    //        var rbs = gv.getElementsByTagName("input");

    //        var row = rb.parentNode.parentNode;
    //        for (var i = 0; i < rbs.length; i++) {
    //            if (rbs[i].type == "radio") {
    //                if (rbs[i].checked && rbs[i] != rb) {
    //                    rbs[i].checked = false;
    //                    break;
    //                }
    //            }
    //        }
    //    }

    function openModal() {
        $('#myModal').modal('show');
    }
    function openModal1() {
        $('#ModalDonars').modal('show');
    }
    function ModalClose() {
        SelectPackage(3);
    }
    $("#myModal").on('hidden.bs.modal', function () {
        SelectPackage(3);
    })
    $("#ModalDonars").on('hidden.bs.modal', function () {
        var PackageId = $("#hfID").val();
        SelectPackage(PackageId);
    })
    function openModalStudent() {
        $('#modalStudentList').modal('show');
    }

    $("#modalStudentList").on('hidden.bs.modal', function () {
        var PackageId = $("#hfID").val();
        SelectPackage(PackageId);
    })

    function ShowPopup() {
        $('#myModalError').modal('show');

    }

</script>
    <script type="text/javascript">
        $(".package").hide();
        $(function () {
            bindPackages(3);
        });
        function Select(ID) {

            switch (ID) {
                case 10:
                    // $(".package").hide();
                    $("#dvNewSchool").hide();
                    $("#dvExistingSchool").hide();
                    $("#dvRandomStudents").hide();
                    window.location = "/Programs/NewSchool.aspx";

                    break;
                case 11:

                    $("#dvNewSchool").hide();
                    $("#dvExistingSchool").show();
                    $("#dvRandomSchool").hide();
                    var Type = "Normal";
                    BindSchoolTables(Type, "example");
                    $("#<%=hftbl.ClientID%>").val("example");
                    break;
                case 12:

                    $("#dvNewSchool").hide();
                    $("#dvExistingSchool").hide();
                    $("#dvRandomSchool").show();
                    var Type = "Random";
                    BindSchoolTables(Type, "example1");

                    $("#<%=hftbl.ClientID%>").val("example1");
                    break;
                case 20:
                    $("#dvNewStudent").hide();
                    $("#dvRandomStudents").hide();
                    window.location = "/Programs/NewStudent.aspx";
                    $("#dvExistingStudent").hide();
                    break;
                case 21:
                    $("#dvNewStudent").hide();
                    $("#dvExistingStudent").show();
                    $("#dvRandomStudents").hide();
                    var Type = "Normal";
                    BindStudentTables(Type, "item");
                    $("#btnStNext").attr("source", "student");

                    $("#<%=hftbl.ClientID%>").val("item");

                    break;
                case 22:
                    var Type = "Random";
                    $("#dvNewStudent").hide();
                    $("#dvExistingStudent").hide();
                    $("#dvRandomStudents").show();
                    BindStudentTables(Type, "item1");
                    $("#btnStNext").attr("source", "student");
                    $("#<%=hftbl.ClientID%>").val("item1");
                    break;
               
            }


        }

        function SelectCountry(ID) {

            switch (ID) {
                case 41:
                    // $(".package").hide();
                   
                    $("#<%=ddlcountry.ClientID%>").val(ID);
                    break;
                case 1:

                    
                    $("#<%=ddlcountry.ClientID%>").val(ID);
                    break;
              

             }


         }
        function BindSchoolTables(Type, TableName) {

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Donate.aspx/BindSchools",
                data: '{Type: "' + Type + '"}',
                dataType: "json",
                success: function (Result) {
                    var tablestring = "";
                    if (Type == "Random") {
                        tablestring = tablestring + "<table name='example1' id='example1' ";
                    }
                    if (Type == "Normal") {
                        tablestring = tablestring + "<table name='example' id='example' ";
                    }
                   tablestring = tablestring + "class='table table-striped table-bordered' role='grid' aria-describedby='example_info'>";

                    tablestring = tablestring + "<thead><tr><th></th><th>SchoolID</th><th>SchoolName</th><th>CountryName</th><th>StateName</th><th style='display:none'></th><th style='display:none'></th><th></th></tr></thead><tbody>";

                    for (var i = 0; i < Result.d.length; i++) {

                        tablestring = tablestring + "<tr><td></td><td>" + Result.d[i].SchoolID + "</td><td>" + Result.d[i].SchoolName + "</td><td>" + Result.d[i].CountryName + "</td><td>" + Result.d[i].StateName + "</td><td style='display:none'>" + Result.d[i].DistrictName + "</td><td style='display:none'>" + Result.d[i].LocationName + "</td><td></td></tr>";


                    }

                    tablestring = tablestring + "</tbody></table>"
                    if (Type == "Random") {
                        $("#RandomUserData").html(tablestring);
                    }
                    if (Type == "Normal") {
                        $("#UserData").html(tablestring);
                    }

                    var table = $('#' + TableName).DataTable({
                        select: true,
                        "columns": [
                            {
                                "className": 'details-control',
                                "orderable": false,
                                "data": null,

                                "defaultContent": ''
                            },

                            { "data": "SchoolID" },
                            { "data": "SchoolName" },
                            { "data": "CountryName" },
                            { "data": "StateName" },
                            { "data": "DistrictName" },
                            { "data": "LocationName" },
                            {
                                "orderable": false,
                                "className": 'select-checkbox',
                                "targets": 6
                            },
                        ],
                        "select": {
                            "style": 'multi',
                            "selector": 'td:last-child'
                        }

                    });

                    // Add event listener for opening and closing details
                    $('#' + TableName +' tbody').on('click', 'td.details - control', function () {
                        var tr = $(this).closest('tr');
                        var row = table.row(tr);

                        if (row.child.isShown()) {
                            // This row is already open - close it
                            row.child.hide();
                            tr.removeClass('shown');
                        }
                        else {
                            // Open this row
                            row.child(format(row.data())).show();
                            tr.addClass('shown');
                        }
                    });

                },
                error: function (result) {
                    alert("Error");
                }

            });



        }

        function BindStudentTables(Type,TableName) {

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Donate.aspx/BindStudents",
                data: '{Type: "' + Type + '"}',
                dataType: "json",
                success: function (Result) {
                    var tablestring = "";
                    if (Type == "Random") {
                        tablestring = tablestring + "<table name='item1' id='item1' ";
                    }
                    if (Type == "Normal") {
                        tablestring = tablestring + "<table name='item' id='item' ";
                    }
                    tablestring = tablestring + "  class='table table - striped table - bordered' width='100 % ' cellspacing='0'>";
                        tablestring=tablestring +"<thead> <tr><th></th><th>StudentID</th><th>StudentName</th><th>StateName</th><th>DistrictName</th><th>LocationName</th><th></th></tr></thead><tbody>";
                     for (var i = 0; i < Result.d.length; i++) {

                        tablestring = tablestring + "<tr id='tr_" + Result.d[i].StudentID + "'><td></td><td>" + Result.d[i].StudentID + "</td><td>" + Result.d[i].StudentName + "</td><td>" + Result.d[i].StateName + "</td><td>" + Result.d[i].DistrictName + "</td><td>" + Result.d[i].LocationName + "</td><td></td></tr>";
                    }
                    tablestring = tablestring + "</tbody></table>";
                    if (Type=="Random") {
                        $("#dvRandomStudents").html(tablestring);
                    }
                    if (Type == "Normal") {
                        $("#gvStudent").html(tablestring);
                    }

                    var otable = $('#' + TableName).DataTable({
                        select: true,
                        "columns": [
                            {
                                "className": 'details-control',
                                "orderable": false,
                                "data": null,

                                "defaultContent": ''
                            },

                            { "data": "StudentID" },
                            { "data": "StudentName" },
                            { "data": "StateName" },
                            { "data": "DistrictName" },
                            { "data": "LocationName" },
                            {
                                "orderable": false,
                                "className": 'select-checkbox',
                                "targets": 5
                            },
                        ],
                        "select": {
                            "style": 'multi',
                            "selector": 'td:last-child'
                        }

                    });

                    // Add event listener for opening and closing details
                    $('#' + TableName+' tbody').on('click', 'td.details-control', function () {
                        var tr = $(this).closest('tr');
                        var row = table.row(tr);

                        if (row.child.isShown()) {
                            // This row is already open - close it
                            row.child.hide();
                            tr.removeClass('shown');
                        }
                        else {
                            // Open this row
                            row.child(format(row.data())).show();
                            tr.addClass('shown');
                        }
                    });

                },
                error: function (result) {
                    alert("Error");
                }

            });
        }
        function format(d) {
            // `d` is the original data object for the row
            return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">' +
        '<tr>' +
            '<td>Full name:</td>' +
            '<td>' + d.DistrictName + '</td>' +
            '<td rowspan="3">' + '<img style="height:130px" src="https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0NjQzOTk4OTQ4OTkyMzQy/ansel-elgort-poses-for-a-portrait-during-the-baby-driver-premiere-2017-sxsw-conference-and-festivals-on-march-11-2017-in-austin-texas-photo-by-matt-winkelmeyer_getty-imagesfor-sxsw-square.jpg" alt="Rounded Image" class="rounded img-fluid" >' + '</td>' +
        '</tr>' +
        '<tr>' +
            '<td>Extension number:</td>' +
            '<td>' + d.LocationName + '</td>' +
        '</tr>' +
        '<tr>' +
            '<td>Extra info:</td>' +
            '<td>And any further details here (images etc)...</td>' +
        '</tr>' +
    '</table>';
        }
        function SelectPackage(PackageId) {
             
            $("#hfID").val(PackageId);
          
            switch (PackageId) {
                case 1:
                    $(".package").hide();
                    $("#divDigitalPatasala").show();
                    
                    break;
                case 2:
                  
                    $(".package").hide();
                    $("#divClassroom").show();
                 
                     
                    break;
                case 3:
                    $("#dvschool").show();
                    $("#dvstudent").hide();
                    bindPackages(3);
                    break;
                case 4:
                    $("#dvschool").hide();
                    $("#dvstudent").show();
                    bindPackages(4);
                    break;
                case 5:
                    $(".package").hide();
                    $("#divOther").show();
                   
                    break;
            }


        }
        function bindPackages(SelectedPackage) {
            
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Donate.aspx/BindPackages",
                data: '{SelectedPackage: ' + SelectedPackage + '}',
                dataType: "json",
                success: function (Result) {
                    var tablestring = " <div class='col-md-4'>";
                    var tablestring1 = " <div class='col-md-4'>";
                    var tablestring2 = "";
                    $("#dvPackagestudent").empty();
                    $("#dvPackageschool").empty();
                    $("#dvPackagesother").empty();
                    var j = 0;
                  
                    for (var i = 0; i < Result.d.length; i++) {
                        if (Result.d[i].PackageID == 3) {

                        
                            if (i == 3 || i == 6 || i == 9 || i == 12 || i == 15) {
                            tablestring = tablestring +"</div> <div class='col-md-4'>"

                        }
                        tablestring = tablestring + "<input type='radio' class='rbd'  id='radio_" + Result.d[i].ID + "' onclick='Javascript: Package(" + Result.d[i].ID + "," + Result.d[i].Money + ")' name='group' value='" + Result.d[i].Money + "' rbdtext='" + Result.d[i].Text + "' rbdMainPack='" + Result.d[i].PackageID + "'><label for='" + Result.d[i].ID + "'> " + Result.d[i].Text + "Rs: " + Result.d[i].Money + " </label><br>";
                        }
                        if (Result.d[i].PackageID == 4) {


                            if (j == 3 || j == 6 || j== 9 || j==12 || j==15) {
                                tablestring1 = tablestring1 + "</div> <div class='col-md-4'>"

                            }
                            tablestring1 = tablestring1 + "<input type='radio' class='rbd' id='radio_" + Result.d[i].ID + "' onclick='Javascript: Package(" + Result.d[i].ID + "," + Result.d[i].Money + ")' name='group1' value='" + Result.d[i].Money + "' rbdtext='" + Result.d[i].Text + "' rbdMainPack='" + Result.d[i].PackageID + "'><label for='" + Result.d[i].ID + "'> " + Result.d[i].Text + " Rs: " + Result.d[i].Money + " </label><br>";
                            j = j + 1;
                        }
                        if (Result.d[i].PackageID == 5) {



                            tablestring2 = tablestring2 + "<input type = 'radio' class='rbd' id = 'radio_" + Result.d[i].ID + "'  name = 'group2' value = '" + Result.d[i].Money + "' rbdtext = '" + Result.d[i].Text + "' rbdMainPack='" + Result.d[i].PackageID + "' > <label for='" + Result.d[i].ID + "'> " + Result.d[i].Text + " </label><br><input type='text' id='txtOther' class='col-md-2 form - control' value='0' /><br>";
                        }
                        }
                    tablestring = tablestring + "</div>";
                    tablestring1 = tablestring1 + "</div>";
                   
                    $("#dvPackageschool").html(tablestring);
                    $("#dvPackagestudent").html(tablestring1);
                    $("#dvPackagesother").html(tablestring2);
                   
                },
                error: function (result) {
                    alert("Error");
                }

            });


        }
        function GetSelected(obj) {
            debugger;
            var tabl = "example";
            
            var amount = 500;
            if (obj.id == "btnScNext") {
                amount = 1000;
                tabl = $("#<%=hftbl.ClientID%>").val();
            }
            if (obj.id == "btnStNext") {
                tabl = $("#<%=hftbl.ClientID%>").val();
            }
            var Total = 0;
            var table = $('#' + tabl).DataTable();
            var data = table.rows('.selected').data();
            var table = "<table class='table table-bordered table-striped'><thead><tr><th>SNo</th><th>Name</th><th>Amount</th></tr></thead><tbody>";
            $('#selectedforPay').html('');
            for (var i = 0; i < data.length; i++) {
                if (obj.id == "btnScNext") {
                    table = table + "<tr><td>" + (i + 1) + "</td><td>" + data[i].SchoolName + "</td><td>" + amount + "</td><tr>";
                }
                else {
                    table = table + "<tr><td>" + (i + 1) + "</td><td>" + data[i].StudentName + "</td><td>" + amount + "</td><tr>";
                }
               
                Total = Total + amount;
            }
            table = table + "<tr><td></td><td>Total</td><td>" + Total + "</td></tr>";
            table = table + "</tbody></table>";
           $("#<%=hfPackageAmount.ClientID%>").val(Total);
            $('#selectedforPay').html(table);
        }
        function SelectAmountID(PackageID, PackageAmount) {
            document.getElementById("<%=hfPackageID.ClientID%>").Value = PackageId;
            document.getElementById("<%=hfPackageAmount.ClientID%>").Value = PackageId;

            alert(document.getElementById("<%=hfPackageID.ClientID%>").Value)
            alert(document.getElementById("<%=hfPackageAmount.ClientID%>").Value)

        }

        $('#step-1').on('click', '.rbd', function () {
            debugger;
            var r = this;
            $('#selectedforPay1').html('');
            var total = 0;
            var i = 1;
            var selectedPacks = "";
            var selectedPackMain = "";
            var table = "<table class='table table-bordered table-striped'><thead><tr><th>SNo</th><th>Name</th><th>Amount</th></tr></thead><tbody>";
            $(".rbd:checked").each(function () {
                var chk = this.checked;
                var ids = this.id;
                var id = ids.split("_");
                selectedPacks = id[1] + "_";
                selectedPackMain = $(this).attr("rbdMainPack") + "_";
                if (chk == true) {

                    if (id[1] != "13") {
                        table = table + "<tr><td>" + i + "</td><td>" + $(this).attr("rbdtext") + "</td><td>" + $(this).val() + "</td></tr>";
                        i = i + 1;
                        total = total + parseInt($(this).val());
                    }
                    else {
                        if ($("#txtOther").val() != "0") {
                            table = table + "<tr><td>" + i + "</td><td>" + $(this).attr("rbdtext") + "</td><td>" + $(this).val() + "</td></tr>";
                            i = i + 1;
                            total = total + parseInt($(this).val());
                        }
                    }
                }
            });




            //if ($("#txtOther").val() != "0") {
            //    table = table + "<tr><td></td><td>Other</td><td>" + $("#txtOther").val() + "</td></tr>";
            //    total = total + parseInt($("#txtOther").val());
            //}


            table = table + "<tr><td></td><td>Total</td><td>" + total + "</td></tr>";
            table = table + "</tbody></table>";

            $('#selectedforPay1').html(table);
            $('#selectedforPay').html('');
            $('#selectedforPay').html(table);
            $("#<%=hfPackageID.ClientID%>").val(selectedPacks);
            $("#<%=hfPackageTypeID.ClientID%>").val(selectedPackMain);

            

        });

      

        function Package(id,Money) {
          

            if (id == 13) {

               // $("#txtOther").show();
               
                $("#<%=hfPackageAmount.ClientID%>").val($("#txtOther").val());
            }
            else {
              //  $("#txtOther").hide();
                $("#<%=hfPackageAmount.ClientID%>").val(Money);
            }

            var tabl = "example";

            var amount = 500;
           
            var table = $('#' + tabl).DataTable();
            var data = table.rows('.selected').data();
            var table = "<table class='table table-bordered table-striped'><thead><tr><th>SNo</th><th>Name</th><th>Amount</th></tr></thead><tbody>";
            $('#selectedforPay').html('');

            table = table + "<tr><td>1</td><td>" + $("#" + id).val() + "</td><td>" + Money + "</td><tr>";
              
               
            
            table = table + "<tr><td></td><td>Total</td><td>" + Money + "</td></tr>";
            table = table + "</tbody></table>";
            $("#<%=hfPackageAmount.ClientID%>").val(Money);
            $('#selectedforPay').html(table);
        }
    </script>


    <script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>
 <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js" type="text/javascript"></script>
 <script src=" https://cdn.datatables.net/fixedcolumns/3.3.2/js/dataTables.fixedColumns.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js " type="text/javascript"></script>
</asp:Content>
