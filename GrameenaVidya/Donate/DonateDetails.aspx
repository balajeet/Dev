<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="DonateDetails.aspx.cs" Inherits="GrameenaVidya.Donate.DonateDetails" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register src="../Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //$("#HeaderInside1_aForums").addClass("active");
//            $("#lbInvolve").addClass("activelink");


        });
    </script>
    <script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
    <style>
        .well
        {
            background: #FAFAFA;
        }
        
        .heading
        {
            text-align: left;
            border-bottom: 1px solid #d5d5d5;
            margin-bottom: 30px;
        }
        
        .heading h1
        {
            background: none repeat scroll 0 0 #fafafa;
            display: inline-block;
            font-size: 22px;
            font-weight: 100;
            padding: 0;
            position: relative;
            top: 21px;
            color: #52A3CC;
        }
        
        .section
        {
            padding: 0 50px;
        }
        
        .package
        {
            background: Orange;
            border: 1px solid #e5e5e5;
            border-radius: 5px;
            padding: 20px;
        }
        
        .package big
        {
            font-size: 22px;
            font-weight: bold;
            text-shadow: 0px 0px 2px #fff;
        }
        
        .package-selected
        {
            background: #5CB8E6;
            border: 1px solid #e5e5e5;
            border-radius: 5px;
            padding: 20px;
        }
        
        .adopt
        {
            background: #5CB8E6;
            border: 1px solid #478FB2;
            border-radius: 5px;
            padding: 15px 40px;
            margin: 5px;
            color: #fff;
        }
        
        
        
        .adopt-selected
        {
            background: #376E8A;
            border: 1px solid #478FB2;
            border-radius: 5px;
            padding: 15px 20px;
            margin: 5px;
            color: #fff;
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
        
        .radio-toolbar input[type="radio"] {
    display:none;
    cursor:pointer;
}

.radio-toolbar label {
    display:inline-block;    
    padding:6px 6px;    
     cursor:pointer;
}

.radio-toolbar input[type="radio"]:checked + label 
{
    padding:6px 6px; 
    background-color:#7bae4e ;
     cursor:pointer;
}
    </style>
    <script type="text/javascript" language="javascript">

       
        function OpenFreeUserMessage(ID) {
            document.getElementById('<%= hdDonarUserType.ClientID %>').value = ID;

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


            document.getElementById('<%= hdDonarUserType.ClientID %>').value = ID;
            document.getElementById("<%=txtDonarName.ClientID %>").value = "";
            document.getElementById("<%=txtEmail.ClientID %>").value = "";
            document.getElementById("<%=txtEmail.ClientID %>").readOnly = false;
            document.getElementById("<%=txtMobilenum.ClientID %>").value = "";
            document.getElementById("<%=txtAddress1.ClientID %>").value = "";
            document.getElementById("<%=txtAddress2.ClientID %>").value = "";
            document.getElementById("<%=txtlocation.ClientID %>").value = "";
            document.getElementById("<%=ddlcountry.ClientID %>").value = "";
            document.getElementById("<%=ddlState.ClientID %>").value = "";

        }

    </script>
    <script>
        var pageUrl = '<%=ResolveUrl("DonateDetails.aspx")%>'
        function PopulateStates() {
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

            PopulateControl1(response.d, $("#<%=ddlState.ClientID %>"));


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

    </script>
    <script type="text/javascript">
        var pageUrl = '<%=ResolveUrl("DonateDetails.aspx")%>'
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
                url: pageUrl + '/CheckLogin',
                data: "{'username':'" + uname + "','Password':'" + Pwd + "'}",

                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d.length > 0) {
                        for (var i = 0; i < data.d.length; i++) {
                            document.getElementById("<%=txtDonarName.ClientID %>").value = data.d[i].Name;
                            document.getElementById("<%=txtEmail.ClientID %>").value = data.d[i].Email;
                            document.getElementById("<%=txtEmail.ClientID %>").readOnly = true;
                            document.getElementById("<%=txtMobilenum.ClientID %>").value = data.d[i].MobileNum;
                            document.getElementById("<%=txtAddress1.ClientID %>").value = data.d[i].Address;
                            document.getElementById("<%=txtAddress2.ClientID %>").value = data.d[i].Address;
                            document.getElementById("<%=txtlocation.ClientID %>").value = data.d[i].location;
                            document.getElementById("<%=ddlcountry.ClientID %>").selectedIndex = data.d[i].CountryID;
                            PopulateStates();
                            document.getElementById("<%=ddlState.ClientID %>").selectedIndex = data.d[i].StateID;

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

        function GetStateID() {


            document.getElementById('<%= hdDonarStateID.ClientID %>').value = $("#<%=ddlState.ClientID %>").val();

        }

    </script>
    <%--suggest school Data--%>
    <script>


        var pageUrl = '<%=ResolveUrl("DonateDetails.aspx")%>'
        function PopulateSuggestDistrict() {
            document.getElementById('<%= hdSuggestedStateID.ClientID %>').value = $('#<%=ddlSuggestedStates.ClientID%>').val();
            document.getElementById('<%= hdSuggestedStateName.ClientID %>').value = $("[id*='ddlSuggestedStates'] :selected").text();
                      
            $.ajax({
                type: "POST",
                url: pageUrl + '/PopulateDistricts',
                data: '{StateID: ' + $('#<%=ddlSuggestedStates.ClientID%>').val() + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnDistrictsPopulated,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function OnDistrictsPopulated(response) {

           
            PopulateControl(response.d, $("#<%=ddlSuggestDistricts.ClientID %>"));


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

        function GetDistrictID() {

            document.getElementById('<%= hdSuggestedDistrictID.ClientID %>').value = $('#<%=ddlSuggestDistricts.ClientID%>').val();
            document.getElementById('<%= hdSuggestedDistrictName.ClientID %>').value = $('#<%=ddlSuggestDistricts.ClientID%>').text;

        }

        function SelectSchoolType(ID) {

            document.getElementById('<%= hdSelectSchoolType.ClientID %>').value = ID;
            if (ID == 3) {
                document.getElementById('ContributionDetails').style.display = 'none';
                document.getElementById('divschooldata').style.display = 'none';
                document.getElementById('<%= hdDonateMode.ClientID %>').value = 4;

            }
            else {
                document.getElementById('ContributionDetails').style.display = 'block';

            }

        }


        function SelectSponserType(ID) {

            document.getElementById('<%= hdSelectSponserType.ClientID %>').value = ID;
        }





        function SelectCampContributionType(ID) {
            if (ID == 1) {

                document.getElementById('divAmount1').style.display = 'block';
                document.getElementById('divAmount2').style.display = 'none';
                document.getElementById('divAmount3').style.display = 'none';

            }
            if (ID == 2) {

                document.getElementById('divAmount2').style.display = 'block';
                document.getElementById('divAmount3').style.display = 'none';
                document.getElementById('divAmount1').style.display = 'none'
            }

            if (ID == 3) {

                document.getElementById('divAmount3').style.display = 'block';
                document.getElementById('divAmount2').style.display = 'none';
                document.getElementById('divAmount1').style.display = 'none';
            }



        }

        var pageUrl = '<%=ResolveUrl("DonateDetails.aspx")%>'
        function CheckMail() {

            var uname = document.getElementById("<%=txtEmail.ClientID %>").value;
            $.ajax({
                type: "POST",
                url: pageUrl + '/CheckUserName',

                data: "{'username': '" + uname + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == 'Available') {

                        document.getElementById("<%=lblEmail11.ClientID %>").style.display = "none";

                    }
                    else {

                        document.getElementById("<%=lblEmail11.ClientID %>").style.display = "block";


                    }
                }
            });
        };



        function forgetSendmail() {
            var FEmail = document.getElementById("<%=txtFEmail.ClientID %>").value;
            if (FEmail == "") {

                document.getElementById("<%=lblFEmail.ClientID %>").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("<%=lblFEmail.ClientID %>").style.display = 'none';

            }


            $.ajax({
                type: "POST",
                url: pageUrl + '/SendMailForgetPwd',
                data: "{'Email':'" + FEmail + "'}",

                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == 'Available') {
                        alert("gg");

                        document.getElementById("<%=lblInvalidEmail.ClientID %>").style.display = "none";
                        document.getElementById('divMessage').style.display = "block";
                        document.getElementById('divMain').style.display = "none";
                        


                    }
                    else {

                        document.getElementById("<%=lblInvalidEmail.ClientID %>").style.display = "block";
                        document.getElementById('divMessage').style.display = "none";

                    }
                }
            });
        };


     



    </script>
    <script>



        function SelectFixedContribution(ID) {
            document.getElementById('<%= hdSponserContributionID.ClientID %>').value = ID;
            document.getElementById('<%= hdDonateMode.ClientID %>').value = 1;
            document.getElementById("Radio14").checked = false;
            if (document.getElementById('<%= hdschoolID.ClientID %>').value == 0 && document.getElementById('<%= hdSelectSchoolType.ClientID %>').value == 1) {
                alert("Select School/Support School");
                document.getElementById("radio10").checked = false;
                document.getElementById("radio11").checked = false;
                document.getElementById("radio13").checked = false;
                document.getElementById("radio17").checked = false;
            }
            else {


                if (ID == 1 || ID == 2 || ID == 3 || ID == 4) {
                    document.getElementById('divCampaign').style.display = 'block';
                    document.getElementById('divFull').style.display = 'block';

                    if (ID == 1) {

                        document.getElementById("<%=txtAmountSelected.ClientID %>").value = '100000';
                        document.getElementById("<%=txtAmountSelected.ClientID %>").readOnly = true;
                        document.getElementById('<%= hdtotalAmount.ClientID %>').value = document.getElementById("<%=txtAmountSelected.ClientID %>").value;
                        document.getElementById("wrapper").style.display = "inline-block";
                        document.getElementById("wrapper1").style.display = "none";
                        document.getElementById("wrapper2").style.display = "none";
                        document.getElementById('<%= hdYears.ClientID %>').value = ID;


                        return;
                    }
                    else
                        if (ID == 2) {
                            document.getElementById("<%=txtAmountSelected.ClientID %>").value = '125000';
                            document.getElementById("<%=txtAmountSelected.ClientID %>").readOnly = true;
                            document.getElementById('<%= hdtotalAmount.ClientID %>').value = document.getElementById("<%=txtAmountSelected.ClientID %>").value;
                            document.getElementById("wrapper1").style.display = "inline-block";
                            document.getElementById("wrapper").style.display = "none";
                            document.getElementById("wrapper2").style.display = "none";
                            document.getElementById('<%= hdYears.ClientID %>').value = ID;
                            return;
                        }
                        else
                            if (ID == 3) {
                                document.getElementById("<%=txtAmountSelected.ClientID %>").value = '150000';
                                document.getElementById("<%=txtAmountSelected.ClientID %>").readOnly = true;
                                document.getElementById('<%= hdtotalAmount.ClientID %>').value = document.getElementById("<%=txtAmountSelected.ClientID %>").value;
                                document.getElementById("wrapper2").style.display = "inline-block";
                                document.getElementById("wrapper").style.display = "none";
                                document.getElementById("wrapper1").style.display = "none";
                                document.getElementById('<%= hdYears.ClientID %>').value = ID;
                                return;
                            }
                    if (ID == 4) {
                        document.getElementById("<%=txtAmountSelected.ClientID %>").value = '60000';
                        document.getElementById("<%=txtAmountSelected.ClientID %>").readOnly = true;
                        document.getElementById('<%= hdtotalAmount.ClientID %>').value = document.getElementById("<%=txtAmountSelected.ClientID %>").value;
                        document.getElementById("wrapper2").style.display = "none";
                        document.getElementById("wrapper").style.display = "none";
                        document.getElementById("wrapper1").style.display = "none";
                        return;
                    }


                }
            }


        }

              
    </script>
    <script>
        function PayFull(ID) {

            document.getElementById('divAmount').style.display = 'block';
            document.getElementById('divCamAmountv1').style.display = 'none';

            document.getElementById("<%=txtAmount.ClientID %>").value = document.getElementById("<%=lblTAmount.ClientID %>").innerText;
            document.getElementById('<%= hdAmountPaymentType.ClientID %>').value = ID;

        }

        function PayFull1(ID) {
            document.getElementById('divCamAmountv1').style.display = 'block';


            document.getElementById("<%=txtCamAmount.ClientID %>").value = document.getElementById("<%=lblCamAmount.ClientID %>").innerText;

            document.getElementById('<%= hdAmountPaymentType.ClientID %>').value = ID;

        }

        function GetUnitsID() {




            document.getElementById('divCamAmountv1').style.display = 'none';
            document.getElementById('divAmount').style.display = 'none';
            document.getElementById("<%=txtCamAmount.ClientID %>").value = "";
            document.getElementById("<%=txtAmount.ClientID %>").value = "";
            document.getElementById("Radio20").checked = false;
            document.getElementById("Radio19").checked = false;


        }


        function GetAmounts(ID) {

            document.getElementById("Radio14").checked = false;
           
            
            if (ID == 1) {
                var units = $('#<%=ddlUnits1.ClientID%>').val();
                alert(units);
                Amount = 100000;
                var total = parseInt(units) * parseInt(Amount);
                document.getElementById("<%=txtAmountSelected.ClientID %>").value = total;
                document.getElementById("<%=txtAmountSelected.ClientID %>").readOnly = true;
                document.getElementById('<%= hdunits.ClientID %>').value = $('#<%=ddlUnits1.ClientID%>').val();

                return;

            }
            if (ID == 2) {

                var units = $('#<%=ddlUnits2.ClientID%>').val();
                alert(units);
                Amount = 125000;
                var total = parseInt(units) * parseInt(Amount);
                document.getElementById("<%=txtAmountSelected.ClientID %>").value = total;
                document.getElementById("<%=txtAmountSelected.ClientID %>").readOnly = true;
                document.getElementById('<%= hdunits.ClientID %>').value = $('#<%=ddlUnits2.ClientID%>').val();

                return;
            }
            if (ID == 3) {
                var units = $('#<%=ddlUnits3.ClientID%>').val();
                alert(units);
                Amount = 150000;
                var total = parseInt(units) * parseInt(Amount);
                document.getElementById("<%=txtAmountSelected.ClientID %>").value = total;
                document.getElementById("<%=txtAmountSelected.ClientID %>").readOnly = true;
                document.getElementById('<%= hdunits.ClientID %>').value = $('#<%=ddlUnits3.ClientID%>').val();

                return;

            }


        }
      
    
   
    </script>
   <style>
       
     .ajax__calendar .ajax__calendar_container
       {
           background: #f2f2f2;
           border: 1px solid #ccc;
           color: #2184A6;
           width: 320px;
           height:300px;
       }
     .ajax__calendar .ajax__calendar_body
     {
        height: 243px;
    width: 300px;
         }
     .ajax__calendar .ajax__calendar_days
       {
           border-width: 5;
           border-color: #2184A6;
           padding: 1px 1px 1px 1px;
           width:100%;
           padding:0;
       }
 
       
       
   </style>

   <style type="text/css">

.containersteps {
	width: 960px;
	margin: 0 auto;
	font-size: 1.4em;
}
.steps {
	background: #aaa;
	padding: 1px 0;
	overflow: hidden;
}
.steps ul, .steps li {
	margin: 0;
	padding: 0;
	list-style: none;
}
.steps ul { float: left; }
.steps li {
	float: left;
	width: 340px;
}
.steps li a {
	display: block;
	padding: 15px 20px;
	background: #d0d0d0;
	color: #fff;
	line-height: 1.5em;
	text-decoration: none;
}
.steps li a strong { font-size: 2em; }
.steps li a:hover { background: #666; }
.steps li.step, .steps li.step a {
	position: relative;
	z-index: 3;
}
.steps li.step-2, .steps li.step-2 a { z-index: 2; }
.steps li.step-3, .steps li.step-3 a { z-index: 1; }
.steps li.step-1 a, .steps li.step-2 a, .steps li.step-3 a {
	background: transparent url(step.png) center right no-repeat;
	padding-right: 25px;
}
.steps li.step-2, .steps li.step-3 { margin-left: -30px; }
.steps li.step-2 a { padding-left: 45px; }
.steps li.step-3 a {
	padding-left: 45px;
	padding-right: 10px;
  background-position: center left;
}
.steps li.step a:hover { background: transparent url(step_over.png) center right no-repeat; }
.steps li.step-3 a:hover { background-position: center left; }
</style>




   <script>
       function DivData() {
           document.getElementById('wiredata').style.display = 'block';


       }
       function DivDatahide() {
           document.getElementById('wiredata').style.display = 'none';


       }
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="banner">
 <uc1:SocialMedia ID="SocialMedia1" runat="server" />
</div>
<asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>

               <div class="containersteps">

  
                  
  
</div>
    <div class="main-container campaign">
        <!-- main-container start -->
        <div class="container">
            <!-- container start -->
            <div class="row">
                <div class="col-md-12 donate">
                    <div class="col-md-12 campaign-list">
                        <h1>Donate</h1>
         

                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <h2 class="btn-yellow btn-block text-left"><span class="steps">Step-1</span>Select / Support a School</h2>
                                </div>
                            </div>
                            <div class="row spacer">
                                <div class="col-md-3">
                                    <input type="radio" name="package" id="Radio5" data-toggle="modal" data-target="#myModal"
                                        onclick="javascript:SelectSchoolType(1);" />
                                    <label for="rdSuggest">
                                        <b>Select a School</b> &nbsp;&nbsp;
                                    </label>
                                    <i data-toggle="tooltip" style="cursor: pointer;" title="To Adopt-a-School, sponsor/donor can choose from the list of schools that Grameena Vidya has identified after much diligence. These schools have been listed based on their need,outcome and request. Please review the profile of the school(s) and the letters of appeal..">
                                        <img src="../images/tooltip.png" /></i>
                                </div>
                                <div class="col-md-3">
                                    <input type="radio" name="package" id="Radio6" data-toggle="modal" data-target="#myModal1"
                                        onclick="javascript:SelectSchoolType(2);" />
                                    <label for="rdSelect">
                                        <b>Support My School</b>&nbsp;&nbsp;
                                    </label>
                                    <i data-toggle="tooltip" style="cursor: pointer;" title="Sponsors / Donors can Adopt-a-School, by suggesting your own choice of school(s). The school(s) you suggest for “Support-My-School can be your alma meter or a neighborhood school or any school that you want to adopt. Please enter school profile in detail so that Grameena Vidya personnel can reach out to this school.">
                                        <img src="../images/tooltip.png" /></i>
                                </div>
                                <div class="col-md-6">
                                    <input type="radio" name="package" id="Radio7" data-toggle="modal" onclick="javascript:SelectSchoolType(3);"
                                        style="vertical-align: top;" />
                                    <label for="rdSelect">
                                        <b style="vertical-align: top;">Other</b> <i data-toggle="tooltip" style="vertical-align: top;"
                                            style="cursor: pointer;" title="Sponsors / Donors can Adopt-a-School, by suggesting your own choice of school(s). The school(s) you suggest for “Support-My-School can be your alma meter or a neighborhood school or any school that you want to adopt. Please enter school profile in detail so that Grameena Vidya personnel can reach out to this school.">
                                            <img src="../images/tooltip.png" /></i>
                                        <asp:TextBox ID="txtother" runat="server" Style="vertical-align: top;" CssClass="display-in"
                                            placeholder="Enter Your Amount"></asp:TextBox></label>
                                </div>
                            </div>
                            <div class="row spacer" id="divschooldata" style="display: none;">
                                <div class="col-md-5">
                                    <label for="rdSuggest">
                                        <b style="color: Orange;">SchoolName:</b> <b>
                                            <asp:Label ID="lblGetSchoolName" runat="server" Style="color: Orange;"></asp:Label></b>
                                    </label>
                                </div>
                                <div class="col-md-5">
                                    <label for="rdSuggest">
                                        <b style="color: Orange;">State:</b> <b>
                                            <asp:Label ID="lblGetStateName" runat="server" Style="color: Orange;"></asp:Label></b>
                                    </label>
                                </div>
                            </div>

                          <asp:Label ID="lblSchoolDataError" runat="server" style="display:none; color:Red" Text="Select a School/Support My School/Others"></asp:Label>
                            <div>
                           
                           
                            </div>
                            <br />
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog modal-lg modal-dialog-edited">
                                    <div class="modal-content">
                                        <div class="modal-header modal-header2">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="H2">
                                               Donate/ Select a School</h4>
                                        </div>
                                        <div class="modal-body modal-body2">
                                            <iframe id="Iframe2" src="../Programs/Schoolslist.aspx" width="100%" height="600"
                                                scrolling="auto" frameborder="0" onload="au2toResize('iDemo');"></iframe>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default btn-yellow" data-dismiss="modal">
                                                Close</button>
                                            <input type="button" class="btn btn-default btn-yellow" value="Save" id="btnclose"
                                                onclick="javascript:Test();" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header modal-header2">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="H1">
                                                Support My School</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-5 col-sm-5 col-md-offset-1">
                                                    <div class="form-group">
                                                        <label for="name">
                                                            School Name:</label>
                                                        <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-control" placeholder="Enter School Name"></asp:TextBox>
                                                          <asp:Label ID="lblSchoolName" runat="server" Text="Enter School Name" Style="display: none;color: Red;"></asp:Label>
                                                      
                                                    </div>
                                                </div>
                                                <div class="col-md-5 col-sm-5">
                                                    <div class="form-group">
                                                        <label for="name">
                                                            Principal:</label>
                                                        <asp:TextBox ID="txtPrincipalName" runat="server" CssClass="form-control" placeholder="Enter Principal Name"></asp:TextBox>
                                                          <asp:Label ID="lblPrincipalName" runat="server" Text="Enter Principal Name" Style="display: none;color: Red;"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-5 col-sm-5 col-md-offset-1">
                                                    <div class="form-group">
                                                        <label for="name">
                                                            State:</label>
                                                        <asp:DropDownList ID="ddlSuggestedStates" runat="server" DataTextField="StateName"
                                                            DataValueField="StateID" CssClass="form-control" onchange="PopulateSuggestDistrict();">
                                                        </asp:DropDownList>
                                                           <asp:Label ID="lblSuggState" runat="server" Text="Select State" Style="display: none;color: Red;"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="col-md-5 col-sm-5">
                                                    <div class="form-group">
                                                        <label for="name">
                                                            District:</label>
                                                        <asp:DropDownList ID="ddlSuggestDistricts" runat="server" CssClass="form-control"
                                                            DataTextField="DistrictName" DataValueField="DistrictID" onchange="GetDistrictID();">
                                                        </asp:DropDownList>
                                                           <asp:Label ID="lblSuggDistrict" runat="server" Text="Select District" Style="display: none;color: Red;"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-5 col-sm-5 col-md-offset-1">
                                                    <div class="form-group">
                                                        <label for="name">
                                                            Mobile Number:</label>
                                                        <asp:TextBox ID="txtSchoolMobileNumber" runat="server" MaxLength="10" CssClass="form-control" placeholder="Enter Mobile Number" onkeypress="return isNumberKey(event)" ></asp:TextBox></div>
                                                           <asp:Label ID="lblMobilenum" runat="server"  Style="display: none;color: Red;"></asp:Label>
                                                </div>
                                                <div class="col-md-5 col-sm-5">
                                                    <div class="form-group">
                                                        <label for="name">
                                                            ZipCode:</label>
                                                        <asp:TextBox ID="txtzipcode" runat="server" MaxLength="6" CssClass="form-control" placeholder="Enter Zip Code"></asp:TextBox>
                                                           <asp:Label ID="lblZipCode" runat="server"  Style="display: none;color: Red;"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                                Close</button>
                                            <input type="button" class="btn btn-primary" value="Save" id="buttonSupport"
                                                onclick="javascript:SupportSchoolClose();" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="ContributionDetails">

                               <div class="row">
                                    <div class="col-md-12">
                                        <h2 class="btn btn-default btn-yellow btn-block">
                                            <div class="row">
                                                <div class="right col-md-4 text-left"><span class="steps">Step-2</span>
                                                    Choose Package</div>
                                                <div class="left col-md-8 text-right">
                                                    <input type="button" name="package" class="package-details" value="Package Details" id="Radio8" data-toggle="modal" data-target="#divpackageDetails"
                                         />
                                                  
                                                </div>
                                            </div>
                                        </h2>
                                    </div>
                                </div>
                        
                                   <asp:Label ID="lblpackageError" runat="server" style="display:none; color:Red" Text="Choose Package"></asp:Label>
                                <div class="" id="dvFixedContribution">
                                    <div class="row spacer">
                                        <div class="col-md-6">
                                            <label>
                                                <input type="radio" name="Contributionamt" id="radio10" value="1" onclick="javascript:SelectFixedContribution(1);" />
                                                <span style="color: Orange;">Rs 1,00,000 &nbsp;&nbsp; </span><small>Per year per <span
                                                    id="wrapper" style="display: none; margin-left: 10px;">
                                                    <asp:DropDownList ID="ddlUnits1" runat="server" DataTextField="Units" Width="70"
                                                        DataValueField="UnitsID" onchange="GetAmounts(1);">
                                                    </asp:DropDownList>
                                                </span></small>
                                            </label>
                                            &nbsp;&nbsp;<a href="#"> <img src="../images/tooltip.png" /></a>
                                        </div>
                                        <div class="col-md-6">
                                            <label>
                                                <input type="radio" name="Contributionamt" id="radio11" value="4" onclick="javascript:SelectFixedContribution(4);" />
                                                <span style="color: Orange;">Rs 60,000 &nbsp;&nbsp; </span><small>Hardware per class
                                                </small>
                                            </label>
                                            &nbsp;&nbsp;<a href="#"> <img src="../images/tooltip.png" /></a>
                                        </div>
                                    </div>
                                    <div class="row  spacer">
                                        <div class="col-md-6">
                                            <label>
                                                <input type="radio" name="Contributionamt" id="radio13" value="2" onclick="javascript:SelectFixedContribution(2);" />
                                                <span style="color: Orange;">Rs 1,25,000 &nbsp;&nbsp; </span><small>for 2 years per
                                                    <span id="wrapper1" style="display: none; margin-left: 10px;">
                                                        <asp:DropDownList ID="ddlUnits2" runat="server" DataTextField="Units" Width="70"
                                                            DataValueField="UnitsID" onchange="GetAmounts(2);">
                                                        </asp:DropDownList>
                                                    </span></small>
                                            </label>
                                            &nbsp;&nbsp;<a href="#"> <img src="../images/tooltip.png" /></a>
                                        </div>
                                        <div class="col-md-6">
                                            <label>
                                                <input type="radio" name="Contributionamt" id="radio17" value="3" onclick="javascript:SelectFixedContribution(3);" />
                                                <span style="color: Orange;">Rs 1,50,000 &nbsp;&nbsp; </span><small>for 3 years per
                                                    class <span id="wrapper2" style="display: none; margin-left: 10px;">
                                                        <asp:DropDownList ID="ddlUnits3" runat="server" DataTextField="Units" Width="70"
                                                            DataValueField="UnitsID" onchange="GetAmounts(3);">
                                                        </asp:DropDownList>
                                                    </span></small>
                                            </label>
                                            &nbsp;&nbsp;<a href="#"><img src="../images/tooltip.png" /></a>
                                        </div>
                                    </div>
                                    <div class="row spacer">
                                        <div class="col-md-6" id="divFull" style="display: none;">
                                            <label for="rdSuggest">
                                                <b>Amount</b> &nbsp;&nbsp;
                                            </label>
                                            <asp:TextBox ID="txtAmountSelected" runat="server" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6" id="divCampaign" style="display: none;">
                                            <input type="radio" name="package1" id="Radio14" data-toggle="modal" data-target="#myCampaign" />
                                            <label for="rdSuggest">
                                                <b>Start a Campaign</b> &nbsp;&nbsp;
                                            </label>
                                            <i data-toggle="tooltip" style="cursor: pointer;" title="To Adopt-a-School, sponsor/donor can choose from the list of schools that Grameena Vidya has identified after much diligence. These schools have been listed based on their need,outcome and request. Please review the profile of the school(s) and the letters of appeal..">
                                                 <img src="../images/tooltip.png" /></i>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-5" id="divAmount" style="display: none;">
                                            <label>
                                                <b>Amount</b> &nbsp;&nbsp;
                                                <asp:TextBox ID="txtAmount" runat="server" ReadOnly="true"></asp:TextBox>
                                                <asp:Label ID="lblTAmount" runat="server"></asp:Label>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5" id="divCamAmountv1" style="display: none;">
                                        <label>
                                            <b>Amount</b> &nbsp;&nbsp;
                                            <asp:TextBox ID="txtCamAmount" runat="server" ></asp:TextBox>
                                            <asp:Label ID="lblCamAmount" runat="server"></asp:Label>
                                        </label>
                                    </div>
                                </div>
                                <div class="modal fade" id="myCampaign" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header ">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="H3">
                                                    Campaign Details</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-6">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                Campaign Name:</label>
                                                            <asp:TextBox ID="txtCampName" runat="server" CssClass="form-control" placeholder="Enter Campaign Name"></asp:TextBox>
                                                             <asp:Label ID="lblCampName" runat="server" Text="Enter Campaign Name"  Style="display: none;color: Red;"></asp:Label>
                                                        </div>
                                                         
                                                    </div>
                                                   
                                                    <div class="col-md-6 col-sm-6">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                Start Date:</label>
                                                            <div class="form-group">
                                                                <div class='input-group date' id='datetimepicker1'>
                                                                    <asp:TextBox ID="CampDate" runat="server" CssClass="form-control" placeholder="Enter Date"></asp:TextBox>
                                                                    <span  class="input-group-addon"><a id="lbtnCal1"><span class="glyphicon glyphicon-calendar"></span></a> 
                                                                    </span>
                                                                </div>                                                              
                                                                <asp:CalendarExtender ID="txtFromDate_CalendarExtender" runat="server" 
                                                                    Enabled="True" TargetControlID="CampDate" PopupButtonID="lbtnCal1" Format="dd-MMM-yyyy">
                                                                </asp:CalendarExtender>
                                                                <asp:Label ID="lblCampDate" runat="server" Text="Enter Campaign Start Date"  Style="display: none;color: Red;"></asp:Label>
                                                                <script type="text/javascript">
                                                                    $(function () {
                                                                        $('datetimepicker1').datetimepicker();
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                  <div class="clearfix">
                                                    </div>
                                                    <%--<div class="col-md-12 col-sm-12"> <label for="fname">
                                                                Campaign Image
                                                            </label></div>
                                                             <div class="clearfix">
                                                    </div>
                                                    <br />--%>
                                                    <div class="col-md-4 col-sm-4">
                                                        <div class="form-group">
                                                            <label for="fname">
                                                                
                                                                Upload Your Campaign Image
                                                            </label>

                                                            <asp:FileUpload ID="fuload1" runat="server" CssClass="form-control"  />
                                                 </div>                                                         
                                                    </div>
                                                    <div class="col-md-8 col-sm-8">
                                                      <label for="fname">
                                                                Select Any Campaign Image
                                                            </label>
                                                        <asp:RadioButtonList ID="rdbtnImg" runat="server"  CssClass="table table-responsive radio-toolbar" RepeatDirection="Horizontal" style=" margin-top:0px; padding:0px;"  >
                                                            <asp:ListItem runat="server" Value="1" Text="<img src='../CampaignsImages/adopt-a-school.jpg' width='150px' height='100px' >"  Selected="True" />
                                                            <asp:ListItem runat="server" Value="2" Text="<img src='../CampaignsImages/campaing2.jpg' width='150px' height='100px' >" />
                                                            <asp:ListItem runat="server" Value="3" Text="<img src='../CampaignsImages/campaing3.jpg' width='150px' height='100px' >" />
                                                        </asp:RadioButtonList>
                                                    </div>
                                                    <div class="clearfix">
                                                    </div>
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            <label for="fname">
                                                                Campaign Overview</label>
                                                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                                            
                                                        </div>
                                                         
                                                    </div>
                                                </div>
                                               
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    Close</button>
                                                    <%--<asp:LinkButton ID="lbtnSaveChanges" runat="server" CssClass="btn btn-primary" ValidationGroup="camp" OnClientClick="javascript:CampTest();"> Save changes</asp:LinkButton>--%>
                                                <input type="button" class="btn btn-primary" value="Save" id="btnCampClose" ValidationGroup="camp"
                                                    onclick="javascript:CampTest();" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="modal fade" id="divpackageDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog modal-lg modal-dialog-edited">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="H4">
                                                Package Details</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <table class="hardware-table">
                                                        <thead>
                                                            <tr>
                                                                <td>
                                                                    Hardware
                                                                </td>
                                                                <td>
                                                                    Software
                                                                </td>
                                                                <td>
                                                                    Content
                                                                </td>
                                                                <td>
                                                                    Support
                                                                </td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    Interactive Digital Board
                                                                </td>
                                                                <td>
                                                                    Curriculum Mapping Engine
                                                                </td>
                                                                <td>
                                                                    Classes 1 – 10 (State, CBSE, ICSE curriculum)
                                                                </td>
                                                                <td>
                                                                    Teacher Training
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Projector
                                                                </td>
                                                                <td>
                                                                    Learning Management Systems
                                                                </td>
                                                                <td>
                                                                    Mathematics, English, Science &amp; Social
                                                                </td>
                                                                <td>
                                                                    Hardware Usage Training &amp; Support
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    CPU / Digi box
                                                                </td>
                                                                <td>
                                                                    Android Software
                                                                </td>
                                                                <td>
                                                                    Audio-visual Multi-media content
                                                                </td>
                                                                <td>
                                                                    Software Usage Training &amp; Support
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    CPU / Digi box Supplemental Power Back-up
                                                                </td>
                                                                <td>
                                                                    PL Multi Model
                                                                </td>
                                                                <td>
                                                                    PowerPoint Presentation
                                                                </td>
                                                                <td>
                                                                    Content Updates Installation
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Key Board and Mouse
                                                                </td>
                                                                <td>
                                                                    PL Multi Model
                                                                </td>
                                                                <td>
                                                                    Class Notes - Points-to-Remember
                                                                </td>
                                                                <td>
                                                                    Printed Collaterals &amp; Reading Material Provision
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Cabling, Casing, Wall mount kit and Wiring
                                                                </td>
                                                                <td>
                                                                    Online Accounts for Contents Access
                                                                </td>
                                                                <td>
                                                                    Worksheets - Skills Diagnostic
                                                                </td>
                                                                <td>
                                                                    Customer Support – Academic
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Speakers
                                                                </td>
                                                                <td>
                                                                    Cloud based Data Center
                                                                </td>
                                                                <td>
                                                                    Virtual Labs
                                                                </td>
                                                                <td>
                                                                    Intelligent Reports
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    External Storage Device
                                                                </td>
                                                                <td>
                                                                    Third Party -Skills Software
                                                                </td>
                                                                <td>
                                                                    Assessments
                                                                </td>
                                                                <td>
                                                                    Call Center – online and mobile support
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="hardware-table2">
                                                        <thead>
                                                            <tr>
                                                                <td>
                                                                    Program
                                                                </td>
                                                                <td colspan="3">
                                                                    Individual* (Rs.)
                                                                </td>
                                                                <td>
                                                                    Total
                                                                </td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                    Year I
                                                                </td>
                                                                <td>
                                                                    Year II
                                                                </td>
                                                                <td>
                                                                    Year III
                                                                </td>
                                                                <td>
                                                                    For 3 Years
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Adopt-a-School /Unit (Class)
                                                                </td>
                                                                <td>
                                                                    100K
                                                                </td>
                                                                <td>
                                                                    25K
                                                                </td>
                                                                <td>
                                                                    25K
                                                                </td>
                                                                <td>
                                                                    150K
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                                Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="divDonateDetails" runat="server">
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-3">
                                    </div>
                                    <div class="col-md-5">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2 class="btn btn-default btn-yellow btn-block">
                                            <div class="row">
                                                <div class="right col-md-4 text-left"><span class="steps">Step-3</span>
                                                    Donor Details</div>
                                                <div class="left col-md-8 text-right">
                                                    <input type="radio" name="name" id="radio1" value="1" checked="checked" onclick="OpenNewUser(1);" />
                                                    New User? Sign Up &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" name="name" id="radio2" value="1" onclick="OpenFreeUserMessage(2);" />
                                                    Existing User
                                                </div>
                                            </div>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                            <div id="divcamDonarDetails" runat="server" visible="false">
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-3">
                                    </div>
                                    <div class="col-md-5">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        <h2 class="btn btn-default btn-yellow btn-block">
                                            <div class="row">
                                                <div class="right col-md-4 text-left">
                                                    Donor Details</div>
                                            </div>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                            <div id="divNewUser" runat="server">
                                <div class="row spacer2">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="fname">
                                                Donor Name's</label>
                                            <asp:TextBox ID="txtDonarName" runat="server" CssClass="form-control" placeholder="Ramesh,Smith.."></asp:TextBox>
                                             <asp:Label ID="lblDonarName" runat="server" Text="Enter Donar Name"  Style="display: none;color: Red;"></asp:Label>
                                            
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="lname">
                                                Email Address</label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Address" onblur="CheckMail()" ></asp:TextBox>
                                            <asp:Label ID="lblErrorEmail" runat="server" Text="Enter Email" ForeColor="Red" Font-Size="Small" Style="display: none;" ></asp:Label>
                                            <asp:Label ID="lblEmail11" runat="server" Style="display: none; color: Red;" Text="User Name Already Exists" ></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="fname">
                                                Mobile No</label>
                                            <asp:TextBox ID="txtMobilenum" runat="server" MaxLength="10"  CssClass="form-control" onkeypress="return isNumberKey(event)"  placeholder="Mobile Number"></asp:TextBox>
                                              <asp:Label ID="lblDonarMobNum" runat="server" Text="Enter Donar Mobile Number"  Style="display: none;color: Red;"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row spacer2">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="lname">
                                                Address 1</label>
                                            <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" placeholder="Address1"></asp:TextBox>
                                              <asp:Label ID="lblAddress1" runat="server" Text="Enter Address"  Style="display: none;color: Red;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="fname">
                                                Address 2</label>
                                            <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="lname">
                                                Location</label>
                                            <asp:TextBox ID="txtlocation" runat="server" CssClass="form-control" placeholder="Location"></asp:TextBox>
                                               <asp:Label ID="lbllocation" runat="server" Text="Enter Location"  Style="display: none;color: Red;"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row spacer2">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="name">
                                                Select Country:</label>
                                            <asp:DropDownList ID="ddlcountry" runat="server" CssClass="form-control" AppendDataBoundItems="true"
                                                onchange="PopulateStates();" DataTextField="CountryName" DataValueField="CountryID">
                                            </asp:DropDownList>
                                               <asp:Label ID="lblCountry" runat="server" Text="Select Country"  Style="display: none;color: Red;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="name">
                                                Select State:</label>
                                            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" DataTextField="StateName"
                                                onchange="GetStateID();" DataValueField="StateID">
                                            </asp:DropDownList>
                                             <asp:Label ID="lblState" runat="server" Text="Select State"  Style="display: none;color: Red;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="fname">
                                                Pincode</label>
                                            <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control" placeholder="Zip Code"></asp:TextBox>
                                             <asp:Label ID="lblpincode" runat="server" Text="Enter Pincode"  Style="display: none;color: Red;"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />

                               <asp:CheckBox ID="chk" runat="server" Checked="true" />
                                         
                                        I have read through the website's Privacy agree to make a donation
                                        <br />
                            <div class="row">
                                <div class="col-md-12">
                                    <h2 class="btn-yellow btn-block text-left "><span class="steps">Step-4</span>
                                        Payment Details</h2>
                                </div>
                            </div>
                            <div class="row spacer2">

                                <div class="col-md-6">
                                    <label>
                                        <input type="radio" name="Payment" id="radio3" value="1" checked="checked" onclick="DivDatahide()" />
                                       Write a Chequee/DD</label>
                                </div>
                             
                             

                                <div class="col-md-8">
                                    <label>
                                        <input type="radio" name="Payment" id="radio4" value="2" onclick="DivData()" />
                                       Deposit in Account </label> 
                                       <div id="wiredata" style="display:none;">
                                      <table class="table table-responsive"  id="wiredata">
                                       <tbody>
                                       <tr>
                                       
                                        <td>  A/C Name</td> <td>Centre for Training Research And Development</td></tr>
                                        <tr><td> Bank Name</td><td> State Bank Of India</td></tr>
                                         <tr><td>A/C No</td><td>34213387722</td></tr>
                                          <tr><td>Branch Name</td><td>Siripuram Junction-VSP</td></tr>
                                              <tr><td>IFS Code</td><td>SBIN0006846</td></tr>
                                                </tbody>
                                       </table>
                                       </div>                                 
                                </div>

                                 

                            </div>
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="form-group">
                                     
                                        <asp:LinkButton ID="lnkdonate" runat="server" CssClass="btn yellow-blk text-right donate-button"
                                            OnClick="lnkdonate_Click1" OnClientClick="javascript:return DonarValidations();">Pay Now</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- container start -->
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

     
    

      
    <asp:HiddenField ID="hdcountryID" runat="server" />
    <asp:HiddenField ID="hdDonarStateID" runat="server" />
    <asp:HiddenField ID="hdSelectSponserType" runat="server" Value="1" />
    <asp:HiddenField ID="hdContributionType" runat="server" />
    <asp:HiddenField ID="hdSuggestedStateName" runat="server" />
    <asp:HiddenField ID="hdSuggestedStateID" runat="server" />
    <asp:HiddenField ID="hdSuggestedDistrictName" runat="server" />
    <asp:HiddenField ID="hdSuggestedDistrictID" runat="server" />
    <asp:HiddenField ID="hdSuggestedSchoolName" runat="server" />
    <asp:HiddenField ID="hdSelectSchoolType" runat="server" Value="1" />
    <asp:HiddenField ID="hdStatename" runat="server" />
    <asp:HiddenField ID="hdstateID" runat="server" />
    <asp:HiddenField ID="hddistrictName" runat="server" />
    <asp:HiddenField ID="hddistrictID" runat="server" />
    <asp:HiddenField ID="hdtotalAmount" runat="server" />
    <asp:HiddenField ID="hdDonarUserType" runat="server" Value="1" />
    <asp:HiddenField ID="hdschoolID" runat="server" Value="0" />
    <asp:HiddenField ID="hdSponserContributionType" runat="server" Value="1" />
    <asp:HiddenField ID="hdSponserContributionID" runat="server" Value="0" />
    <asp:HiddenField ID="hdCampAmount" runat="server" />
    <asp:HiddenField ID="hdAmountPaymentType" runat="server" Value="1" />
    <asp:HiddenField ID="hdunits" runat="server" Value="1" />
    <asp:HiddenField ID="hdYears" runat="server" Value="0" />
    <asp:HiddenField ID="hdGoalAmt" runat="server" />
    <asp:HiddenField ID="hdActualAmt" runat="server" />
    <asp:HiddenField ID="hdAmountText" runat="server" />
    <script src="../js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script>
        function Test() {          
            if (localStorage.getItem("SchoolName") == "") {
            }
            else {

                document.getElementById('<%= hdStatename.ClientID %>').value = localStorage.getItem("StateName");
                document.getElementById('<%= hdstateID.ClientID %>').value = localStorage.getItem("StateID");
                document.getElementById('<%= hddistrictID.ClientID %>').value = localStorage.getItem("DistrictID");

                BindDataToTable();

            }

        }


        function BindDataToTable() {

            document.getElementById('<%=lblGetSchoolName.ClientID %>').innerHTML = localStorage.getItem("SchoolName");
            document.getElementById("ContentPlaceHolder1_lblSchoolDataError").style.display = 'none';
            document.getElementById('<%=lblGetStateName.ClientID %>').innerHTML = "Andhra Pradesh";
            document.getElementById('<%= hdschoolID.ClientID %>').value = localStorage.getItem("SchoolID")
            document.getElementById('divschooldata').style.display = 'block';
            var units = localStorage.getItem("Units");

            if (units > 0) {
              
                bindDropdownlist(units);

            }

            $("#btnclose").attr("data-dismiss", "modal");

        }
        function bindDropdownlist(units) {

            $.ajax({
                type: "POST",
                url: pageUrl + '/BinDropDownList',
                data: '{Units: ' + 5 + '}',
                contentType: "application/json; charset=utf-8",
                success: OnDistrictsPopulated11,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function OnDistrictsPopulated11(response) {

            PopulateControl11(response.d, $("#<%=ddlUnits3.ClientID %>"));
            PopulateControl11(response.d, $("#<%=ddlUnits1.ClientID %>"));
            PopulateControl11(response.d, $("#<%=ddlUnits2.ClientID %>"));

        }


        function PopulateControl11(list, control) {
            if (list.length > 0) {
                control.removeAttr("disabled");

                $.each(list, function () {
                    control.append($("<option></option>").val(this['Value']).html(this['Text']));
                });
            }
            else {
                control.empty().append('<option selected="selected" value="0">Not available<option>');
            }
        }
        function hidelabel() {

            //          document.getElementById('divExistingUser').style.display = 'block';
            document.getElementById('divNewUser').style.display = 'none';
        }


        function SupportSchoolClose() {

            var Result = ValidationsForSupportSchool();
           
            $("#buttonSupport").removeAttr("data-dismiss", "modal");
            if (Result == true) 
            {
              
                document.getElementById('<%=lblGetSchoolName.ClientID %>').innerHTML = document.getElementById("<%=txtSchoolName.ClientID %>").value;
                document.getElementById('<%=lblGetStateName.ClientID %>').innerHTML = document.getElementById('<%= hdSuggestedStateName.ClientID %>').value;
                document.getElementById('divschooldata').style.display = 'block';
                document.getElementById("ContentPlaceHolder1_lblSchoolDataError").style.display = 'none';
                bindDropdownlist(5);
                $("#buttonSupport").attr("data-dismiss", "modal");
               // ClearTextBox();
            }
           

        }

        function ClearTextBox() {
            document.getElementById("<%=txtSchoolName.ClientID %>").value = "";
            document.getElementById("<%=txtPrincipalName.ClientID %>").value = "";
            document.getElementById("<%=txtSchoolMobileNumber.ClientID %>").value = "";
            document.getElementById("<%=txtzipcode.ClientID %>").value = "";


        }

        function ValidationsForSupportSchool() 
        {

        var PrincipalName= document.getElementById("<%=txtPrincipalName.ClientID %>").value;
        var SchoolName = document.getElementById("<%=txtSchoolName.ClientID %>").value;
        var State = document.getElementById('<%= hdSuggestedStateID.ClientID %>').value;
        var District = document.getElementById('<%= hdSuggestedDistrictID.ClientID %>').value;
        var MobileNum=document.getElementById("<%=txtSchoolMobileNumber.ClientID %>").value;
        var zipcode = document.getElementById("<%=txtzipcode.ClientID %>").value;
        var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id

        var zipcode1 = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;  //Validate ZipCode

        if (SchoolName == "") {
            document.getElementById("ContentPlaceHolder1_lblSchoolName").style.display = 'block';
            return false;
        }
        else {
            document.getElementById("ContentPlaceHolder1_lblSchoolName").style.display = 'none';
           
        }
        if (PrincipalName == "") {
            document.getElementById("ContentPlaceHolder1_lblPrincipalName").style.display = 'block';
            return false;
        }
        else {
            document.getElementById("ContentPlaceHolder1_lblPrincipalName").style.display = 'none';
          
        }
        if (State == "") {
            document.getElementById("ContentPlaceHolder1_lblSuggState").style.display = 'block';
            return false;
        }
        else {
            document.getElementById("ContentPlaceHolder1_lblSuggState").style.display = 'none';
           
        }
        if (District == "") {
            document.getElementById("ContentPlaceHolder1_lblSuggDistrict").style.display = 'block';
            return false;
        }
        else {
            document.getElementById("ContentPlaceHolder1_lblSuggDistrict").style.display = 'none';
          
        }

        if (MobileNum == "") {

            document.getElementById('<%=lblMobilenum.ClientID %>').innerHTML = "Enter Donar MobileNumer";
            document.getElementById("ContentPlaceHolder1_lblMobilenum").style.display = 'block';
            document.getElementById('<%=txtSchoolMobileNumber.ClientID %>').focus();
            return false;
        }
        else {

            if ((MobileNum.length != 10)) {
                document.getElementById('<%= lblMobilenum.ClientID %>').innerHTML = "Phone number must be 10 digits";
                document.getElementById("ContentPlaceHolder1_lblMobilenum").style.display = 'block';
                document.getElementById('<%=txtSchoolMobileNumber.ClientID %>').focus();
                return false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_lblMobilenum").style.display = 'none';
               
            }
        }



        if (zipcode == "") {
            document.getElementById('<%=lblZipCode.ClientID %>').innerHTML = "Enter ZipCode";
            document.getElementById("ContentPlaceHolder1_lblZipCode").style.display = 'block';
            document.getElementById('<%=txtzipcode.ClientID %>').focus();
            return false;
        }
        else {
            document.getElementById("ContentPlaceHolder1_lblZipCode").style.display = 'none';
            return true;
        }
  



    }


    function isNumberKey(evt)
     {
        var charCode = (evt.which) ? evt.which : event.keyCode;
        if (charCode != 46 && charCode > 31
    && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }


    function CampTest() 
    {
        var Result = CampValidations();
        alert(Result);
        $("#btnCampClose").removeAttr("data-dismiss", "modal");
        alert(Result);
        if (Result == true) {

            var units = document.getElementById('<%= hdunits.ClientID %>').value;
            alert(units);
            document.getElementById('<%= hdGoalAmt.ClientID %>').value = document.getElementById("<%=txtAmountSelected.ClientID %>").value;
            document.getElementById("<%=txtAmountSelected.ClientID %>").value = parseInt(units) * 60000;
            document.getElementById('<%= hdActualAmt.ClientID %>').value = parseInt(units) * 60000;
            document.getElementById("<%=txtAmountSelected.ClientID %>").readOnly = true;
            document.getElementById('<%= hdtotalAmount.ClientID %>').value = document.getElementById("<%=txtAmountSelected.ClientID %>").value;
            document.getElementById('<%= hdAmountPaymentType.ClientID %>').value = 2;
            document.getElementById('<%= hdDonateMode.ClientID %>').value = 2;
            
            $("#btnCampClose").attr("data-dismiss", "modal");
        }


    }

    function CampValidations() {

        var CampaignName = document.getElementById("<%=txtCampName.ClientID %>").value;

        var Date = document.getElementById("<%=CampDate.ClientID %>").value;

        var CamMessage = document.getElementById("<%=txtMessage.ClientID %>").value;

        if (CampaignName == "") {

            document.getElementById("ContentPlaceHolder1_lblCampName").style.display = 'block';
            return false;
        }
        else {

            document.getElementById("ContentPlaceHolder1_lblCampName").style.display = 'none';

        }

        if (Date == "") {

            document.getElementById("ContentPlaceHolder1_lblCampDate").style.display = 'block';
            return false;
        }
        else {

            document.getElementById("ContentPlaceHolder1_lblCampDate").style.display = 'none';
        }

        if (CamMessage == "" || CamMessage != "") {
            return true;

        }
    }
    </script>

    <script>

        function ForgetPwd() {
//            $("#").hide();
//            //$("#divForpassword").show();       

            document.getElementById("ExistingUser").style.display = 'none';
        
            document.getElementById("divForpassword").style.display = 'block';

        }


        function GetLoginPopup() {

            document.getElementById("ExistingUser").style.display = 'block';

            document.getElementById("divForpassword").style.display = 'none';
         }
        
        

        function DonarValidations() {

            if (document.getElementById('<%= hdschoolID.ClientID %>').value == 0 && document.getElementById('<%= hdSelectSchoolType.ClientID %>').value == 1) {
                document.getElementById("ContentPlaceHolder1_lblSchoolDataError").style.display = 'block';
                document.getElementById("<%=txtother.ClientID %>").focus();
                return false;
            }

            if (document.getElementById('<%= hdSelectSchoolType.ClientID %>').value == 1 || document.getElementById('<%= hdSelectSchoolType.ClientID %>').value == 2) {

                if (document.getElementById("<%=txtAmountSelected.ClientID %>").value == "") 
                {
                    document.getElementById("ContentPlaceHolder1_lblpackageError").style.display = 'block';
                    document.getElementById("<%=txtother.ClientID %>").focus();
                    return false;
                }
                else {
                    document.getElementById("ContentPlaceHolder1_lblpackageError").style.display = 'none';
                }

            }
            
            
            var DonarName = document.getElementById("<%=txtDonarName.ClientID %>").value;
            var Email = document.getElementById("<%=txtEmail.ClientID %>").value;
            var MobileNum = document.getElementById("<%=txtMobilenum.ClientID %>").value;
            var Address1 = document.getElementById("<%=txtAddress1.ClientID %>").value;
            var Location = document.getElementById("<%=txtlocation.ClientID %>").value;
            var Country = document.getElementById('<%= hdcountryID.ClientID %>').value;
            var State = document.getElementById('<%= hdDonarStateID.ClientID %>').value;
            var Pincode = document.getElementById("<%=txtpincode.ClientID %>").value;
            var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
            var zipcode1 = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;  //Validate ZipCode

            if (DonarName == "") {
                document.getElementById("ContentPlaceHolder1_lblDonarName").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_lblDonarName").style.display = 'none';

            }
            if (Email == "") {
                document.getElementById("ContentPlaceHolder1_lblErrorEmail").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_lblErrorEmail").style.display = 'none';

            }

            if (MobileNum == "") {

                document.getElementById('<%=lblDonarMobNum.ClientID %>').innerHTML = "Enter Donar MobileNumer";
                document.getElementById("ContentPlaceHolder1_lblDonarMobNum").style.display = 'block';
                document.getElementById('<%=txtMobilenum.ClientID %>').focus();
                return false;
            }
            else {

                if ((MobileNum.length != 10)) {
                    document.getElementById('<%= lblDonarMobNum.ClientID %>').innerHTML = "Phone number must be 10 digits";
                    document.getElementById("ContentPlaceHolder1_lblDonarMobNum").style.display = 'block';
                    document.getElementById('<%=txtMobilenum.ClientID %>').focus();
                    return false;
                }
                else {
                    document.getElementById("ContentPlaceHolder1_lblDonarMobNum").style.display = 'none';

                }
            }

            if (Address1 == "") {
                document.getElementById("ContentPlaceHolder1_lblAddress1").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_lblAddress1").style.display = 'none';

            }
            if (Location == "") {
                document.getElementById("ContentPlaceHolder1_lbllocation").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_lbllocation").style.display = 'none';

            }


            if (Country == "") {
                document.getElementById("ContentPlaceHolder1_lblCountry").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_lblCountry").style.display = 'none';

            }
            if (State == "") {
                document.getElementById("ContentPlaceHolder1_lblState").style.display = 'block';
                return false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_lblState").style.display = 'none';

            }

            if (Pincode == "") {
                document.getElementById('<%=lblpincode.ClientID %>').innerHTML = "Enter ZipCode";
                document.getElementById("ContentPlaceHolder1_lblpincode").style.display = 'block';
                document.getElementById('<%=txtpincode.ClientID %>').focus();
                return false;
            }
            else {
                document.getElementById("ContentPlaceHolder1_lblpincode").style.display = 'none';
                return true;
            }       
        
        }
    </script>
    <asp:HiddenField ID="hdDonateMode" runat="server" Value="1" />
    <script src="../js/jquery-1.9.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <script src="../js/script.js"></script>
    <script src="../js/owl.carousel.js"></script>
    </div>
</asp:Content>
