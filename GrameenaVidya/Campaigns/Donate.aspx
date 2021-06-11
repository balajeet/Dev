<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" EnableEventValidation="false" Inherits="GrameenaVidya.Campaigns.Donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
  function OpenNewUser(ID) {


            document.getElementById('<%=hdUserType.ClientID %>').value = ID;
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

        function OpenExistingUser(ID) {
            document.getElementById('<%=hdUserType.ClientID %>').value = ID;

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
        </script>


          <script type="text/javascript">
              var pageUrl = '<%=ResolveUrl("Donate.aspx")%>'
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


                
        var pageUrl = '<%=ResolveUrl("Donate.aspx")%>'
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
    function DivData() {
        document.getElementById('wiredata').style.display = 'block';


    }
    function DivDatahide() {
        document.getElementById('wiredata').style.display = 'none';


    }
   </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
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
                                                <div class="right col-md-4 text-left">
                                                    Donor Details</div>
                                                <div class="left col-md-8 text-right">
                                                    <input type="radio" name="name" id="radio1" value="1" checked="checked" onclick="OpenNewUser(1);" />
                                                    New User? Sign Up &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" name="name" id="radio2" value="1" onclick="OpenExistingUser(2);" />
                                                    Existing User
                                                </div>
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
                                                Donor Name</label>
                                            <asp:TextBox ID="txtDonarName" runat="server" CssClass="form-control" placeholder="Donar Name"></asp:TextBox>
                                             <asp:Label ID="lblDonarName" runat="server" Text="Enter Donar Name"  Style="display: none;color: Red;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="lname">
                                                Email Address</label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Address"
                                                onblur="CheckMail()"></asp:TextBox>
                                            <asp:Label ID="lblErrorEmail" runat="server" ForeColor="Red" Font-Size="Small" Style="display: none;"></asp:Label>
                                            <asp:Label ID="lblEmail11" runat="server" Style="display: none; color: Red;" Text="User Name Already Exists"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="fname">
                                                Mobile No</label>
                                            <asp:TextBox ID="txtMobilenum" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
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
                           
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked="true" />
                                         
                                        I have read through the website's Privacy agree to make a donation
                                        <br />
                            <div class="row">
                                <div class="col-md-12">
                                    <h2 class="btn-yellow btn-block text-left ">
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
                                     
                                        <asp:LinkButton ID="lnkdonate" runat="server" 
                                            CssClass="btn yellow-blk text-right donate-button"  OnClientClick="javascript:return Donardatavalidations();" onclick="lnkdonate_Click">Donate</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
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
                       <label> <a id="A6" onclick="ForgetPwd();"   class="left hover-underline text-right">
                            Forgot Password?</a></label>
               

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



    <asp:HiddenField ID="hdUserType" runat="server" Value="1" />
      <asp:HiddenField ID="hdcountryID" runat="server"/>
        <asp:HiddenField ID="hdDonarStateID" runat="server"/>
  
    <asp:HiddenField ID="hdSelectSponserType" runat="server" Value="1" />

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


        function Donardatavalidations() 
        {           
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
</asp:Content>
