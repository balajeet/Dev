<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="GrameenaVidya.Donate.Donate"  %>
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
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="container">
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
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate_New.aspx" onclick="Javascript:CheckprogramType(1);">
                                    Adopt-a-School</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate_New.aspx" onclick="Javascript:CheckprogramType(2);">
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
                         <div class="col-md-6">  <asp:RadioButton ID="RadioButton1" CssClass="radio" runat="server" Text="INDIA"
                                onclick="Javascript:SelectPackage(3);" GroupName="Package" AutoPostBack="true" OnCheckedChanged="rdbPackage3_CheckedChanged"/></div>
                         <div class="col-md-6"> <asp:RadioButton ID="RadioButton2" CssClass="radio" runat="server" Text="USA"
                                onclick="Javascript:SelectPackage(4);" GroupName="Package" AutoPostBack="true" OnCheckedChanged="rdbPackage4_CheckedChanged"/></div>
                          
                                 
                           
                                 </ContentTemplate>
                                  </asp:UpdatePanel>
                        </div>
                        </div>
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
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                          <ContentTemplate>
                         
                            <asp:RadioButton ID="rdbPackage3" CssClass="radio" runat="server" Text="Adopt-a- School"
                                onclick="Javascript:SelectPackage(3);" GroupName="Package" AutoPostBack="true" OnCheckedChanged="rdbPackage3_CheckedChanged"/>
                                 
                            <asp:RadioButton ID="rdbPackage4" CssClass="radio" runat="server" Text="Adopt-a- Student"
                                onclick="Javascript:SelectPackage(4);" GroupName="Package" AutoPostBack="true" OnCheckedChanged="rdbPackage4_CheckedChanged"/>
                                 </ContentTemplate>
                                  </asp:UpdatePanel>
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
                    
                    <div id="divSchool"  class="package">
                     <%--SCHOOL--%>

                    <div class="row">
                        <div class="col-md-12">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                           <ContentTemplate>
                            <label class="donate-label">

                               <span style="color:Green; margin-right:5px;">Step 3 :</span>Adopt-a-School</label>
                                 
                            <asp:Button ID="btnSchool" class="btn btn-primary" style="float:right;margin-top: 24px;" runat="server" Text="Existing School List" OnClick="btnSchool_Click" autopostback="false"/>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                               </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5 col-md-offset-1">
                            <asp:TextBox ID="txtname" CssClass="donate-input" Width="100%" runat="server" placeholder="Enter School Name"></asp:TextBox>
                            <asp:TextBox ID="txtAddress" CssClass="donate-input" Width="100%" runat="server" placeholder="Address "></asp:TextBox>
                            <asp:TextBox ID="txtSchoolAmount" Text="50000" CssClass="donate-input" Width="100%" runat="server" placeholder="Enter Donation Amount"></asp:TextBox>
                        </div>
                        <div class="col-md-5">
                           
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

                    
                       
                    </div>

                    <%--STUDENT--%>

                    <div id="divStudent"  class="package">

                    <div class="row">
                        <div class="col-md-12">
                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                    <ContentTemplate>
                            <label class="donate-label">
                               <span style="color:Green; margin-right:5px;">Step 3 :</span>ADOPT STUDENT</label>
                               
                             <asp:Button ID="btnStudents" class="btn btn-primary" style="float:right;margin-top: 20px;" runat="server" Text="Existing Student List"  autopostback="false" OnClick="btnStudents_Click"/>
                             </ContentTemplate>
                             </asp:UpdatePanel>
                    </div>
                    </div>

                    <div class="row">
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

                    
                  
                        
                    </div>

                    

                    <%--CLASSROOM--%>

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

                    <%--DONAR NAME--%>
                    <div class="divDonarDetails" >
                   
                         <div class="row">
                        <div class="col-md-12">
                           <asp:UpdatePanel ID="Updatepanel58" runat="server">
                           <ContentTemplate>
                            
                            <label class="donate-label">
                                <span style="color:Green; margin-right:5px;">Step 4 :</span>Donar Details</label>
                                 
                      <asp:Button ID="btnDoners" class="btn btn-primary" style="float:right;margin-top: 27px;" runat="server" Text="Existing Donars List" OnClick="btnDoners_Click" Visible="false"/>
                     </ContentTemplate>
                    </asp:UpdatePanel>
                    </div>
                    </div>

                    <div class="row">
                     
                        <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtDonarname" CssClass="donate-input" Width="100%" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtDonarEmail" CssClass="donate-input" Width="100%" runat="server" placeholder="Email Address"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtDonarAddress" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Address1"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtDonarLocation" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Address2"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                        <asp:UpdatePanel ID="Updatepanel8" runat="server">
                           <ContentTemplate>
                            <asp:DropDownList ID="ddlcountry" CssClass="donate-input" runat="server" DataTextField="Countryname" AutoPostBack="true"
                                DataValueField="CountryID" Width="100%" onselectedindexchanged="ddlcountry_SelectedIndexChanged">
                            </asp:DropDownList>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                           <%-- <asp:TextBox ID="txtDonarCountry" CssClass="donate-input" placeholder="Country Name" runat="server"></asp:TextBox>--%>
                        </div>
                        <div class="col-md-4">
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
                        <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtDonarPin" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="pincode"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtDonarMobile" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="MobileNumber"></asp:TextBox>
                        </div>
                    </div>

                    
                  
                    
                    </div>

                    <%--DONATION MODE--%>

                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                                <span style="color:Green; margin-right:5px;">Step 5 :</span>Donation Mode</label></div>
                    </div>
                    <div class="row">
                        <%--<div class="col-md-3 col-md-offset-1">
                            <asp:RadioButton ID="rbdebit" CssClass="radio" runat="server" Text="Debit Card" onchange="javascript:GetDonationmodeID(1);"
                                GroupName="PaymentMode" />
                            <asp:RadioButton ID="rbcredit" CssClass="radio" runat="server" Text="Credit Card"
                                onchange="javascript:GetDonationmodeID(2);" GroupName="PaymentMode" />
                        </div>--%>
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
                                Text="Pay Now" onclick="lbDonate_Click"
                                ></asp:LinkButton>
                        </div>
                        <asp:Label ID="lblDError" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lblScError" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lblStudentsError" runat="server" Text="" Visible="false"></asp:Label>
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
                      <div class="col-md-11 col-md-offset-1 edited-table2">
                      <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                           <ContentTemplate>
                       <asp:GridView ID="gvSchoollist" runat="server" CssClass="thead" AutoGenerateColumns = "false">
                                <Columns>
                                    <asp:TemplateField>
                                    <ItemTemplate>
                                        <input type="radio" name="hfSchoolID" value='<%#Eval("SchoolID")%>' />
                                        <%--<asp:RadioButton ID="rbtnSchool" runat="server" onclick="RadioCheckSchool(this);"/>
                                        <asp:HiddenField ID="hfSchoolID" runat="server" Value = '<%#Eval("SchoolID")%>' />--%>
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="SchoolID"
                                        HeaderText="SchoolID"  />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="SchoolName"
                                        HeaderText="School Name"  />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="CountryName"
                                        HeaderText="Country Name" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="StateName" 
                                        HeaderText="State Name"/>
                                   
                                     <asp:BoundField ItemStyle-Width="150px" DataField="DistrictName" 
                                        HeaderText="District Name"/>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="LocationName" 
                                        HeaderText="Location Name"/>
                                    </Columns>
                            
                            </asp:GridView>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Label ID="lblMsg" runat="server" Text="" Visible="false" ></asp:Label>
                         
                        <asp:Button ID="btnSelect" runat="server" Text="Send" OnClick="btnSelect_Click" CssClass="btn btn-default"/>
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Close</button>
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
                       
                        <asp:Button ID="btnStudent" runat="server" Text="Send" CssClass="btn btn-default" OnClick="btnStudent_Click"/>
                       
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
    <asp:HiddenField ID="hfUserIDFinal" runat="server" />
    <input type="hidden" id="hfID" />
    
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
    function RadioCheckSchool(rb) {
        var gv = document.getElementById("<%=gvSchoollist.ClientID%>");
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

        function SelectPackage(PackageId) {
             
            $("#hfID").val(PackageId);
            document.getElementById("<%=hfPackageTypeID.ClientID%>").Value = PackageId;
            switch (PackageId) {
                case 1:
                    $(".package").hide();
                    $("#divDigitalPatasala").show();
                    
                    break;
                case 2:
                    debugger;
                    $(".package").hide();
                    $("#divClassroom").show();
                     
                    break;
                case 3:
                    $(".package").hide();
                    $("#divSchool").show(); 
                    break;
                case 4:
                    $(".package").hide();
                    $("#divStudent").show();
                   
                    break;
                case 5:
                    $(".package").hide();
                    $("#divOther").show();
                   
                    break;
            }


        }

        function SelectAmountID(PackageID, PackageAmount) {
            document.getElementById("<%=hfPackageID.ClientID%>").Value = PackageId;
            document.getElementById("<%=hfPackageAmount.ClientID%>").Value = PackageId;

            alert(document.getElementById("<%=hfPackageID.ClientID%>").Value)
            alert(document.getElementById("<%=hfPackageAmount.ClientID%>").Value)

        }
    </script>
</asp:Content>
