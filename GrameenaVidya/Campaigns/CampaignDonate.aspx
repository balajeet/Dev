<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="CampaignDonate.aspx.cs" Inherits="GrameenaVidya.Campaigns.CampaignDonate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
   <script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>


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
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="row d">
            <div class="col-md-3">
                <div class="row">
                    <!-- How you can help box start -->
                    <div class="col-md-12">
                        <div class="sidebar-donate-blk">
                            <h3>
                                Programs</h3>
                            <ul class="list-style">
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-background.aspx">
                                    Adopt-a-School</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-mission.aspx">
                                    Adopt-a-Village</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Digital
                                    Libraries</a></li>
                            </ul>
                        </div>
                    </div>



                    <br />


                  <div class="col-md-12 event-strips">
                    <div class="blk school-metric">
                      <h2>School Metrics</h2>
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
          
                      </ul>
          
         
                      </marquee><br><br>
         
                    </div>
                  </div>
                  


                </div>
            </div>
            <div class="col-md-9">
                <div class="sidebar-donate">
                   
                        <h1>
                           Start a Campaign</h1>
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                   Enter Campaign Details</label></div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                 <asp:TextBox ID="txtCampName" runat="server" CssClass="donate-input" placeholder="Enter Campaign Name" ></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                               <asp:TextBox ID="txtCampDate" runat="server" CssClass="donate-input" placeholder="Campaign StartDate" ></asp:TextBox>
                            </div>
                        </div>

                            <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:FileUpload ID="fpupload" runat="server" CssClass="donate-input" />
                            </div>
                            <div class="col-md-4">
                             <asp:TextBox ID="txtCampdescription" runat="server" CssClass="donate-input" Text="Enter Campaign Description"></asp:TextBox>
                            </div>
                        </div>
                     
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    Enter your amount</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1">
                                <asp:RadioButton ID="rdbPackageother7" CssClass="radio" runat="server" Text="Other Amount &nbsp; Rs."
                                    GroupName="Package" />
                            </div>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtOtherAmount" CssClass="donate-input"  style="margin-left:-50px;" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    Type of School</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1">
                                <asp:RadioButton ID="rbSchoolType1" CssClass="radio" runat="server" Text="Select School" onclick="Javascript:SchoolType(1);"
                                    GroupName="SchoolType" />
                            </div>
                            <div class="col-md-5">
                                <asp:RadioButton ID="rbSchoolType2" CssClass="radio" runat="server" Text="Support my School" onclick="Javascript:SchoolType(2);"
                                    GroupName="SchoolType" />
                            </div>
                        </div>
                        <div class="row" id="divSchoolType" style="display:none;">
                            <div class="col-md-3 col-md-offset-1">
                              
                                <asp:DropDownList ID="ddlState"  runat="server" Width="100%" CssClass="donate-input"  DataTextField="StateName" DataValueField="StateID" onchange="BindDistricts();">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                               
                                <asp:DropDownList ID="ddlDistrict" runat="server" Width="100%" CssClass="donate-input" DataTextField="DistrictName" DataValueField="DistrictID" onchange="BindSchools();">
                                </asp:DropDownList>
                            </div>
                           <br /> <br />
                            <div class="col-md-6 col-md-offset-1">
                               
                                <asp:DropDownList ID="ddlSchool" runat="server" Width="100%" CssClass="donate-input" DataTextField="SchoolName" DataValueField="S_ID"></asp:DropDownList>
                                
                            </div>
                            <div class="col-md-3">
                                <asp:LinkButton ID="lnkSchoolProfile" runat="server" style="margin-left:-20px; padding-top:10px; font-size:11px; color:Blue;">View School Profile</asp:LinkButton>
                            </div>
                            <br />&nbsp;
                           
                        </div>
                            <div class="row" id="divsupportschool" style="display:none;">
                            <div class="col-md-3 col-md-offset-1">
                              
                                <asp:DropDownList ID="DropDownList1"  runat="server" Width="100%" CssClass="donate-input"  DataTextField="StateName" DataValueField="StateID" onchange="BindDistricts();">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                               
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="100%" CssClass="donate-input" DataTextField="DistrictName" DataValueField="DistrictID" onchange="BindSchools();">
                                </asp:DropDownList>
                            </div>
                           <br /> <br />
                            <div class="col-md-3 col-md-offset-1">
                               
                               <asp:TextBox ID="textbox5" runat="server" placeholder="SchoolName"></asp:TextBox>
                                
                            </div>
                            <div class="col-md-3">
                               <asp:TextBox ID="textbox1" runat="server" placeholder="SchoolName"></asp:TextBox>
                            </div>
                            <br /><br />

                             <div class="col-md-3 col-md-offset-1">
                               
                               <asp:TextBox ID="textbox2" runat="server" placeholder="SchoolName"></asp:TextBox>
                                
                            </div>
                            <div class="col-md-3">
                               <asp:TextBox ID="textbox3" runat="server" placeholder="SchoolName"></asp:TextBox>
                            </div>
                           
                        </div>
                       
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    Type of User</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1">

                            <input type="radio" name="name" id="radio1" value="1" checked="checked" onclick="OpenNewUser(1);" />
                                                    New User? Sign Up &nbsp;&nbsp;&nbsp;&nbsp;
                                                  


                               
                            </div>
                            <div class="col-md-5">
                                 <input type="radio" name="name" id="radio2" value="1" onclick="OpenFreeUserMessage(2);" />
                                                    Existing User
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    Donar Details</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtname" CssClass="donate-input"  Width="100%" runat="server" placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtemail" CssClass="donate-input"  Width="100%" runat="server" placeholder="Email Address"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtAddress" CssClass="donate-input" Width="100%" runat="server" placeholder="Address1"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtAddress2" CssClass="donate-input"  Width="100%" runat="server" placeholder="Address2"></asp:TextBox>
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:DropDownList ID="ddlcountry" CssClass="donate-input" runat="server" Width="100%">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlState1" CssClass="donate-input" runat="server" Width="100%">
                                </asp:DropDownList>
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtpincode" CssClass="donate-input"  Width="100%" runat="server" placeholder="pincode"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtMobileNum" CssClass="donate-input"  Width="100%" runat="server" placeholder="MobileNumber"></asp:TextBox>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    Donation Mode</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1">
                                <asp:RadioButton ID="RadioButton9" CssClass="radio" runat="server" Text="Debit Card"
                                    GroupName="SchoolType" />
                                    <asp:RadioButton ID="RadioButton10" CssClass="radio" runat="server" Text="Credit Card"
                                    GroupName="SchoolType" />
                            </div>
                            
                            <div class="col-md-8">
                                <asp:RadioButton ID="RadioButton11" CssClass="radio" runat="server" Text="Net Banking"
                                    GroupName="SchoolType" />
                                    <asp:RadioButton ID="RadioButton1" CssClass="radio" runat="server" Text="Write a Chequee/DD"
                                    GroupName="SchoolType" />

                                    <div class="row" id="divcheck">
                                        <div class="col-md-12 col-md-offset-1">
                                            <asp:RadioButton ID="RadioButton2" CssClass="radio-check" runat="server" Text="&nbsp; Collect the check"
                                            GroupName="SchoolType" />&nbsp;
                                            <asp:RadioButton ID="RadioButton3" CssClass="radio-check" runat="server" Text="&nbsp;No i will post the check"
                                            GroupName="SchoolType" />
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
                                <asp:LinkButton ID="lbDonate" runat="server" CssClass="btn btn-info" Text="Pay Now"></asp:LinkButton>
                            </div>
                        </div>
                        <%--   <div class="row">
                <br />&nbsp;
                <div class="col-md-11 col-md-offset-1">
                    <div class="panel panel-primary">
                      <div class="panel-heading">
                        <h3 class="panel-title">Schoold Details</h3>
                      </div>
                      <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3 pic">
                                <img src="../images/SchoolImages/100_2IMG_20150109_134028.jpg" class="img-responsive" />
                            </div>
                            <div class="col-md-9">
                                <h2>Selected School name</h2>
                                <p>School Description</p>
                                <address>School Address</address>
                                <a href="#" class="btn btn-info btn-sm">Vew Profile</a>
                            </div>
                        </div>
                      </div>
                    </div>
                </div>
            </div>--%>
                   
                </div>
            </div>
        </div>
    </div>


      <div class="overlay3" id="overlay3" style="display: none;">
        </div>
        <div class="box3" id="box3" style="width: 400px; margin: auto; background: #f2f2f2;">
            <a class="boxclose3" id="boxclose" onclick="javascript:ClosePopup();">&#215;</a>
            <div id="ExistingUser">
            <h4>
                Existing User</h4>
            <div class="form-group">
                <asp:TextBox ID="txtUserName" runat="server" type="email" class="form-control" placeholder="Enter Email Address"
                    AutoComplete="off" ValidationGroup="LogIn"></asp:TextBox>
                <asp:Label ID="lblUNameEmpty" runat="server" Text="Please Enter Email Address" Style="display: none;
                    color: Red;"></asp:Label>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control"
                    placeholder="Enter Password"></asp:TextBox>
                <asp:Label ID="lblUPwdEmpty" runat="server" Text="Please Enter Password" Style="display: none;
                    color: Red;"></asp:Label>
            </div>
            <img id="imgloading" src="../img/loader.gif" style="display: none;">
            <input type="button" onclick="GO()" class="btn btn-primary" value="Log In" />
            <asp:Label ID="lblUNameError" runat="server" Text="User Name and Password Does Not Match"
                Style="display: none; color: Red;"></asp:Label>
                       <label> <a id="A6" onclick="ForgetPwd();"   class="left hover-underline text-right">
                            Forgot Password?</a></label>
                  <%--<input type="button" onclick="ForgetPwd();" class="left hover-underline text-right" value="Forgot Password" />--%>
                </div>
          
            



                   <div id="divForpassword" style="display:none;">
        
            <h4>
                Forget Password</h4>
                <asp:UpdatePanel ID="upRegister" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
                   <div class="form-group">
                     <div class="row">
                                    <div class="col-md-9  col-md-push-1"  id="divMain" style="display:block;">
                                        <label>
                                            Email Address:</label> <br />
                                        <asp:TextBox ID="txtFEmail"  runat="server" CssClass="form-control" placeholder="Enter Email address"></asp:TextBox>
                                        <asp:Label ID="lblFEmail" runat="server" Text="Please provide your login Username" Style="display: none; color: Red;"></asp:Label> 
                                          <asp:Label ID="lblInvalidEmail" runat="server" Text="Please enter a valid Username." Style="display: none; color: Red;"></asp:Label> 
                                        <br />
                                        
                                        <asp:LinkButton ID="lbSubmit" runat="server"  CssClass="btn btn-success right" OnClientClick="javascript:return forgetSendmail();"
                                            Width="200">
                                            Get Password
                                           </asp:LinkButton>
                                       
                                    </div>

                                      <div class="col-md-12  text-center"  id="divMessage" style="display:none;">
                                        <span style="font-size:15px; line-height:12px;">
                                            <h1><i class="fa fa-check-circle"></i></h1>
                                            Your Login credentials has been sent to your email.<br /><br /> Please check your email
                                          <br />  <br /><input type="button" onclick="GetLoginPopup()" class="btn btn-primary" value="Log In" />
                                        
                                        </span>
                                      
                                        
                                    </div>
                                   

                                </div>
            </div>

            </ContentTemplate>
            </asp:UpdatePanel>
          
        
        </div>
        </div>
    
     <script src="../js/jquery-1.9.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <script src="../js/script.js"></script>
    <script src="../js/owl.carousel.js"></script>
    
    

</asp:Content>
