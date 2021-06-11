<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Donate_New.aspx.cs" Inherits="GrameenaVidya.Donate.Donate_New" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
<script>
    

    function SchoolType(ID) {
        document.getElementById('<%= hdSchoolType.ClientID %>').value = ID;
        if (ID == 1) {
            document.getElementById('divSchoolType').style.display = 'block';
            document.getElementById('divsupportschool').style.display = 'none';
        }
        if (ID == 2) {
            document.getElementById('divsupportschool').style.display = 'block';
            document.getElementById('divSchoolType').style.display = 'none';
        }
    }


    

    var pageUrl = '<%=ResolveUrl("Donate_New.aspx")%>'
    function BindDistricts() {
        
        $.ajax({
            type: "POST",
            url: pageUrl + '/PopulateDistricts',
            data: '{StateID: ' + $('#<%=ddlState.ClientID%>').val() + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnDistrictsPopulated,
            failure: function (response) {
                alert(response.d);
            }
        });
    }

    function OnDistrictsPopulated(response) {


        PopulateControl(response.d, $("#<%=ddlDistrict.ClientID %>"));
        document.getElementById('<%= hdDistrictID.ClientID %>').value = $('#<%=ddlDistrict.ClientID%>').val();

    }

    function PopulateControl(list, control) {
        if (list.length > 0) {
            control.removeAttr("disabled");
            control.empty().append('<option selected="selected" value="0">Please select</option>');
            $.each(list, function () {
                control.append($("<option></option>").val(this['Value']).html(this['Text']));
            });
        }
        else {
            control.empty().append('<option selected="selected" value="0">Not available<option>');
        }
    }

    var pageUrl = '<%=ResolveUrl("Donate_New.aspx")%>'
    function BindSchools() {
        alert("hi");

        $.ajax({
            type: "POST",
            url: pageUrl + '/PopulateSchools',
            data: '{StateID: ' + $('#<%=ddlState.ClientID%>').val() + ', DistrictID: ' + $('#<%=ddlDistrict.ClientID%>').val() + ' }',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSchoolsPopulated,
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    function OnSchoolsPopulated(response) {

        PopulateControl(response.d, $("#<%=ddlSchool.ClientID %>"));

    }


    function OpenFreeUserMessage(ID) {

        document.getElementById('<%= hdUserType.ClientID %>').value = ID;
        $('#overlay3').fadeIn('fast', function () {
            $('#box3').animate({ 'top': '75px' }, 500);
        });
        $(".page-head").removeClass("col-lg-6 col-lg-offset-3").addClass("col-lg-8 col-lg-offset-2");
        var iframe = document.createElement("IcPwd");

        // Point the IFRAME to GenerateFile
        // iframe.src = "ChangePassword.aspx";

    }


    function OpenPackageDetails() {

        $('#overlay3').fadeIn('fast', function () {
            $('#box3').animate({ 'top': '75px' }, 500);
        });
        $(".page-head").removeClass("col-lg-6 col-lg-offset-3").addClass("col-lg-8 col-lg-offset-2");
        var iframe = document.createElement("IcPwd");

    }

    function ClosePopup() {

        $('#box3').animate({ 'top': '-500px' }, 500, function () {
            $('#overlay3').fadeOut('fast');

        });

        document.getElementById("radio1").checked = true;
    }


    function OpenNewUser(ID) {


        document.getElementById('<%= hdUserType.ClientID %>').value = ID;


    }


    function SelectAmountID(ID) {
        if (ID == 9) {

            document.getElementById('divtypeuser').style.display = 'none';
            document.getElementById('divOthermoney').style.display = 'block';
            

        }
        else {

            document.getElementById('divtypeuser').style.display = 'block';
            document.getElementById('divOthermoney').style.display = 'none';
        }

        document.getElementById('<%= hdAmountTypeID.ClientID %>').value = ID;
        if (ID == 1) {
            document.getElementById('<%= hdnewamount.ClientID %>').value = 17500;
        }
        if (ID == 2) {
            document.getElementById('<%= hdnewamount.ClientID %>').value = 25500;
        }
        if (ID == 3) {
            document.getElementById('<%= hdnewamount.ClientID %>').value = 50500;
        }
        if (ID == 4) {
            document.getElementById('<%= hdnewamount.ClientID %>').value = 50500;
        }
        if (ID == 5) {
            document.getElementById('<%= hdnewamount.ClientID %>').value = 17500;
        }
        if (ID == 6) {
            document.getElementById('<%= hdnewamount.ClientID %>').value = 25500;
        }
    
    }


    function GetSchoolProfile() {
        var SchoolID = $('#<%=ddlSchool.ClientID%>').val();
        alert(SchoolID);
        document.getElementById('<%= hdSchoolID.ClientID %>').value = SchoolID;
        

        

        document.getElementById("<%=lnkSchoolProfile.ClientID %>").style.display = 'block';
    }

    function GetCheckOptions(ID) {

        document.getElementById('divcheck').style.display = 'block';
        document.getElementById('<%= hdDonationModeID.ClientID %>').value = ID;


    }

    function CheckprogramType(ID) {

        document.getElementById('<%= hdProgramType.ClientID %>').value = ID;
        document.getElementById('<%= lbladopttext.ClientID %>').value = 'Adopt a Village';
    }

    function GetDonationmodeID(ID) {
        alert(ID);
        document.getElementById('<%= hdDonationModeID.ClientID %>').value = ID;
        if (ID !=4) {
            document.getElementById('divcheck').style.display = 'none';
        
        }

    }


    function GetCheckpickUpID(ID)
     {

         document.getElementById('<%= hdCheckpickupID.ClientID %>').value = ID;
    
    }
    var pageUrl = '<%=ResolveUrl("Donate_New.aspx")%>'
    function BindDonarStates() {
        document.getElementById('<%= hdcountryID.ClientID %>').value = $('#<%=ddlcountry.ClientID%>').val();

        $.ajax({
            type: "POST",
            url: pageUrl + '/PopulateStates',
            data: '{CountryID: ' + $('#<%=ddlcountry.ClientID%>').val() + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnDistrictsPopulated1,
            failure: function (response) {
                alert(response.d);
            }
        });

    }

    function OnDistrictsPopulated1(response) {

        PopulateControl1(response.d, $("#<%=ddlState1.ClientID %>"));


    }


    function PopulateControl1(list, control) {
        if (list.length > 0) {
            control.removeAttr("disabled");
            control.empty().append('<option selected="selected" value="0">Please select</option>');
            $.each(list, function () {
                control.append($("<option></option>").val(this['Value']).html(this['Text']));
            });
        }
        else {
            control.empty().append('<option selected="selected" value="0">Not available<option>');
        }
    }


    function BindDonarStateID() {
        document.getElementById('<%= hdDonarStateID.ClientID %>').value = $('#<%=ddlState1.ClientID%>').val();

    }

    function ChangeOthermoney() {

        var CountID = $('#<%=ddlChildren.ClientID%>').val();
        var Amount = CountID * 200;
        alert(Amount);
        //document.getElementById('<%= lblAmount.ClientID %>').value = Amount;

        document.getElementById('<%= hdnewamount.ClientID %>').value = Amount;

        
    }

</script>


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
<%--<asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>--%>
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
                                <li><i class="fa fa-angle-double-right"></i><asp:LinkButton ID="lnkAdoptSchool" runat="server" 
                                        onclick="lnkAdoptSchool_Click">Adopt-a-School</asp:LinkButton>
                                <li><i class="fa fa-angle-double-right"></i><asp:LinkButton ID="lnkAdoptVillage" 
                                        runat="server" onclick="lnkAdoptVillage_Click">Adopt-a-Village</asp:LinkButton>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Digital
                                    Libraries</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-Donar </a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-FAQ Libraries</a></li>
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
                    <h1>
                        <asp:Label ID="lbladopttext" runat="server" Text="Adopt a School"></asp:Label></h1>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                               <span style="color:Green; margin-right:5px;">Step 1 :</span>Select Package </label></div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:RadioButton ID="rdbPackage1" CssClass="radio" runat="server" Text="Rs. 17500 to Content"
                                onclick="Javascript:SelectAmountID(1);" GroupName="Package" />
                            <asp:RadioButton ID="rdbPackage2" CssClass="radio" runat="server" Text="Rs. 25500 to Smart Content"
                                onclick="Javascript:SelectAmountID(2);" GroupName="Package" />
                            <asp:RadioButton ID="rdbPackage3" CssClass="radio" runat="server" Text="Rs. 50500 to Hardware"
                                onclick="Javascript:SelectAmountID(3);" GroupName="Package" />
                                
                                 
                                
                        </div>
                        <div class="col-md-5">
                            <asp:RadioButton ID="rdbPackage4" CssClass="radio" runat="server" Text="Rs. 50500 to Smart Content"
                                onclick="Javascript:SelectAmountID(4);" GroupName="Package" />
                            <asp:RadioButton ID="rdbPackage5" CssClass="radio" runat="server" Text="Rs. 17500 to Hardware"
                                onclick="Javascript:SelectAmountID(5);" GroupName="Package" />
                            <asp:RadioButton ID="rdbPackage6" CssClass="radio" runat="server" Text="Rs. 25500 to Content"
                                onclick="Javascript:SelectAmountID(6);" GroupName="Package" />
                                 
                        </div>
                  
                      
                       
                    </div>

                    <div class="row" >

                    <div class="col-md-2 col-md-offset-1" style="margin-top:-12px;">
                        <div class="left" >
                             <asp:RadioButton ID="rdbPackageother7" CssClass="radio" runat="server" Text="Others"
                                GroupName="Package" onclick="Javascript:SelectAmountID(9);" />
                            
                        </div>

                    </div>

                    <div id="divOthermoney" style="display:none;">
                      <div class="col-md-5" style="margin-top:-5px; margin-left:-35px; ">
                        <div class="left" >
                         
                           <asp:DropDownList ID="ddlChildren" runat="server" onchange="ChangeOthermoney();">
                                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                            </asp:DropDownList>
                                                 
 <b>&nbsp;&nbsp;&nbsp;Rs.<asp:Label ID="lblAmount" runat="server" Text="200"></asp:Label>/-</b>    &nbsp;Per child
                        </div>

                    </div>

                    <div class="col-md-12 col-md-offset-1" style="margin-top:-12px; margin-left:90px;">
                        (Rs. 200/- per each child. Donate minimum one child )
                    </div>
                    </div>

                  
                   
                                
                                
               
                    
                    

                   
                    
                    
                    </div>
                    <div id="divtypeuser">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color:Green; margin-right:5px;">Step 2 :</span>Type of School</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1">
                                <asp:RadioButton ID="rbSchoolType1" CssClass="radio" runat="server" Text="Select School"
                                    onclick="Javascript:SchoolType(1);" GroupName="SchoolType1" />
                            </div>
                            <div class="col-md-5">
                                <asp:RadioButton ID="rbSchoolType2" CssClass="radio" runat="server" Text="Support my School"
                                    onclick="Javascript:SchoolType(2);" GroupName="SchoolType1" />
                            </div>
                        </div>
                        <div class="row" id="divSchoolType" style="display: none;">
                            <div class="col-md-3 col-md-offset-1">
                                <asp:DropDownList ID="ddlState" runat="server" Width="100%" CssClass="donate-input"
                                    DataTextField="StateName" DataValueField="StateID" onchange="BindDistricts();">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:DropDownList ID="ddlDistrict" runat="server" Width="100%" CssClass="donate-input"
                                    DataTextField="DistrictName" DataValueField="DistrictID" onchange="BindSchools();">
                                </asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <div class="col-md-6 col-md-offset-1">
                                <asp:DropDownList ID="ddlSchool" runat="server" Width="100%" CssClass="donate-input"
                                    DataTextField="SchoolName" onchange="GetSchoolProfile();" DataValueField="S_ID">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:LinkButton ID="lnkSchoolProfile" runat="server" Style="margin-left: -20px; padding-top: 10px;
                                    font-size: 11px; color: Blue; display: none;">View School Profile</asp:LinkButton>
                            </div>
                            <br />
                            &nbsp;
                        </div>
                        <div class="row" id="divsupportschool" style="display: none;">
                            <div class="col-md-3 col-md-offset-1">
                                <asp:DropDownList ID="ddlsuppState" runat="server" Width="100%" CssClass="donate-input"
                                    DataTextField="StateName" DataValueField="StateID" onchange="BindDistricts();">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:DropDownList ID="ddlsuppdistrict" runat="server" Width="100%" CssClass="donate-input"
                                    DataTextField="DistrictName" DataValueField="DistrictID" onchange="BindSchools();">
                                </asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <div class="col-md-3 col-md-offset-1">
                                <asp:TextBox ID="txtsuppSchoolName" runat="server" placeholder="SchoolName"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtsupppName" runat="server" placeholder="PrincipalName"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <div class="col-md-3 col-md-offset-1">
                                <asp:TextBox ID="txtsuppMobilenum" runat="server" placeholder="MobileNumber"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtsuppZipcode" runat="server" placeholder="ZipCode"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                                <span style="color:Green; margin-right:5px;">Step 3 :</span>Type of User</label></div>
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
                                <span style="color:Green; margin-right:5px;">Step 4 :</span>Donar Details</label></div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtname" CssClass="donate-input" Width="100%" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtemail" CssClass="donate-input" Width="100%" runat="server" placeholder="Email Address"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtAddress" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Address1"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtlocation" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="Address2"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:DropDownList ID="ddlcountry" CssClass="donate-input" runat="server" DataTextField="Countryname"
                                DataValueField="CountryID" onchange="BindDonarStates();" Width="100%">
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4">
                            <asp:DropDownList ID="ddlState1" CssClass="donate-input" runat="server" Width="100%"
                                onchange="BindDonarStateID();">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:TextBox ID="txtpincode" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="pincode"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtMobileNum" CssClass="donate-input" Width="100%" runat="server"
                                placeholder="MobileNumber"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                                <span style="color:Green; margin-right:5px;">Step 5 :</span>Donation Mode</label></div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1">
                            <asp:RadioButton ID="rbdebit" CssClass="radio" runat="server" Text="Debit Card" onchange="javascript:GetDonationmodeID(1);"
                                GroupName="SchoolType" />
                            <asp:RadioButton ID="rbcredit" CssClass="radio" runat="server" Text="Credit Card"
                                onchange="javascript:GetDonationmodeID(2);" GroupName="SchoolType" />
                        </div>
                        <div class="col-md-8">
                            <asp:RadioButton ID="rbnetbanking" CssClass="radio" runat="server" Text="Net Banking"
                                onchange="javascript:GetDonationmodeID(3);" GroupName="SchoolType"  />
                            <asp:RadioButton ID="rbchequee" CssClass="radio" runat="server" Text="Write a Chequee/DD"
                                onchange="GetCheckOptions(4);" GroupName="SchoolType"  />
                            <div class="row" id="divcheck" style="display: none;">
                                <div class="col-md-12 col-md-offset-1">
                                    <asp:RadioButton ID="rbchcollect" CssClass="radio-check" runat="server" Text="&nbsp; Collect the check"
                                        onchange="javascript:GetCheckpickUpID(1);" GroupName="SchoolType2" />&nbsp;
                                    <asp:RadioButton ID="rbchpost" CssClass="radio-check" runat="server" Text="&nbsp;I will post the check"
                                        onchange="javascript:GetCheckpickUpID(2);" GroupName="SchoolType2" />
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
                            <asp:LinkButton ID="lbDonate" runat="server" CssClass="btn btn-info" Text="Pay Now"
                                OnClick="lbDonate_Click"></asp:LinkButton>
                        </div>
                    </div>
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
            <label>
                <a id="A6" onclick="ForgetPwd();" class="left hover-underline text-right">Forgot Password?</a></label>
            <%--<input type="button" onclick="ForgetPwd();" class="left hover-underline text-right" value="Forgot Password" />--%>
        </div>
        <div id="divForpassword" style="display: none;">
            <h4>
                Forget Password</h4>
            <asp:UpdatePanel ID="upRegister" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-9  col-md-push-1" id="divMain" style="display: block;">
                                <label>
                                    Email Address:</label>
                                <br />
                                <asp:TextBox ID="txtFEmail" runat="server" CssClass="form-control" placeholder="Enter Email address"></asp:TextBox>
                                <asp:Label ID="lblFEmail" runat="server" Text="Please provide your login Username"
                                    Style="display: none; color: Red;"></asp:Label>
                                <asp:Label ID="lblInvalidEmail" runat="server" Text="Please enter a valid Username."
                                    Style="display: none; color: Red;"></asp:Label>
                                <br />
                                <asp:LinkButton ID="lbSubmit" runat="server" CssClass="btn btn-success right" OnClientClick="javascript:return forgetSendmail();"
                                    Width="200">
                                            Get Password
                                </asp:LinkButton>
                            </div>
                            <div class="col-md-12  text-center" id="divMessage" style="display: none;">
                                <span style="font-size: 15px; line-height: 12px;">
                                    <h1>
                                        <i class="fa fa-check-circle"></i>
                                    </h1>
                                    Your Login credentials has been sent to your email.<br />
                                    <br />
                                    Please check your email
                                    <br />
                                    <br />
                                    <input type="button" onclick="GetLoginPopup()" class="btn btn-primary" value="Log In" />
                                </span>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
<%--hiddenfields--%>

<asp:HiddenField ID="hdAmountTypeID" runat="server" Value="0"/>
<asp:HiddenField ID="hdSchoolType" runat="server" Value="0" />
<asp:HiddenField ID="hdProgramType" runat="server" Value="1" />
<asp:HiddenField ID="hdUserType" runat="server" Value="1" />
<asp:HiddenField ID="hdDonationModeID" runat="server" />
<asp:HiddenField ID="hdStateID" runat="server" />
<asp:HiddenField ID="hdDistrictID" runat="server" />
<asp:HiddenField ID="hdSchoolID" runat="server" />
<asp:HiddenField ID="hdCheckpickupID" runat="server" Value="0" />
<asp:HiddenField ID="hdcountryID" runat="server" />
<asp:HiddenField ID="hdDonarStateID" runat="server" />
<asp:HiddenField ID="hdnewamount" runat="server" />

 <script src="../js/jquery-1.9.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <script src="../js/script.js"></script>
    <script src="../js/owl.carousel.js"></script>



</asp:Content>
