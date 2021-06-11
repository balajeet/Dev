<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" EnableEventValidation="false"  Inherits="GrameenaVidya.Donate.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

        function ClosePopup() {

            $('#box3').animate({ 'top': '-500px' }, 500, function () {
                $('#overlay3').fadeOut('fast');

            });

            document.getElementById("radio1").checked = true;
        }


        function OpenNewUser(ID) {

       
            document.getElementById('<%= hdDonarUserType.ClientID %>').value = ID;
            document.getElementById("<%=txtDonarName.ClientID %>").value ="";
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
        var pageUrl = '<%=ResolveUrl("Default1.aspx")%>'
        function PopulateStates() {
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
        var pageUrl = '<%=ResolveUrl("Default1.aspx")%>'
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
    

      var pageUrl = '<%=ResolveUrl("Default1.aspx")%>'
      function PopulateSuggestDistrict() {
          document.getElementById('<%= hdSuggestedStateID.ClientID %>').value = $('#<%=ddlSuggestedStates.ClientID%>').val();
          document.getElementById('<%= hdSuggestedStateName.ClientID %>').value = $('#<%=ddlSuggestedStates.ClientID%>').text;
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

      }


      function SelectSponserType(ID) {

          document.getElementById('<%= hdSelectSponserType.ClientID %>').value = ID;
      }

      function SelectContributionType(ID) {
          
       
          if (ID == 7) {
              
              
              document.getElementById('<%= hdschoolID.ClientID %>').value = "0";
              document.getElementById('<%= hdstateID.ClientID %>').value = "0";
              document.getElementById('<%= hddistrictID.ClientID %>').value = "0";
              document.getElementById('<%= txtother.ClientID %>').style.display = 'block';
              document.getElementById('divSchool').style.display = 'none';
              document.getElementById('<%= hdContributionType.ClientID %>').value = ID;
              return;

          }
          else {

              document.getElementById('<%= txtother.ClientID %>').style.display = 'none';
              document.getElementById('divSchool').style.display = 'block';
          }

          if (ID == 4 || ID==5 || ID==6) {

              document.getElementById('<%= hdschoolID.ClientID %>').value = "0";
              document.getElementById('<%= hdstateID.ClientID %>').value = "0";
              document.getElementById('<%= hddistrictID.ClientID %>').value = "0";
              document.getElementById('divSchool').style.display = 'none';
          }
          else {
             
              document.getElementById('divSchool').style.display = 'block';
          }

        
          

      }

      function CheckAmount(ID) {

       

          if (document.getElementById("<%=txtAmount1.ClientID %>").value < ID) {
              alert("Minimum amount should be" + ID);

              document.getElementById("<%=txtAmount1.ClientID %>").value = "";
          }
          else {
              document.getElementById('<%=hdCampAmount.ClientID %>').value = document.getElementById("<%=txtAmount1.ClientID %>").value;
              
          }
      
      
      
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

      var pageUrl = '<%=ResolveUrl("Default1.aspx")%>'
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




  </script>

  <script type="text/javascript">
    $(function () {
        $("#TbOutboundOn").datepicker({
    });
</script>

  <%--Validations for sele       --%>
  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-container campaign">
        <!-- main-container start -->
        <div class="container">
            <!-- container start -->
            <div class="row">
                <div class="col-md-12 donate">
                    <div class="col-md-12 campaign-list">
                        <h1>
                            Donate</h1>
                        <div class="col-md-12">
                            <br />
                            <br />
                            <div id="dvSponserType" runat="server">
                              <div class="row">
                                <div class="col-md-offset-1 col-md-10 ">
                                    <h2 class="btn-yellow btn-block text-left ">
                                        Sponsor Type</h2>
                                </div>
                            </div>
                            <div class="row">
                                <br />
                                <div class="col-md-offset-1 col-md-2">
                                    <label>
                                        <input type="radio" name="individual" id="radio-10" value="1" checked="checked" onclick="javascript:SelectSponserType(1);" />
                                        Individual</label>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="radio" name="individual" id="radio-11" value="2" onclick="javascript:SelectSponserType(2);" />
                                        Corporate</label>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="radio" name="individual" id="radio-12" value="3" onclick="javascript:SelectSponserType(3);" />
                                        Government</label>
                                </div>
                            </div>

                            </div>
                             <div class="row">
                                <div class="col-md-offset-1 col-md-10 ">
                                    <h2 class="btn-yellow btn-block text-left ">
                                        My Contribution:<asp:Label ID="lblAmount" runat="server"></asp:Label> </h2>
                                </div>
                            </div>
                            <div id="divDonate" runat="server">
                            
                          
                          
                                   <div class="row">
                                <div class="col-md-offset-1 col-md-5">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio8" value="1" checked="checked" onclick="javascript:SelectContributionType(1);" />
                                       <span style="color:Orange;">1,00,000 /-  &nbsp;&nbsp;   </span> <small> Per year per class </small></label>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                </div>
                                  <div class="col-md-5">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio5" value="4"  onclick="javascript:SelectContributionType(4);" />
                                       <span style="color:Orange;">60,000 /-  &nbsp;&nbsp;   </span> <small>Hardware per class </small></label>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                </div>
                                </div>
                                                              
                                   <div class="row">
                                     <div class="col-md-offset-1 col-md-5">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio9" value="2" onclick="javascript:SelectContributionType(2);" />
                                           <span style="color:Orange;">1,50,000  /-  &nbsp;&nbsp;   </span> <small>  for 2 years per class </small></label>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                </div>
                                  <div class="col-md-5">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio6" value="5"  onclick="javascript:SelectContributionType(5);" />
                                       <span style="color:Orange;">22,500 /-  &nbsp;&nbsp;   </span> <small>DiagnosticTest per class </small></label>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                </div>
                                </div>
                                  <div class="row">
                                      <div class="col-md-offset-1 col-md-5">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio10" value="3" onclick="javascript:SelectContributionType(3);" />
                                           <span style="color:Orange;"> 2,00,000 /-  &nbsp;&nbsp;   </span> <small>  for 3 years per class</small></label>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                </div>

                                  <div class="col-md-5" id="divCamp1" runat="server">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio7" value="6"  onclick="javascript:SelectContributionType(6);" />
                                       <span style="color:Orange;">17,500/-  &nbsp;&nbsp;   </span> <small>Teacher Training and Support per class </small></label>
                                </div>
                                </div>
                                  <div class="row">
                                      <div class="col-md-offset-1 col-md-4">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio11" value="7" onclick="javascript:SelectContributionType(7);" />
                                           other</label>
                                           <asp:TextBox ID="txtother" runat="server" style="display:none;"></asp:TextBox>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                </div>
                               
                            </div>
                          
                               </div>
                                <div id="divcampaign" runat="server" visible="false">
                            
                          
                          
                                   <div class="row">
                                <div class="col-md-offset-1 col-md-10">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio12" value="1"  onclick="javascript:SelectCampContributionType(1);" />
                                       <span style="color:Orange;">1,00,000 /-  &nbsp;&nbsp;   </span> <small> Per year per class </small></label>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                       <div class="row" id="divAmount1" style="display:none;">
                                       <div class="col-md-5">

                                       <asp:TextBox ID="txtAmount1" runat="server"  CssClass="form-control"  placeholder="Enter Your Amount" onblur="CheckAmount(50000)"></asp:TextBox>
                                       </div>
                                       <div class="col-md-5">
                                       <span style="padding-top:25px;display:inline-block;margin-left:-20px">*Minimum Amount Should be 50,000</span>
                                       </div>
                                     
                                       </div>
                                          <br />
                                </div>
                              
                                 </div>
                                                              
                                   <div class="row">
                                     <div class="col-md-offset-1 col-md-10">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio14" value="2" onclick="javascript:SelectCampContributionType(2);" />
                                           <span style="color:Orange;">1,50,000  /-  &nbsp;&nbsp;   </span> <small>  for 2 years per class </small></label>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                
                                    <div class="row" id="divAmount2" style="display:none;">
                                       <div class="col-md-5">

                                       <asp:TextBox ID="txtAmount2" runat="server"  CssClass="form-control"  placeholder="Enter Your Amount"></asp:TextBox>
                                       </div>
                                       <div class="col-md-5">
                                       <span style="padding-top:25px;display:inline-block;margin-left:-20px">*Minimum Amount Should be 75,000</span>
                                       </div>
                                     
                                       </div>
                                          <br />
                                </div>
                                </div>
                                  <div class="row">
                                      <div class="col-md-offset-1 col-md-10">
                                    <label>
                                        <input type="radio" name="Contribution" id="radio16" value="3" onclick="javascript:SelectCampContributionType(3);" />
                                           <span style="color:Orange;"> 2,00,000 /-  &nbsp;&nbsp;   </span> <small>  for 3 years per class</small></label>&nbsp;&nbsp;<a href="#"><small>Details</small></a>
                                
                                <div class="row" id="divAmount3" style="display:none;">
                                       <div class="col-md-5">

                                       <asp:TextBox ID="txtAmount3" runat="server"  CssClass="form-control"  placeholder="Enter Your Amount"></asp:TextBox>
                                       </div>
                                       <div class="col-md-5">
                                       <span style="padding-top:25px;display:inline-block;margin-left:-20px">*Minimum Amount Should be 1,00,000</span>
                                       </div>
                                     
                                       </div>
                                          <br />

                                
                                </div>
                                 </div>
                          
                               </div>
                             <div id="divSchool">
                            <div class="row">
                                <div class="col-md-offset-1 col-md-10 ">
                                    <h2 class="btn-yellow btn-block text-left ">
                                        School Details</h2>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-offset-1 col-md-3">
                                    <input type="radio" name="package" id="rdSuggest" data-toggle="modal" data-target="#myModal" onclick="javascript:SelectSchoolType(1);" />
                                    <label for="rdSuggest">
                                        <b>Select School</b> &nbsp;&nbsp;                                    
                                      
                                    </label>
                                     <i data-toggle="tooltip" style="cursor:pointer;"  title="To Adopt-a-School, sponsor/donor can choose from the list of schools that Grameena Vidya has identified after much diligence. These schools have been listed based on their need,outcome and request. Please review the profile of the school(s) and the letters of appeal.."><small>Details</small></i>
                                </div>
                                <div class="col-md-4">
                                    <input type="radio" name="package" id="rdSelect" data-toggle="modal" data-target="#myModal1" onclick="javascript:SelectSchoolType(2);" />
                                    <label for="rdSelect">
                                        <b>Support My School</b>&nbsp;&nbsp;
                                 
                                    </label>
                                       <i data-toggle="tooltip" style="cursor:pointer;"   title="Sponsors / Donors can Adopt-a-School, by suggesting your own choice of school(s). The school(s) you suggest for “Support-My-School can be your alma meter or a neighborhood school or any school that you want to adopt. Please enter school profile in detail so that Grameena Vidya personnel can reach out to this school."><small>Details</small></i>
                                </div>
                                <br />
                            
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-dialog-edited">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    Modal title</h4>
                                            </div>
                                            <div class="modal-body">
                                                <iframe id="Iframe1" src="../Programs/Schoolslist.aspx" width="100%" height="600"
                                                    scrolling="auto" frameborder="0" onload="au2toResize('iDemo');"></iframe>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    Close</button>
                                                    <input type="button" class="btn btn-primary" value="Save changes" id="btnclose" onclick="javascript:Test();"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-dialog-edited">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="H1">
                                                    Modal title</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                School Name:</label>
                                                            <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-control" placeholder="Enter School Name"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                Principal:</label>
                                                            <asp:TextBox ID="txtPrincipalName" runat="server" CssClass="form-control" placeholder="Enter Principal Name"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                State:</label>
                                                            <asp:DropDownList ID="ddlSuggestedStates" runat="server" DataTextField="StateName"
                                                                DataValueField="StateID" CssClass="form-control" onchange="PopulateSuggestDistrict();">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                District:</label>
                                                            <asp:DropDownList ID="ddlSuggestDistricts" runat="server" CssClass="form-control"
                                                                DataTextField="DistrictName" DataValueField="DistrictID" onchange="GetDistrictID();">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                Mobile Number:</label>
                                                            <asp:TextBox ID="txtSchoolMobileNumber" runat="server" CssClass="form-control" placeholder="Enter Mobile Number"></asp:TextBox></div>
                                                    </div>
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                ZipCode:</label>
                                                            <asp:TextBox ID="txtzipcode" runat="server" CssClass="form-control" placeholder="Enter Zip Code"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
divschooldata</div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    Close</button>
                                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                                    Save changes</button>
                                            </div>
                                        </div>
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
                                    <div class="col-md-offset-1 col-md-10">
                                        <h2 class="btn btn-default btn-yellow btn-block">
                                            <div class="row">
                                                <div class="right col-md-4 text-left">
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
                                <div id="divNewUser" runat="server" >
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Donor Name</label>
                                            <asp:TextBox ID="txtDonarName" runat="server" CssClass="form-control" placeholder="Donar Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="lname">
                                                Email Address</label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Address" onblur="CheckMail()"></asp:TextBox>
                                              <asp:Label ID="lblErrorEmail" runat="server" ForeColor="Red" Font-Size="Small" Style="display: none;"></asp:Label>
                                     
                                    <asp:Label ID="lblEmail11" runat="server" style="display:none; color:Red;" Text="User Name Already Exists" ></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Mobile No</label>
                                            <asp:TextBox ID="txtMobilenum" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="lname">
                                                Address 1</label>
                                            <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" placeholder="Address1"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Address 2</label>
                                            <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="lname">
                                                Location</label>
                                            <asp:TextBox ID="txtlocation" runat="server" CssClass="form-control" placeholder="Location"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="name">
                                                Select Country:</label>
                                            <asp:DropDownList ID="ddlcountry" runat="server" CssClass="form-control" AppendDataBoundItems="true"
                                                onchange="PopulateStates();" DataTextField="CountryName" DataValueField="CountryID">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="name">
                                                Select State:</label>
                                            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" DataTextField="StateName" onchange="GetStateID();"
                                                DataValueField="StateID">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Pincode</label>
                                                <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control" placeholder="Zip Code"></asp:TextBox>
                                            
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                        </div>
                                    </div>
                                </div>
                                </div>
                          
                            <div class="row" style="display:none;" id="divtable">
                                <table id="tableSchools1" class="table" >
                                    <tbody>
                                        <tr>
                                            <th>
                                                SchoolName
                                            </th>
                                            <th>
                                                Classes
                                            </th>
                                            <th>
                                                No of Years
                                            </th>
                                            <th>
                                                Total Cost
                                            </th>
                                        </tr>
                                     </tbody>
                                    
                                  
                                </table>
                            </div>
                          

                            <div class="row">
                                <div class="col-md-offset-1 col-md-10 ">
                                    <h2 class="btn-yellow btn-block text-left ">
                                        Payment Details</h2>
                                </div>
                            </div>
                         
                            <div class="row">
                                <br />
                                <div class="col-md-offset-1 col-md-2">
                                    <label>
                                        <input type="radio" name="Payment" id="radio3" value="1" checked="checked" />
                                        Online</label>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="radio" name="Payment" id="radio4" value="2" />
                                        Offline</label>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col-md-offset-1 col-md-10">
                                    <div class="form-group">
                                    <asp:CheckBox ID="chk" runat="server" Checked="true" />
                                    I have read through the website's Privacy , Donor Policy and agree to make a donation
                                    <br />
                                    <asp:LinkButton ID="lnkdonate" runat="server" 
                                            CssClass="btn yellow-blk text-right" OnClientClick="Validations();" onclick="lnkdonate_Click">Donate</asp:LinkButton>
                                                    <asp:LinkButton ID="lnkCampDonate" runat="server" Visible="false" 
                                            CssClass="btn yellow-blk text-right" OnClientClick="Validations();" 
                                            onclick="lnkCampDonate_Click1">CDonate</asp:LinkButton>
                                
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
     </div>
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
 <asp:HiddenField ID="hdtotalAmount" runat="server"/>
  <asp:HiddenField ID="hdyears" runat="server"/>
  <asp:HiddenField ID="hdDonarUserType" runat="server" Value="1"/>
  <asp:HiddenField ID="hdschoolID" runat="server" />
  <asp:HiddenField ID="hdCampAmount" runat="server" />
  

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
 document.getElementById('<%=lblGetStateName.ClientID %>').innerHTML = "Andhra Pradesh";
 document.getElementById('<%= hdschoolID.ClientID %>').value = localStorage.getItem("SchoolID")
   document.getElementById('divschooldata').style.display = 'block';
        
        $("#btnclose").attr("data-dismiss", "modal");
        
    }

    function hidelabel() {
      
        //          document.getElementById('divExistingUser').style.display = 'block';
        document.getElementById('divNewUser').style.display = 'none';
    }
</script>

   
</asp:Content>

