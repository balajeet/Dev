<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutsideMaster.master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="GrameenaVidya.Donate.StudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
 
    <link href="../../CSS/donate.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
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
    <div class="row select-own-school mtb-20" id="dvNewSchool" >
  
  <div class="row" style="text-align:center">
    <h2><u>Student Scholarship Form</u></h2>
  </div>
  <hr />
                       <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="textarea" class="control-label">Name of the Student</label>
                                    <asp:TextBox ID="txtname" CssClass="form-control" cols="40" rows="5" TextMode="MultiLine" runat="server" placeholder="Enter School Name"></asp:TextBox>
                                
                            </div></div>
                            <div class="col-md-6">
                           
                             <div style="text-align:center">
               <div class="image-upload">
  <label for="file-input">
  <img style="height:130px" src="https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0NjQzOTk4OTQ4OTkyMzQy/ansel-elgort-poses-for-a-portrait-during-the-baby-driver-premiere-2017-sxsw-conference-and-festivals-on-march-11-2017-in-austin-texas-photo-by-matt-winkelmeyer_getty-imagesfor-sxsw-square.jpg" alt="Rounded Image" class="rounded img-fluid" >
  </label>

  <input id="file-input" type="file" />
</div>
            </div>
                            </div>
                             
                           </div>
                            
                            <div class="row">
                               <div class="col-md-6"> 
                               <div class="col-md-6"> 
                               <div class="form-group">
                                <label for="textarea2" class="control-label">Date Of Birth</label>
                                <asp:TextBox ID="txtDob" runat="server"  CssClass="form-control" ></asp:TextBox>
                          
                            </div>
                            </div>
                            <div class="col-md-6">
                             <div class="form-group">
                                <label for="textarea2" class="control-label">Grade</label>
                                <asp:TextBox ID="txtGrade" runat="server"  CssClass="form-control" ></asp:TextBox>
                          
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
                                <label for="text1" class="control-label">Cast</label>
                                     <asp:TextBox ID="txtCast" runat="server"  CssClass="form-control" ></asp:TextBox>
                                 </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text2" class="control-label">Relegion</label>
                                     <asp:TextBox ID="txtRelegion" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                           </div>  
                                                               
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text3" class="control-label">Mother Name</label>
                                     <asp:TextBox ID="txtMName" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text4" class="control-label">Occupation</label>
                                     <asp:TextBox ID="txtMOccupation" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                           </div>
                                                      
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text5" class="control-label">Father Name/Guardian Name</label>
                                    <asp:TextBox ID="txtFName" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text6" class="control-label">Occupation</label>
                                     <asp:TextBox ID="txtFOccupation" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                           </div>
                           
                      <div class="row">
                               <div class="col-md-6">  <div class="form-group">
                                <label for="text7" class="control-label">Monthly Income</label>
                                     <asp:TextBox ID="txtMIncome" runat="server"  CssClass="form-control" ></asp:TextBox> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea3" class="control-label">Family Size</label>
                                    <asp:TextBox ID="txtFSize" runat="server"  CssClass="form-control" ></asp:TextBox>
                            </div></div>
                           </div>
                          
                           
                             <div class="row">
                               <div class="col-md-12"> <div class="form-group">
                                 <label for="textarea1" class="control-label">Address & Contact Info</label>
                               
                                <asp:TextBox ID="txtAddress" CssClass="form-control" TextMode="MultiLine" cols="40" rows="5"  runat="server" placeholder="Address "></asp:TextBox>
                            </div></div>
                               <div class="col-md-12"><div class="form-group">
                               <label for="textarea1" class="control-label">Name Of The School & Contact Info</label>
                               
                                <asp:TextBox ID="txtschool" CssClass="form-control" TextMode="MultiLine" cols="40" rows="5"  runat="server" placeholder="Address "></asp:TextBox>
                               </div></div>
                           </div>
                           
                                
                                 <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Name Of The H.M & Contact Info</label>
                               
                                <asp:TextBox ID="txtHM" CssClass="form-control" TextMode="MultiLine" cols="40" rows="5"  runat="server" placeholder="Address "></asp:TextBox>
                                </div></div>
                               
                           </div>
                            <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Reference Friends / Others (1)</label>
                               
                                <asp:TextBox ID="txtRefer1" CssClass="form-control" TextMode="MultiLine" cols="40" rows="5"  runat="server" placeholder="Address "></asp:TextBox>
                                </div></div>
                               
                           </div>
                            <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Reference Friends / Others (2)</label>
                               
                                <asp:TextBox ID="txtRefer2" CssClass="form-control" TextMode="MultiLine" cols="40" rows="5"  runat="server" placeholder="Address "></asp:TextBox>
                                </div></div>
                               
                           </div>
                           <div class="row">
                           <div class="col-md-6">
                           <div class="form-group">
                                  <label for="textarea1" class="control-label">Upload Hard Copy:</label>
                           
                         <input type="file" id="filestudentform" name="img"  />
 </div>
                      
                      </div>     </div>
                           
                            

                      
                    </div>
</div>
</div>
</div>
</asp:Content>
