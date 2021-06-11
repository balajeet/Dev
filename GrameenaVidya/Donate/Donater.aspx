<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true"
    CodeBehind="Donater.aspx.cs" Inherits="GrameenaVidya.Donate.Donater" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
         #mask
    {
        position: fixed;
        left: 0px;
        top: 0px;
        z-index: 4;
        opacity: 0.4;
        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=40)"; /* first!*/
        filter: alpha(opacity=40); /* second!*/
        background-color: gray;
        display: none;
        width: 100%;
        height: 100%;
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
    <style>
        .verticalscroll
        {
            overflow-x: hidden;
            overflow-y: auto;
            background-color: #2d80e8;
            width: 350px;
            height: 150px;
        }
        
        
        .my-radio
        {
        }
        
        
        
        .my-radio input[type=radio]
        {
            position: absolute;
            z-index: -1000;
            left: -1000px;
            overflow: hidden;
            clip: rect(0 0 0 0);
            height: 1px;
            width: 1px;
            margin: -1px;
            padding: 0;
            border: 0;
        }
        
        .my-radio input[type=radio] + label
        {
            padding-left: 21px;
            height: 16px;
            display: inline-block;
            line-height: 16px;
            background-repeat: no-repeat;
            background-position: 0 0;
            font-size: 16px;
            font-weight: bold;
            vertical-align: middle;
            cursor: pointer;
        }
        
        .my-radio input[type=radio]:checked + label
        {
            background-position: 0 -16px;
        }
        .my-radio label
        {
            background-image: url(http://csscheckbox.com/checkboxes/u/csscheckbox_f945a072ebe51ddf7bc28f91d6899e2e.png);
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
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
    </style>
    <script>



        $(function () {

            var $ddl = $("select[name$=ddlcountryies]");
            var $ddlstate = $("select[name$=ddldonarstate]");
            $('#ContentPlaceHolder1_hdUserTypeID').val(1);


            $ddl.focus();
            $ddl.bind("change keyup", function () {
                debugger;
                if ($(this).val() != "0") {
                    $('#ContentPlaceHolder1_hdstate').val($(this).val());
                    BindDropDowns("State", $(this).val(), "ddldonarstate");
                    $ddlstate.fadeIn("slow");

                }

                //                else {
                //                    $ddlstate.fadeOut("slow");
                //                }

            });






        });





        function BindDropDowns(ddlType, ID, ControlName) {

            debugger;


            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Donater.aspx/BindDropDowns",
                data: "{ddlType:'" + ddlType + "',ID:'" + ID + "'}",
                dataType: "json",

                success: function (r) {
                    var ddl = $("[id*=" + ControlName + "]");
                    ddl.empty().append('<option selected="selected" value="0">Please select</option>');
                    $.each(r.d, function () {
                        ddl.append($("<option></option>").val(this['Value']).html(this['Text']));
                    });

                    if (ControlName == "ddldonarstate") {


                        $("select#ContentPlaceHolder1_ddldonarstate").val($('#ContentPlaceHolder1_hdstate').val());

                    }


                },
                error: function (Result) {

                }
            });


        }
        BindDropDowns("Country", "", "ContentPlaceHolder1_ddlcountry");

        function OpenNewUser(ID) {
            debugger;


            $('#ContentPlaceHolder1_ddlcountryies').css('display', 'block');
            $('#ContentPlaceHolder1_ddldonarstate').css('display', 'block');
            $('#ContentPlaceHolder1_txtpwd').css('display', 'block');
            $('#ContentPlaceHolder1_txtrepwd').css('display', 'block');




            $('#ContentPlaceHolder1_hdUserTypeID').val(ID);

            $('#ContentPlaceHolder1_txtDonarname').val("");
            $('#ContentPlaceHolder1_txtDonarEmail').val("");
            $('#ContentPlaceHolder1_txtDonarAddress').val("");
            $('#ContentPlaceHolder1_txtDonarLocation').val("");
            $('#ContentPlaceHolder1_txtDonarPin').val("");
            $('#ContentPlaceHolder1_txtDonarMobile').val("");
            $('#ContentPlaceHolder1_txtDonarCountry').val("");
            $('#ContentPlaceHolder1_txtDonarState').val("");
            $('#ContentPlaceHolder1_txtDonarname').focus("");
            $('#ContentPlaceHolder1_txtDonarname').attr('readonly', false);
            $('#ContentPlaceHolder1_txtDonarEmail').attr('readonly', false);
            $('#ContentPlaceHolder1_txtDonarAddress').attr('readonly', false);
            $('#ContentPlaceHolder1_txtDonarLocation').attr('readonly', false);
            $('#ContentPlaceHolder1_txtDonarPin').attr('readonly', false);
            $('#ContentPlaceHolder1_txtDonarMobile').attr('readonly', false);
            $('#ContentPlaceHolder1_txtDonarCountry').attr('readonly', false);
            $('#ContentPlaceHolder1_txtDonarState').attr('readonly', false);

        }

        function OpenFreeUserMessage(ID) {
            $('#ContentPlaceHolder1_hdUserTypeID').val(ID);
            document.getElementById("<%=txtUserName.ClientID %>").value = "";
            document.getElementById("<%=txtPassword.ClientID %>").value = "";
            $('#ContentPlaceHolder1_txtDonarCountry').css('display', 'block');
            $('#ContentPlaceHolder1_txtDonarState').css('display', 'block');

            $('#ContentPlaceHolder1_ddlcountryies').css('display', 'none');
            $('#ContentPlaceHolder1_ddldonarstate').css('display', 'none');
            $('#ContentPlaceHolder1_txtpwd').css('display', 'none');
            $('#ContentPlaceHolder1_txtrepwd').css('display', 'none');







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
            document.getElementById("radio2").checked = true;
            $('#ContentPlaceHolder1_txtDonarname').attr('readonly', true);
            $('#ContentPlaceHolder1_txtDonarEmail').attr('readonly', true);
            $('#ContentPlaceHolder1_txtDonarAddress').attr('readonly', true);
            $('#ContentPlaceHolder1_txtDonarLocation').attr('readonly', true);
            $('#ContentPlaceHolder1_txtDonarPin').attr('readonly', true);
            $('#ContentPlaceHolder1_txtDonarMobile').attr('readonly', true);
            $('#ContentPlaceHolder1_txtDonarCountry').attr('readonly', true);
            $('#ContentPlaceHolder1_txtDonarState').attr('readonly', true);
        }

        function GO() {

            var uname = document.getElementById("<%=txtUserName.ClientID %>").value;
            if (uname == "") {

                document.getElementById("<%=lblUNameEmpty.ClientID %>").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("<%=lblUNameEmpty.ClientID %>").style.display = 'none';

            }
            var Pwd = document.getElementById("<%=txtPassword.ClientID %>").value;
            if (Pwd == "") {

                document.getElementById("<%=lblUPwdEmpty.ClientID %>").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("<%=lblUPwdEmpty.ClientID %>").style.display = 'none';

            }

            $.ajax({
                type: "POST",
                url: 'Donater.aspx/CheckLogin',
                data: "{'username':'" + uname + "','Password':'" + Pwd + "'}",

                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    Result = data.d;
                    if (Result.length > 0) {
                        for (var i = 0; i < data.d.length; i++) {

                            $('#ContentPlaceHolder1_hdDonerID').val(Result[i].UserID);

                            $('#ContentPlaceHolder1_txtDonarCountry').show();
                            $('#ContentPlaceHolder1_txtDonarState').show();
                            $('#ContentPlaceHolder1_txtDonarname').val(Result[i].Name);
                            $('#ContentPlaceHolder1_txtDonarEmail').val(Result[i].Email);
                            $('#ContentPlaceHolder1_txtDonarAddress').val(Result[i].Address);
                            $('#ContentPlaceHolder1_txtDonarLocation').val(Result[i].Location);
                            $('#ContentPlaceHolder1_txtDonarPin').val(Result[i].ZipCode);
                            $('#ContentPlaceHolder1_txtDonarMobile').val(Result[i].MobileNum);
                            $('#ContentPlaceHolder1_txtDonarCountry').val(Result[i].Country);
                            $('#ContentPlaceHolder1_txtDonarState').val(Result[i].State);
                            $('#ContentPlaceHolder1_txtDonarname').attr('readonly', true);
                            $('#ContentPlaceHolder1_txtDonarEmail').attr('readonly', true);
                            $('#ContentPlaceHolder1_txtDonarAddress').attr('readonly', true);
                            $('#ContentPlaceHolder1_txtDonarLocation').attr('readonly', true);
                            $('#ContentPlaceHolder1_txtDonarPin').attr('readonly', true);
                            $('#ContentPlaceHolder1_txtDonarMobile').attr('readonly', true);
                            $('#ContentPlaceHolder1_txtDonarCountry').attr('readonly', true);
                            $('#ContentPlaceHolder1_txtDonarState').attr('readonly', true);




                            $('#box3').animate({ 'top': '-500px' }, 500, function () {
                                $('#overlay3').fadeOut('fast');

                            });

                            document.getElementById("radio-1").checked = true;
                            document.getElementById("<%=lblUNameError.ClientID %>").style.display = 'none';


                        }
                    }
                    else {

                        document.getElementById("<%=lblUNameError.ClientID %>").style.display = 'block';

                    }
                }
            });

        };

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="container">
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
                                    Adopt-a-Village</a></li>
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
                    <div style="background-color: #DCEDC8; color: Black" class="row">
                        <div class=" col-md-12">
                            <h2 class="btn btn-default btn-yellow btn-block">
                                <div class="row">
                                    <div class="right col-md-4 text-left">
                                      <b> Donor Details</b> </div>
                                    <div class="left col-md-8 text-right">
                                        <input type="radio" name="name" id="radio1" value="1" checked="checked" onclick="OpenNewUser(1);" />
                                       <b> New User? Sign Up</b> &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="name" id="radio2" value="1" onclick="OpenFreeUserMessage(2);" />
                                      <b> Existing User </b> 
                                    </div>
                                </div>
                            </h2>
                        </div>
                    </div>
                    <h1>
                        Donate for</h1>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                                <span style="color: Green; margin-right: 5px;">Step 1 :</span>Select Package
                            </label>
                        </div>
                    </div>
                    <%--PACKAGE TYPES--%>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:RadioButton ID="rdbPackage1" CssClass="radio" runat="server" Text="Digital Patasala"
                                onclick="Javascript:SelectPackage(1);" GroupName="Package" />
                            <asp:RadioButton ID="rdbPackage2" CssClass="radio" runat="server" Text="Digital Classroom"
                                onclick="Javascript:SelectPackage(2);" GroupName="Package" />
                        </div>
                        <div class="col-md-4">
                            <asp:RadioButton ID="rdbPackage3" CssClass="radio" runat="server" Text="Adopt-a- School"
                                onclick="Javascript:SelectPackage(3);" GroupName="Package" />
                            <asp:RadioButton ID="rdbPackage4" CssClass="radio" runat="server" Text="Adopt-a- Student"
                                onclick="Javascript:SelectPackage(4);" GroupName="Package" />
                        </div>
                        <div class="col-md-3">
                            <asp:RadioButton ID="rdbPackage5" CssClass="radio" runat="server" Text="Other" onclick="Javascript:SelectPackage(5);"
                                GroupName="Package" />
                        </div>
                    </div>
                    <%--DIGITAL PATASALA--%>
                    <div id="divDigitalPatasala" class="package">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>Digital Patasala
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:DropDownList ID="ddlBoard" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select Board</asp:ListItem>
                                    <asp:ListItem Value="1">CBSE</asp:ListItem>
                                    <asp:ListItem Value="2">SSC</asp:ListItem>
                                    <asp:ListItem Value="3">ICSE</asp:ListItem>
                                </asp:DropDownList>
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
                    <div id="divSchool" class="package">
                        <%--SCHOOL--%>
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>Adopt-a-School</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-5 col-md-offset-1">
                                <asp:TextBox ID="txtname" CssClass="donate-input" Width="100%" runat="server" placeholder="Enter School Name"></asp:TextBox>
                                <asp:TextBox ID="txtAddress" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Address "></asp:TextBox>
                                <asp:TextBox ID="txtSchoolAmount" Text="50000" CssClass="donate-input" Width="100%"
                                    runat="server" placeholder="Enter Donation Amount"></asp:TextBox>
                            </div>
                            <div class="col-md-5">
                                <asp:DropDownList ID="ddlStates" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select State</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlDistricts" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select District</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlLocations" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select Location</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <%--STUDENT--%>
                    <div id="divStudent" class="package">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>ADOPT STUDENT</label></div>
                        </div>
                        <div class="row">
                            <div id="gvStudents" class="col-md-11 col-md-offset-1 edited-table2">
                            </div>
                        </div>
                        <asp:Label ID="lblerror" runat="server" Style="color: Red"></asp:Label>
                    </div>
                    <%--Modal Popup--%>
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">
                                        &times;</button>
                                    <h4 class="modal-title">
                                        Donators List</h4>
                                </div>
                                <div class="modal-body">
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                        Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--CLASSROOM--%>
                    <div id="divClassroom" class="package">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>DONATE CLASSROOM</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:RadioButton ID="rd1" CssClass="radio" runat="server" Text="Rs. 17500 to Content"
                                    ToolTip="17500" onclick="Javascript:SelectAmountID(1,17500);" GroupName="dcr" />
                                <asp:RadioButton ID="rd2" CssClass="radio" runat="server" Text="Rs. 25500 to Smart Content"
                                    ToolTip="25500" onclick="Javascript:SelectAmountID(2,25500);" GroupName="dcr" />
                                <asp:RadioButton ID="rd3" CssClass="radio" runat="server" Text="Rs. 50500 to Hardware"
                                    ToolTip="50500" onclick="Javascript:SelectAmountID(3,50500);" GroupName="dcr" />
                            </div>
                            <div class="col-md-5">
                                <asp:RadioButton ID="rd4" CssClass="radio" runat="server" Text="Rs. 50500 to Smart Content"
                                    ToolTip="50500" onclick="Javascript:SelectAmountID(4,50500);" GroupName="dcr" />
                                <asp:RadioButton ID="rd5" CssClass="radio" runat="server" Text="Rs. 17500 to Hardware"
                                    ToolTip="17500" onclick="Javascript:SelectAmountID(5, 17500);" GroupName="dcr" />
                                <asp:RadioButton ID="rd6" CssClass="radio" runat="server" Text="Rs. 25500 to Content"
                                    ToolTip="25500" onclick="Javascript:SelectAmountID(6, 25500);" GroupName="dcr" />
                            </div>
                        </div>
                    </div>
                    <%--OTHER--%>
                    <div id="divOther" class="package">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>OTHER</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtOtherAmount" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Other Amount"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <%--DONAR NAME--%>
                    <div class="divDonarDetails">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 3 :</span>Donar Details</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtDonarname" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtDonarEmail" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Email Address"></asp:TextBox>
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
                                <asp:TextBox ID="txtpwd" CssClass="donate-input" Width="100%" runat="server" placeholder="Password"
                                    TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtrepwd" CssClass="donate-input" Width="100%" runat="server" placeholder="Confirm Password"
                                    TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:DropDownList class="form-control" ID="ddlcountryies" CssClass="donate-input"
                                    Width="100%" runat="server">
                                </asp:DropDownList>
                                <asp:TextBox ID="txtDonarCountry" Visible="false" CssClass="donate-input" placeholder="Country Name"
                                    runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList class="form-control" ID="ddldonarstate" CssClass="donate-input"
                                    Width="100%" runat="server">
                                </asp:DropDownList>
                                <asp:TextBox Visible="false" ID="txtDonarState" CssClass="donate-input" placeholder="State Name"
                                    runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtDonarPin" CssClass="donate-input" Width="100%" onkeypress="return isNumberKey(event)"
                                    runat="server" placeholder="pincode"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtDonarMobile" CssClass="donate-input" minlength="10" MaxLength="10"
                                    onkeypress="return isNumberKey(event)" Width="100%" runat="server" placeholder="MobileNumber"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <%--DONATION MODE--%>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                                <span style="color: Green; margin-right: 5px;">Step 4 :</span>Donation Mode</label></div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1">
                            <asp:RadioButton ID="rbdebit" CssClass="radio" runat="server" Text="Debit Card" onchange="javascript:GetDonationmodeID(1);"
                                GroupName="PaymentMode" />
                            <asp:RadioButton ID="rbcredit" CssClass="radio" runat="server" Text="Credit Card"
                                onchange="javascript:GetDonationmodeID(2);" GroupName="PaymentMode" />
                        </div>
                        <div class="col-md-8">
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
                            <input id="lbDonate" type="button" class="btn btn-info btn-lg" value="Pay Now" />
                            <%-- <asp:LinkButton ID="lbDonate" runat="server" CssClass="btn btn-info btn-lg" Text="Pay Now"
                                OnClick="lbDonate_Click"></asp:LinkButton>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay3" id="overlay3" style="display: none;">
        </div>
        <div class="box3" id="box3" style="width: 400px; margin: auto; background: #f2f2f2;">
            <a class="boxclose3" id="boxclose" onclick="javascript:ClosePopup();">&#215;</a>
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
        </div>
    </div>
    <asp:HiddenField ID="hfPackageTypeID" runat="server" />
    <asp:HiddenField ID="hfPackageID" runat="server" />
    <asp:HiddenField ID="hfPackageAmount" runat="server" />
    <asp:HiddenField ID="hfDonates" runat="server" />
    <asp:HiddenField ID="hdsession1" runat="server" />
    <asp:HiddenField ID="hdsession2" runat="server" />
    <asp:HiddenField ID="hdDonerID" runat="server" />
    <asp:HiddenField ID="hdUserTypeID" runat="server" />
    <asp:HiddenField ID="hdstate" runat="server" />
    <script>


        $("#lbDonate").click(function () {
            debugger;
            var PackageTypeID = 0;
            var PackageTypeName = "";
            var Package = "";


            if ($('#ContentPlaceHolder1_rdbPackage1').is(':checked')) { PackageTypeID = 1; }
            else if ($('#ContentPlaceHolder1_rdbPackage2').is(':checked')) { PackageTypeID = 2; }
            else if ($('#ContentPlaceHolder1_rdbPackage3').is(':checked')) { PackageTypeID = 3; }
            else if ($('#ContentPlaceHolder1_rdbPackage4').is(':checked')) { PackageTypeID = 4; }
            else if ($('#ContentPlaceHolder1_rdbPackage5').is(':checked')) { PackageTypeID = 5; }
            else {
                swal(
                        'Please Select Package!',
                        '',
                        'error'
                    )
                return false;
            }
            var PackageID = "";
            var PackageAmount = 0.0;


            if (PackageTypeID == 1) {
                //Board
                var ddlBoard = document.getElementById("<%=ddlBoard.ClientID %>");
                var ddlboardselectedText = ddlBoard.options[ddlBoard.selectedIndex].innerHTML;
                var ddlboardselectedValue = ddlBoard.value;
                //Class
                var ddlClass = document.getElementById("<%=ddlClass.ClientID %>");
                var ddlClassselectedText = ddlClass.options[ddlClass.selectedIndex].innerHTML;
                var ddlClassselectedValue = ddlClass.value;
                //Package
                var ddlPackage = document.getElementById("<%=ddlPackage.ClientID %>");
                var ddlPackageselectedText = ddlPackage.options[ddlPackage.selectedIndex].innerHTML;
                var ddlPackageselectedValue = ddlPackage.value;

                PackageID = ddlboardselectedValue + "-" + ddlClassselectedValue + "-" + ddlPackageselectedValue;
                PackageAmount = ddlPackageselectedText;
                PackageTypeName = "Digital Patasala";
                Package = ddlboardselectedText + " - " + ddlClassselectedText + " - " + ddlPackageselectedText;
            }


            else if (PackageTypeID == 2) {
                if ($('#ContentPlaceHolder1_rd1').is(':checked')) {
                    var sParentElement = document.getElementById("<%=rd1.ClientID%>").parentElement;
                    var tooltip = sParentElement.title;
                    PackageAmount = parseInt(tooltip);
                    var label = $("#ContentPlaceHolder1_rd1").prop("labels"),
                     text = $(label).text()
                    Package = text;

                }

                else if ($('#ContentPlaceHolder1_rd2').is(':checked')) {
                    var sParentElement = document.getElementById("<%=rd2.ClientID%>").parentElement;
                    var tooltip = sParentElement.title;
                    PackageAmount = parseInt(tooltip);
                    var label = $("#ContentPlaceHolder1_rd2").prop("labels"),
                     text = $(label).text()
                    Package = text;

                }

                else if ($('#ContentPlaceHolder1_rd3').is(':checked')) {
                    var sParentElement = document.getElementById("<%=rd3.ClientID%>").parentElement;
                    var tooltip = sParentElement.title;
                    PackageAmount = parseInt(tooltip);
                    var label = $("#ContentPlaceHolder1_rd3").prop("labels"),
                     text = $(label).text()
                    Package = text;

                }
                else if ($('#ContentPlaceHolder1_rd4').is(':checked')) {
                    var sParentElement = document.getElementById("<%=rd4.ClientID%>").parentElement;
                    var tooltip = sParentElement.title;
                    PackageAmount = parseInt(tooltip);
                    var label = $("#ContentPlaceHolder1_rd4").prop("labels"),
                     text = $(label).text()
                    Package = text;

                }
                else if ($('#ContentPlaceHolder1_rd5').is(':checked')) {
                    var sParentElement = document.getElementById("<%=rd5.ClientID%>").parentElement;
                    var tooltip = sParentElement.title;
                    PackageAmount = parseInt(tooltip);
                    var label = $("#ContentPlaceHolder1_rd5").prop("labels"),
                     text = $(label).text()
                    Package = text;

                }
                else if ($('#ContentPlaceHolder1_rd6').is(':checked')) {
                    var sParentElement = document.getElementById("<%=rd6.ClientID%>").parentElement;
                    var tooltip = sParentElement.title;
                    PackageAmount = parseInt(tooltip);
                    var label = $("#ContentPlaceHolder1_rd6").prop("labels"),
                     text = $(label).text()
                    Package = text;

                }


                PackageTypeName = "Digital Classroom";

            }

            else if (PackageTypeID == 3) {
                PackageID = "1";
                PackageAmount = parseInt($("#<%=txtSchoolAmount.ClientID%>").val());
                if (isNaN(PackageAmount) == true)
                    PackageAmount = 0;
                PackageTypeName = "Donate School";
                Package = $("#<%=txtname.ClientID%>").val() + "<br>" + $("#<%=txtAddress.ClientID%>").val();
            }
            else if (PackageTypeID == 4) {
                PackageID = "1";

                PackageTypeName = "Donate Student";
                Package = "Student Name";
            }
            else if (PackageTypeID == 5) {
                PackageID = "0";
                PackageAmount = parseInt($("#<%=txtOtherAmount.ClientID%>").val());
                if (isNaN(PackageAmount) == true)
                    PackageAmount = 0;
                PackageTypeName = "Other Amount";
            }


            document.getElementById("<%=hdsession2.ClientID%>").Value = $("#ContentPlaceHolder1_txtDonarname").val() + "~" + $("#ContentPlaceHolder1_txtDonarEmail").val() + "~" + $("#ContentPlaceHolder1_txtDonarEmail").val() + "~" + $("#ContentPlaceHolder1_txtDonarMobile").val() + "~" + $("#ContentPlaceHolder1_txtDonarAddress").val() + "~" + $("#ContentPlaceHolder1_txtDonarCountry").val() + "~" + $("#ContentPlaceHolder1_txtDonarState").val() + "~" + $("#ContentPlaceHolder1_txtDonarPin").val() + "~" + $("#ContentPlaceHolder1_txtDonarLocation").val();

            //Insert**********************************************************************************************************
            insertData(Package, PackageTypeName, PackageTypeID, PackageID, PackageAmount, 1, "Card");

        });
        function makeCounter() {
            var count = 0;
            return function () {
                count++;
                return count;
            };
        };

        function insertData(Package, PackageTypeName, PackageTypeID, PackageID, PackageAmount, UserID, PaymentMode) {
            var flag = false;
            var chkdonatevale = false;

            var UserType = $('#ContentPlaceHolder1_hdUserTypeID').val();
            if (PackageTypeID == 4) {
                flag = true;

                debugger;
                var table = $("table tbody");
                var count = 0;

                var counter = makeCounter();
                table.find('tr').each(function (i) {
                    var $tds = $(this).find('td'),
            StudentID = $tds.eq(1).text(),
            Donate = $tds.eq(3).text(),
                        ContributeAmt = $tds.eq(4).find(":text").val();

                    if (isNaN(ContributeAmt) || ContributeAmt == "") {
                        tal = 0;
                    }
                    else {
                        tal = ContributeAmt;
                        count = counter();
                        chkdonatevale = true;
                    }


                    if (count == 1) {
                        flag = true;
                        if (tal != 0) {
                            sessionStorage.setItem("contributeamount", ContributeAmt);
                            sessionStorage.setItem("StudentID", StudentID);
                            var RemainingAmount = parseInt(Donate) - parseInt(ContributeAmt);
                            sessionStorage.setItem("RemainingAmount", RemainingAmount);
                            PackageAmount = ContributeAmt;
                        }
                    }
                    else if (count > 1) {
                        flag = false;
                        swal(
                        'Allowed to Contribute only One Student!',
                        '',
                        'error'
                    )

                        count = 0;
                        return false;

                    }

                });

                if (chkdonatevale == false) {

                    swal(
                        'Please Contribute Amount to Atleast One Student!',
                        '',
                        'error'
                    )

                    return false;
                }


            }
            else {
                flag = true;

            }

            document.getElementById("<%=hdsession1.ClientID%>").Value = PackageTypeName + "~" + Package + "~" + PackageAmount;

            if (UserType == 1) {

                var UserName = $("#ContentPlaceHolder1_txtDonarname").val();
                var Email = $("#ContentPlaceHolder1_txtDonarEmail").val();
                var Address = $("#ContentPlaceHolder1_txtDonarAddress").val();
                var location = $("#ContentPlaceHolder1_txtDonarLocation").val();
                var Country = $("select#ContentPlaceHolder1_ddlcountryies").val();
                var State = $("select#ContentPlaceHolder1_ddldonarstate").val();
                var Pwd = $("#ContentPlaceHolder1_txtpwd").val();
                var rePwd = $("#ContentPlaceHolder1_txtrepwd").val();
                var pin = $("#ContentPlaceHolder1_txtDonarPin").val();
                var mobile = $("#ContentPlaceHolder1_txtDonarMobile").val();

                if (UserName == "") {
                    swal(
                        'Please Enter User Name!',
                        '',
                        'error'
                    )
                    document.getElementById('<%=txtDonarname.ClientID %>').style.borderColor = "red";
                    return false;
                }
                else if (Email == "") {
                    swal(
                        'Please Enter Email!',
                        '',
                        'error'
                    )
                    document.getElementById('<%=txtDonarEmail.ClientID %>').style.borderColor = "red";
                    return false;
                }
                else if (!isEmail(Email)) {

                    swal(
                        'Please Enter Valid EmailID!',
                        '',
                        'error'
                    )
                    document.getElementById('<%=txtDonarEmail.ClientID %>').style.borderColor = "red";
                    return false;
                }
                else if (Pwd == "") {
                    swal(
                        'Please Enter Password!',
                        '',
                        'error'
                    )

                    document.getElementById('<%=txtpwd.ClientID %>').style.borderColor = "red";
                    return false;
                }
                else if (rePwd == "") {
                    swal(
                        'Please Enter Confirm Password!',
                        '',
                        'error'
                    )
                    document.getElementById('<%=txtrepwd.ClientID %>').style.borderColor = "red";
                    return false;
                }

                if (Pwd != rePwd) {
                    swal(
                        'Passwords Do Not match!',
                        '',
                        'error'
                    )
                    document.getElementById('<%=txtpwd.ClientID %>').style.borderColor = "red";
                    document.getElementById('<%=txtrepwd.ClientID %>').style.borderColor = "red";

                    return false;

                }

                else if (Country == "0") {
                    swal(
                        'Please Select Country!',
                        '',
                        'error'
                    )
                    document.getElementById('<%=ddlcountryies.ClientID %>').style.borderColor = "red";
                    return false;
                }
                else if (State == "0") {
                    swal(
                        'Please Select State!',
                        '',
                        'error'
                    )
                    document.getElementById('<%=ddldonarstate.ClientID %>').style.borderColor = "red";
                    return false;
                }
                if (flag) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "Donater.aspx/InsertDonarData",
                        data: "{'UserName':'" + UserName + "','Email':'" + Email + "','Address':'" + Address + "','location':'" + location + "','Country':'" + Country + "','State':'" + State + "','PackageTypeID':'" + PackageTypeID + "','PackageID':'" + PackageID + "','PackageAmount':'" + PackageAmount + "','PaymentMode':'" + PaymentMode + "','Pwd':'" + Pwd + "','pin':'" + pin + "','mobile':'" + mobile + "'}",
                        dataType: "json",
                        success: function (Data) {
                            debugger;
                            var Result = Data.d;

                            var queryval = document.getElementById("<%=hdsession1.ClientID%>").Value + "~" + Result + "~" + PackageID;
                            var DonarDetails = document.getElementById("<%=hdsession2.ClientID%>").Value;
                            sessionStorage.setItem("QueryValues", queryval);
                            sessionStorage.setItem("DonarDetails", DonarDetails);
                            window.location.replace("PurchaseOrder.aspx");
                        },
                        error: function () {
                        }
                    });



                }

            }
            else if (UserType == 2) {
                debugger;

                var UserID = $('#ContentPlaceHolder1_hdDonerID').val();


                var UserName = $("#ContentPlaceHolder1_txtDonarname").val();
                if (UserName == "") {
                    swal(
                        'Please Provide UserName And Password!',
                        '',
                        'error'
                    )
                    return false;
                }

                var queryval = document.getElementById("<%=hdsession1.ClientID%>").Value + "~" + UserID + "~" + PackageID;
                var DonarDetails = document.getElementById("<%=hdsession2.ClientID%>").Value;
                sessionStorage.setItem("QueryValues", queryval);
                sessionStorage.setItem("DonarDetails", DonarDetails);

                window.location.replace("PurchaseOrder.aspx");
                //                if (flag) {
                //                    $.ajax({
                //                        type: "POST",
                //                        contentType: "application/json; charset=utf-8",
                //                        url: "Donater.aspx/UpdateDonarData",
                //                        data: "{'PackageTypeID':'" + PackageTypeID + "','PackageID':'" + PackageID + "','PackageAmount':'" + PackageAmount + "','UserID':'" + UserID + "','PaymentMode':'" + PaymentMode + "'}",
                //                        dataType: "json",
                //                        success: function (Data) {
                //                            debugger;
                //                            var Result = Data.d;
                //                            var queryval = document.getElementById("<%=hdsession1.ClientID%>").Value + "~" + UserID + "~" + Result;
                //                            var DonarDetails = document.getElementById("<%=hdsession2.ClientID%>").Value;
                //                            sessionStorage.setItem("QueryValues", queryval);
                //                            sessionStorage.setItem("DonarDetails", DonarDetails);

                //                            window.location.replace("PurchaseOrder.aspx");
                //                        },
                //                        error: function () {
                //                        }
                //                    });


                //                }


            }





        }


        $(".package").hide();

        function isEmail(email) {
            var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return regex.test(email);
        }

        function SelectPackage(PackageId) {

            document.getElementById("<%=hfPackageTypeID.ClientID%>").Value = PackageId;

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
                    $(".package").hide();
                    $("#divSchool").show();
                    break;
                case 4:
                    $(".package").hide();
                    $("#divStudent").show();

                    $('#gvStudents').empty();
                    load_Data();
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

        function isNumberKey(evt, ActualAmount) {
            debugger;
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                swal(
                        'Please Enter Numeric Values!',
                        '',
                        'error'
                    )


                return false;
            }
            else {

                var id = document.getElementById(event.target.id);
                var EnteredAmount = parseInt(id.value);
                ActualAmount = parseInt(ActualAmount);
                var RemainingAmount = 0;

                if (isNaN(EnteredAmount) == true)
                    EnteredAmount = 0;
                if (EnteredAmount > 0) {

                    if (EnteredAmount > ActualAmount) {
                        swal(
                    'Contribuation should not be exceed beyond Donate amount!',
                    '',
                    'error'
                );
                        document.getElementById(id).value = "";
                        return false;
                    }





                }
            }
            return true;
        }

        function load_Data() {
            debugger;

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Donater.aspx/GetStudentData",

                data: "{}",
                success: function (Result) {
                    debugger;
                    Result = Result.d;
                    var table = "";
                    table = "<table id='tblstu'><tr><th style='display:none;'>StudenetID</th><th>Student Name </th><th>Class </th><th>Donate </th><th>Contribute Amount </th><th>View Doners </th></tr>";
                    for (var i in Result) {
                        debugger;
                        table = table + "<tr><td style='display:none;'>" + Result[i].StudentID + "</td><td>" + Result[i].StudentName + "</td><td>" + Result[i].Class + "</td><td>" + Result[i].Amount + "</td><td><input onkeypress='return isNumberKey(event," + Result[i].Amount + ")' placeholder=" + Result[i].Amount + " id='txt" + i + "' type='text' /></td><td><a onClick = 'displaydoners(" + Result[i].StudentID + ");' class='btn btn-info' role='button'>View</a></td></tr>";
                    };
                    table = table + "</table>";
                    $('#gvStudents').append(table);
                    $('#gvStudents').show();


                },
                error: function () {
                    alert("Error");
                }

            });

        };

        function displaydoners(StudentID) {

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Donater.aspx/GetDoners",

                data: "{'StudentID':" + StudentID + "}",
                success: function (Result) {
                    debugger;
                    var table = "";

                    Result = Result.d;
                    if (Result.length == 0) {

                        table = "No Records Found............";
                    }
                    else {
                        table = "<table class='table-striped' width='100%'><tr><th>Donar Name </th><th>Contact Number </th><th>Contribute Amount </th></tr>";
                        for (var i in Result) {
                            debugger;
                            table = table + "<tr><td>" + Result[i].StudentName + "</td><td>" + Result[i].ContactNumber + "</td><td>" + Result[i].Amount + "</td></tr>";
                        };
                        table = table + "</table>";
                    }
                    jQuery.noConflict();
                    event.preventDefault();

                    $(".modal-body").html(table);
                    $('#myModal').modal('show')

                },
                error: function () {
                    alert("Error");
                }

            });

        }

    </script>
</asp:Content>
