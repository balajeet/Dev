<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" EnableEventValidation="false" Inherits="GrameenaVidya.Donate.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            document.getElementById('divExistingUser').style.display = 'none';
            document.getElementById('divNewUser').style.display = 'block';

        }

    </script>
 
    <script>
    var pageUrl = '<%=ResolveUrl("Default.aspx")%>'
    function PopulateStates() {
        alert("hi");
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
      var pageUrl = '<%=ResolveUrl("Default.aspx")%>'
      function GO() {
          alert("hi");
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
          alert(uname);
          alert(Pwd);
          $.ajax({
              type: "POST",
              url: pageUrl + '/CheckLogin',
              data: "{'username':'" + uname + "','Password':'" + Pwd + "'}",

              contentType: "application/json; charset=utf-8",
              dataType: "json",
              success: function (data) {
                  if (data.d.length > 0) {
                      for (var i = 0; i < data.d.length; i++) {
                          document.getElementById("<%=lblDonarName.ClientID %>").innerHTML = data.d[i].Name;
                          document.getElementById("<%=lblEmail.ClientID %>").innerHTML = data.d[i].Email;
                          document.getElementById("<%=lblMobileNum.ClientID %>").innerHTML = data.d[i].MobileNum;
                          document.getElementById("<%=lblAddress1.ClientID %>").innerHTML = data.d[i].Address;
                          document.getElementById("<%=lbllocation.ClientID %>").innerHTML = data.d[i].location;
                          document.getElementById("<%=lblCountry.ClientID %>").innerHTML = data.d[i].Country;
                          document.getElementById("<%=lblState.ClientID %>").innerHTML = data.d[i].State;
                          document.getElementById("<%=lblAddress2.ClientID %>").innerHTML = data.d[i].Location;


                          $('#box3').animate({ 'top': '-500px' }, 500, function () {
                              $('#overlay3').fadeOut('fast');

                          });
                          document.getElementById('divExistingUser').style.display = 'block';
                          document.getElementById('divNewUSer').style.display = 'none';
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

          alert($("#<%=ddlState.ClientID %>").val());
          document.getElementById('<%= hdDonarStateID.ClientID %>').value = $("#<%=ddlState.ClientID %>").val(); 
          
      }

</script>

  <%--suggest school Data--%>

  <script>

 

      var pageUrl = '<%=ResolveUrl("Default.aspx")%>'
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
          alert(ID);
          document.getElementById('<%= hdSelectSchoolType.ClientID %>').value = ID;

      }


      function SelectSponserType(ID) {

          document.getElementById('<%= hdSelectSponserType.ClientID %>').value = ID;
      }

  </script>
  

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
                            <br />
                            <div class="row">
                                <div class="col-md-offset-1 col-md-3">
                                </div>
                                <div class="col-md-5">
                                </div>
                            </div>
                            <div id="divNewUSer">
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
                                                    Registered User
                                                </div>
                                            </div>
                                        </h2>
                                    </div>
                                </div>
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
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
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
                            <div id="divExistingUser" style="display: none;">
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Donor Name</label>
                                            <asp:Label ID="lblDonarName" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Email</label>
                                            <asp:Label ID="lblEmail" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Mobile</label>
                                            <asp:Label ID="lblMobileNum" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="lname">
                                                Address1*</label>
                                            <asp:Label ID="lblAddress1" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="lname">
                                                Address2</label>
                                            <asp:Label ID="lblAddress2" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="lname">
                                                Location</label>
                                            <asp:Label ID="lbllocation" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="lname">
                                                Country*</label>
                                            <asp:Label ID="lblCountry" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="lname">
                                                State</label>
                                            <asp:Label ID="lblState" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="lname">
                                                ZipCode</label>
                                            <asp:Label ID="lblZipcode" runat="server" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-offset-1 col-md-10 ">
                                    <h2 class="btn-yellow btn-block text-left ">
                                        School Details</h2>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-offset-1 col-md-2">
                                    <input type="radio" name="package" id="rdSuggest" data-toggle="modal" data-target="#myModal" onclick="javascript:SelectSchoolType(1);" />
                                    <label for="rdSuggest">
                                        <b>Select School</b>
                                    </label>
                                </div>
                                <div class="col-md-offset-1 col-md-2">
                                    <input type="radio" name="package" id="rdSelect" data-toggle="modal" data-target="#myModal1" onclick="javascript:SelectSchoolType(2);" />
                                    <label for="rdSelect">
                                        <b>Suggest School</b>
                                    </label>
                                </div>
                                <div class="col-md-offset-1 col-md-3">
                                    <input type="radio" name="package" id="rdGVPool" onclick="javascript:SelectSchoolType(3)"; />
                                    <small>
                                        <asp:TextBox ID="txtOthers" runat="server" Width="70"></asp:TextBox>
                                        <small>Grameena Vidya Pool</small>
                                </div>
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
                                            </div>
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
                            <br />

                               <div class="row">
                                <div class="col-md-offset-1 col-md-10 ">
                                    <h2 class="btn-yellow btn-block text-left ">
                                        Type Of Payment</h2>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-offset-1 col-md-2">
                                    <input type="radio" name="package" id="Radio5" data-toggle="modal" data-target="#myModal" onclick="javascript:SelectSchoolType(1);" />
                                    <label for="rdSuggest">
                                        <b>Amount</b>
                                                                         </label>
                                </div>
                                <div class="col-md-offset-1 col-md-2">
                                    <input type="radio" name="package" id="Radio6" data-toggle="modal" data-target="#myModal3" />
                                    <label for="rdSelect">
                                        <b>Create Campaign</b>
                                    </label>
                                </div>
                                <div class="col-md-offset-1 col-md-3">
                                   <input type="radio" name="package" id="Radio7" data-toggle="modal" data-target="#myModal1" onclick="javascript:SelectSchoolType(2);" />
                                    <label for="rdSelect">
                                        <b>Join Campaign</b>
                                    </label>
                                </div>
                              
                                <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-dialog-edited">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="H3">
                                                    Campaign Details</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                Campaign Name:</label>
                                                            <asp:TextBox ID="txtCampaignName" runat="server" CssClass="form-control" placeholder="Enter Campaign Name"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                StartDate:</label>
                                                            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" placeholder="Enter StartDate"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="name">
                                                                Amount:</label>
                                                          <asp:TextBox ID="txtAmount" runat="server" placeholder="Amount" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5 col-sm-5">
                                                        <div class="form-group">
                                                            <label for="fname">
                                                Campaign Image
                                            </label>
                                            <asp:FileUpload ID="fuload1" runat="server" CssClass="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                             
                                            </div>
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
                            <br />
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
                                    <asp:LinkButton ID="lnkdonate" runat="server" 
                                            CssClass="btn yellow-blk text-right" onclick="lnkdonate_Click">Donate</asp:LinkButton>
                                
                                   
                                   
                                   
                                        <%--<button class="btn btn-default btn-yellow" type="submit">
                                            Donate</button>--%>
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
     <asp:HiddenField ID="hdDonarStateID" runat="server" />
    <asp:HiddenField ID="hdSelectSponserType" runat="server" Value="1" />
    <asp:HiddenField ID="hdSuggestedStateName" runat="server" />
    <asp:HiddenField ID="hdSuggestedStateID" runat="server" />
<asp:HiddenField ID="hdSuggestedDistrictName" runat="server" />
<asp:HiddenField ID="hdSuggestedDistrictID" runat="server" />
<asp:HiddenField ID="hdSuggestedSchoolName" runat="server" />
 <asp:HiddenField ID="hdSelectSchoolType" runat="server" Value="1" />
 <asp:HiddenField ID="hdSchoolID" runat="server" />
<asp:HiddenField ID="hdStatename" runat="server" />
<asp:HiddenField ID="hdstateID" runat="server" />
<asp:HiddenField ID="hddistrictName" runat="server" />
<asp:HiddenField ID="hddistrictID" runat="server" />
 <asp:HiddenField ID="hdtotalAmount" runat="server"/>
  <asp:HiddenField ID="hdyears" runat="server"/>
  <asp:HiddenField ID="hdDonarUserType" runat="server"/>

<script>
    function Test() {
      
        if (localStorage.getItem("SchoolName") == "") {
          


        }
        else {

            document.getElementById('<%= hdStatename.ClientID %>').value = localStorage.getItem("StateName");
            document.getElementById('<%= hdstateID.ClientID %>').value = localStorage.getItem("StateID");
            document.getElementById('<%= hddistrictID.ClientID %>').value = localStorage.getItem("DistrictID");
            document.getElementById('<%= hdSchoolID.ClientID %>').value = localStorage.getItem("SchoolID");
            document.getElementById('<%= hdyears.ClientID %>').value = localStorage.getItem("YearsDuration");
            document.getElementById('<%= hdtotalAmount.ClientID %>').value = localStorage.getItem("totalamount");
            BindDataToTable();
         
        }

    }

    function BindDataToTable() {
      
        var table = document.getElementById("tableSchools1");      
         var row = table.insertRow(1);
         var cell1 = row.insertCell(0);
         var cell2 = row.insertCell(1);
         var cell3 = row.insertCell(2);
         var cell4 = row.insertCell(3);
         var schoolname = localStorage.getItem("SchoolName");
         var classnames = localStorage.getItem("ClassNames");
         var yearduration = localStorage.getItem("YearsDuration");
         var totalamount = localStorage.getItem("totalamount");
        cell1.innerHTML = schoolname;
         cell2.innerHTML = classnames;
         cell3.innerHTML = yearduration;
         cell4.innerHTML = totalamount;
         
         document.getElementById('divtable').style.display = 'block';
        
         $("#btnclose").attr("data-dismiss", "modal");
    
    }

</script>
</small>
</asp:Content>