<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DonateControl.ascx.cs" Inherits="GrameenaVidya.Controls.DonateControl" %>

<style>
.our-features .error {
color: #721c24;
background-color: #f8d7da;
border-color: #f5c6cb;
width: 100%;
margin-top: -10px;
margin-bottom: 15px;
padding: 5px;
padding-left: 5px;
padding-left: 10px;
font-size: 13px;
}
.our-features .b-bottom {
    border-bottom: 1px solid #c5c5c5;
}
.our-features .b-top {
    border-top: 1px solid #c5c5c5;
}
.our-features .b-right {
    border-right: 1px solid #c5c5c5;
}
.our-features .b-left {
    border-left: 1px solid #c5c5c5;
}
.our-features .col-md-6 {
    height: 200px;
    padding-top: 25px;
    padding-bottom: 25px;
}
.our-features img {
    margin-top: 20px;
}
.about h3 {
    color: #ff6600;
}
.about {
    background: #fff;
    padding: 20px;
}
</style>
  
<section class="about">
<div class="">
<h1>Donate</h1>
<div class="row our-features pr-inner-donate">
        <div class="col-md-12 b-right  b-left b-bottom b-top">
           
            <div class="col-md-12" id="step-1">
                <h5 class="step-heading">STEP 1 </h5>
                <h3>Choose Donation Type</h3>
                
              <div class="row" >
                   
                    <fieldset>
  <legend>Other : <small>( Minimum Rs. 500/-)</small></legend>
                     
                           <div id="dvPackagesother">

                           </div>
                    </fieldset>
                           <div class="row" id="dvPackageschool">


                           </div>

                     
                           <div class="row" id="dvPackagestudent" >

                           </div>

                
                <br />
                 <div id="selectedforPay1"></div>
               
              </div>
                    
                 <label class="error" id="errorPack" style="display:none">Please Select Any Package</label>
                
            </div>            
        </div>

        <div class="col-md-12 b-bottom b-left b-right">
         
            <div class="col-md-12">
                  <h5 class="step-heading">STEP 2 </h5>
                <h3>Donar Contact Info</h3>
                 <div class="row setup-content" id="step-2" style="padding-top:90px;">
                <div class="col-xs-12">
                 <div class="">
                 	<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
                        <div class="col-xs-6">
								<a href="#" class="active" id="register-form-link">Register Donar</a>
							</div>
							<div class="col-xs-6">
								<a href="#"  id="login-form-link">Login</a>
							</div>
							
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
                            <div style="display: none;"  id="login-form">
 

		<div class="row login-home">

  <div class="form-group col-sm-6 col-sm-offset-3">
             
                <asp:TextBox ID="txtUserName" runat="server" type="email" class="form-control" placeholder="Enter Email Address"
                    AutoComplete="off" ValidationGroup="LogIn"></asp:TextBox>
                <asp:Label ID="lblUNameEmpty" runat="server" Text="Please Enter Email Address" Style="display: none;
                    color: Red;"></asp:Label>
            </div>
           <div class="form-group col-sm-6 col-sm-offset-3">
                <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control"
                    placeholder="Enter Password"></asp:TextBox>
                <asp:Label ID="lblUPwdEmpty" runat="server" Text="Please Enter Password" Style="display: none;
                    color: Red;"></asp:Label>
            </div>

            	<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
                                             <asp:Button ID="btnlogin" runat="server"  Text="Login" CssClass=" form-control btn btn-login" onclick="btnlogin_Click"   />
												
											</div>
										</div>
									</div>
                                    	<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
                                                <a id="A6" href="~/Outlinks/ForgetPassword.aspx" runat="server" class="forgot-password hover-underline text-right">
                            Forgot Password?</a>
												
												</div>
											</div>
										</div>
									</div>
         

</div>
	
</div>      
                        
                                <div id="register-form">
                                 
                        <div class="form-horizontal">
                    <form  role="form">
                      
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-holder-name">Select Citizenship</label>
                            <div class="col-sm-9">
                                 
                           <asp:UpdatePanel ID="Updatepanel58" runat="server">
                           <ContentTemplate>
                            
                            <div class="col-sm-6">  <asp:RadioButton ID="rbdCountry" runat="server" Text="India"
                                onclick="Javascript:SelectCountry(41);" GroupName="Package1"/></div>
                         <div class="col-sm-6"> <asp:RadioButton ID="rbdCountryother"  runat="server" Text="OutSide India"
                                onclick="Javascript:SelectCountry(1);" GroupName="Package1"/></div>
                                 
                  
                     </ContentTemplate>
                    </asp:UpdatePanel>
                            </div>
                          </div>
                             <asp:UpdatePanel ID="Updatepanel1" runat="server">
                           <ContentTemplate>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-holder-name">Name</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="txtDonarname" CssClass="form-control" Width="100%" runat="server" placeholder="Name"></asp:TextBox>
                            <label class="error" id="errDonarname" style="display:none">Name Should Not Empty</label>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">Email</label>
                            <div class="col-sm-9">
                             <asp:TextBox ID="txtDonarEmail" CssClass="form-control" Width="100%" runat="server" placeholder="Email Address"></asp:TextBox>
                       <label class="error" id="errDonarEmail" style="display:none">Email Should Not Empty</label>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">Phone Number</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="txtDonarMobile" CssClass="form-control" Width="100%" runat="server"
                                placeholder="MobileNumber"></asp:TextBox>
                             <label class="error" id="errDonarMobile" style="display:none">MobileNumber Should Not Empty</label>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">Address</label>
                            <div class="col-sm-9">
                             <asp:TextBox ID="txtDonarAddress" CssClass="form-control" Width="100%" runat="server"
                                placeholder="Address1"></asp:TextBox>
                             <label class="error" id="errDonarAddress" style="display:none">Address Should Not Empty</label>
                            </div>
                          </div>
                       
                               <div class="form-group">
                                    <label class="col-sm-3 control-label" for="card-number">Location</label>
                                    <div class="col-sm-9">
                                       <asp:TextBox ID="txtDonarLocation" CssClass="form-control" Width="100%" runat="server"
                                placeholder="Address2"></asp:TextBox>
                             <label class="error" id="errDonarLocation" style="display:none">Location Should Not Empty</label>
                                    </div>
                                  </div>

                          </ContentTemplate>
                            </asp:UpdatePanel>
                         
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">Country</label>
                            <div class="col-sm-9">
                              <asp:UpdatePanel ID="Updatepanel8" runat="server">
                           <ContentTemplate>
                            <asp:DropDownList ID="ddlcountry" CssClass="form-control" runat="server" DataTextField="Countryname" AutoPostBack="false"
                                DataValueField="CountryID" Width="100%" onselectedindexchanged="ddlcountry_SelectedIndexChanged">
                            </asp:DropDownList>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            </div>
                          </div>
                          
                           
                          <div class="form-group" style="display:none">
                            <label class="col-sm-3 control-label" for="card-number">State</label>
                            <div class="col-sm-9">
                               <asp:UpdatePanel ID="Updatepanel9" runat="server">
                           <ContentTemplate>
                            <asp:DropDownList ID="ddlState1" CssClass="form-control" runat="server" Width="100%" AutoPostBack="true"  onchange="BindDonarStateID();">
                            </asp:DropDownList>
                             </ContentTemplate>
                             </asp:UpdatePanel>
                              <label class="error" id="errCountry" style="display:none">Country Should Not Empty</label>
                            </div>
                          </div>
                         
                        <div class="form-group">
                                    <label class="col-sm-3 control-label" for="card-number">PIN</label>
                                    <div class="col-sm-9">
                                      <asp:TextBox ID="txtDonarPin" CssClass="form-control" Width="100%" runat="server"
                                placeholder="pincode"></asp:TextBox>
                            <label class="error" id="errDonarPin" style="display:none">DonarPin Should Not Empty</label>
                                    </div>
                                  </div>
                                    
                        <div class="form-group" id="dvPAN">
                                    <label class="col-sm-3 control-label" for="card-number">PAN</label>
                                    <div class="col-sm-9">
                                      <asp:TextBox ID="txtPAN" CssClass="form-control" Width="100%" runat="server"
                                placeholder="PAN"></asp:TextBox>
                            <label class="error" id="errPAN" style="display:none">PAN Should Not Empty</label>
                                    </div>
                                  </div>
                                                    
                    </form>
                </div>
                  <label class="error" id="errorDonar" style="display:none">User EmailAddress Is Already Exist. Try With Other One.</label>
                           <button class="btn btn-warning nextBtn btn-lg pull-right" onclick="MakePayment()" type="button">Confirm Details</button>
                    </div>
                              
							
							</div>
						</div>
					</div>
				</div>
               
              </div>
                  </div>
                </div>
            </div>
                
            </div>            
       


        <div class="col-md-12 b-right b-bottom b-left">
            
            <div class="col-md-12">
                  <h5 class="step-heading">STEP 3 </h5>
            <div id="dvMakePayment" style="display:none">
                <h3>Make Payment</h3>
                             <div id="selectedforPay"></div>
                              <div class="col-md-6 col-md-offset-1">
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
                   
                    <div class="row">
                        <div class="col-md-12 col-md-offset-1">
                            <asp:CheckBox ID="chk" runat="server" Checked="true" />
                            I have read through the website's Privacy agree to make a donation
                        </div>
                    </div>
                    <br />
                         <div class="row">
                        <div class="col-md-12 col-md-offset-5">
                           
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
        </div>




        <div class="col-md-12  b-bottom b-left b-right">           
            <div class="col-md-12">
                  <h5 class="step-heading">STEP 4 </h5>
                <h3>Print</h3>
                
                
            </div>            
        </div>




        

        
        

      </div>
      </div>
      <script type="text/javascript">
          $(function () {
              
              $('#login-form-link').click(function (e) {
                  $("#login-form").delay(100).fadeIn(100);
                  $("#register-form").fadeOut(100);
                  $('#register-form-link').removeClass('active');
                  $(this).addClass('active');
                  e.preventDefault();
              });
              $('#register-form-link').click(function (e) {
                  $("#register-form").delay(100).fadeIn(100);
                  $("#login-form").fadeOut(100);
                  $('#login-form-link').removeClass('active');
                  $(this).addClass('active');
                  e.preventDefault();
              });

          });

       
          function MakePayment() {
              var errors = 0;
              var packs = $('#selectedforPay').html();
              if (packs == "") {
                  $("#errorPack").show();

                  errors = 1;
              }
              else {

                  $("#errorPack").hide();
               }

               var Donar = {};
              var txtDonarname = $("#<%=txtDonarname.ClientID%>").val();
              var txtDonarEmail = $("#<%=txtDonarEmail.ClientID%>").val();
              var txtDonarAddress = $("#<%=txtDonarAddress.ClientID%>").val();
              var txtDonarLocation = $("#<%=txtDonarLocation.ClientID%>").val();
              var txtDonarPin = $("#<%=txtDonarPin.ClientID%>").val();
              var txtDonarMobile = $("#<%=txtDonarMobile.ClientID%>").val();
              var txtPAN = $("#<%=txtPAN.ClientID%>").val();
            
            var CountryID=$("#<%=ddlcountry.ClientID%>").val();
              if (txtDonarname == "") {
                  $("#errDonarname").show();
                  errors = 1;
                  return;
              }
              else {
                  $("#errDonarname").hide();

              }
              if (txtDonarEmail == "") {
                  $("#errDonarEmail").show();
                  errors = 1;
                  return;
              }
              else {
                  $("#errDonarEmail").hide();

              }
              if (CountryID == 0 || CountryID=="") {
               $("#errCountry").show();
                  errors = 1;
                  return;
              
              }
              else{
               $("#errCountry").hide();
              
              }
//              if (txtDonarAddress == "") {
//                  $("#errDonarAddress").show();
//                  errors = 1;
//                  return;
//              }
//              else {
//                  $("#errDonarAddress").hide();

//              }
//              if (txtDonarLocation == "") {
//                  $("#errDonarLocation").show();
//                  errors = 1;
//                  return;
//              }
//              else {
//                  $("#errDonarLocation").hide();

//              }
//              if (txtDonarPin == "") {
//                  $("#errDonarPin").show();
//                  errors = 1;
//                  return;
//              }
//              else {
//                  $("#errDonarPin").hide();

              //              }
              if ($("#<%=hfOutSideIndia.ClientID%>").val() == 41) { 
                            if (txtPAN == "") {
                                $("#errPAN").show();
                                errors = 1;
                                return;
                            }
                            else {
                                $("#errPAN").hide();

                            }
                        }
              if (txtDonarMobile == "") {
                  $("#errDonarMobile").show();
                  errors = 1;
                  return;
              }
              else {
                  $("#errDonarMobile").hide();

              }
              if (errors == 0) {
                  if ($("#<%=hfUserIDFinal.ClientID%>").val() == "" || $("#<%=hfUserIDFinal.ClientID%>").val() == "0") {
                      Donar.Name = txtDonarname;
                      Donar.EmailAddress = txtDonarEmail;
                      Donar.Address = txtDonarAddress;
                      Donar.Location = txtDonarLocation;
                      Donar.Pincode = txtDonarPin;
                      Donar.ContactNumber = txtDonarMobile;
                      Donar.PAN = txtPAN;
                      Donar.CountryID = $("#<%=ddlcountry.ClientID%>").val();
                      $("#<%=hfDonarName.ClientID%>").val(txtDonarname);
                      $("#<%=hfEmail.ClientID%>").val(txtDonarEmail);
                      $("#<%=hfMobile.ClientID%>").val(txtDonarMobile);
                         $("#<%=hfAddress.ClientID%>").val(txtDonarAddress);
                         $("#<%=hfPIN.ClientID%>").val(txtDonarPin);
                           $("#<%=hfLocation.ClientID%>").val(txtDonarLocation);
                       
                      $.ajax({
                          type: "POST",
                          contentType: "application/json; charset=utf-8",
                          url: "../Donate/Donate.aspx/InsertDonar",
                          data: JSON.stringify({ Donars: Donar }),
                          dataType: "json",
                          success: function (Result) {

                              if (Result.d == -1) {

                                  $("#dvMakePayment").hide();
                                  $("#errorDonar").show();
                              }
                              else {
                                  $("#<%=hfUserIDFinal.ClientID%>").val(Result.d);
                                  $("#<%=hfFlag.ClientID%>").val(1);
                                  $("#errorDonar").hide();
                                  $("#dvMakePayment").show();

                              }
                          },
                          error: function (result) {
                              alert("Error");
                          }

                      });
                  }
                  else {
                      $("#dvMakePayment").show();
                   }
                 
              }
             
              
          }
          $(function () {
              bindPackages(3);


              $("#dvPackagesother").on('change', '.other', function () {
                  var t = this.value;
if(parseInt(t) < 500){
$("#txtOther").val(500);
return ;
}
                  if (t != "0") {

                      var rows = 0;
                      $("#tblselectedforPay tr").each(function () {

                          if (this.id == "trother") {

                              rows = 1;
                          }
                      });
                      if (rows != 0) {
                          var final = 0;
if(parseInt(t)>= 500){
 $("#tdother").html(t);
}
                         
                         
                          $('#selectedforPay1 table > tbody > tr').each(function () {

                              var tt = $(this).find("td.amount").html();
                            //  alert(tt);
                              final = final + parseInt(tt);
                              //                              alert(this.html());
                              //                              if (this.id != "trhead" || this.id != "trfoot") {
                              //                                  var lasttd = $(this).find(':last-child');
                              //                                  debugger;
                              //                                  final = final + parseInt(lasttd.html());

                              //                              }

                          });
                          //  var total = parseInt($("#tdtotal").html());
                           
                          $("#tdtotal").html(final);
                      }
                      else {
if(parseInt(t)>= 500){
 $("#tdother").html(t);
}
                         

                      }
                      //$("#tdother").html(t);

                  }
              });

              $('#step-1').on('click', '.rbd', function () {

                  var r = this;
                  $('#selectedforPay1').html('');
                  var total = 0;
                  var i = 1;
                  var selectedPacks = "";
                  var selectedPackMain = "";
                  var table = "<table id='tblselectedforPay' class='table table-bordered table-striped'><thead><tr id='trhead'><th>SNo</th><th>Package Name</th><th>Package Amount</th></tr></thead><tbody>";
                  var onlyOther = true;
                  $(".rbd:checked").each(function () {

                      $("#errorPack").hide();
                      var chk = this.checked;
                      var ids = this.id;
                      var id = ids.split("_");
                      selectedPacks = id[1] + "_";

                      selectedPackMain = $(this).attr("rbdMainPack") + "_";
                      if (chk == true) {

                          if (id[1] != "13") {
                              table = table + "<tr><td>" + i + "</td><td>" + $(this).attr("rbdtext") + "</td><td class='amount'>" + $(this).val() + "</td></tr>";
                              i = i + 1;
                              total = total + parseInt($(this).val());
                              onlyOther = false;
                          }
                          else {
                              if (parseInt($("#txtOther").val()) >= 500) {

                                  table = table + "<tr id='trother'><td>" + i + "</td><td>" + $(this).attr("rbdtext") + "</td><td id='tdother' class='amount'>" + $("#txtOther").val() + "</td></tr>";
                                  i = i + 1;
                                  total = total + parseInt($("#txtOther").val());
                              }
                          }
                      }
                  });




                  //if ($("#txtOther").val() != "0") {
                  //    table = table + "<tr><td></td><td>Other</td><td>" + $("#txtOther").val() + "</td></tr>";
                  //    total = total + parseInt($("#txtOther").val());
                  //}


                  table = table + "</tbody><tfoot><tr id='trfoot'><td></td><td>Total</td><td id='tdtotal'>" + total + "</td></tr>";





                  table = table + "</tfoot></table>";

                  $('#selectedforPay1').html(table);
                  $('#selectedforPay').html('');
                  $('#selectedforPay').html(table);
                  $("#<%=hfPackageAmount.ClientID%>").val(total);
                  $("#<%=hfPackageID.ClientID%>").val(selectedPacks);
                  $("#<%=hfPackageTypeID.ClientID%>").val(selectedPackMain);



              });


          });
          function bindPackages(SelectedPackage) {

              $.ajax({
                  type: "POST",
                  contentType: "application/json; charset=utf-8",
                  url: "../Donate/Donate.aspx/BindPackages",
                  data: '{SelectedPackage: ' + SelectedPackage + '}',
                  dataType: "json",
                  success: function (Result) {
                      var tablestring = "<fieldset><legend>Adopt - a- School</legend> <div class='col-md-6'>";
                      var tablestring1 = " <fieldset><legend style='padding-left:10px'>Adopt - a- Student</legend><div class='col-md-6'>";
                      var tablestring2 = "";
                      $("#dvPackagestudent").empty();
                      $("#dvPackageschool").empty();
                      $("#dvPackagesother").empty();
                      var j = 0;
                     
                      var DCpage = window.parent.$('#<%=hfDCPage1.ClientID%>').val();
                      for (var i = 0; i < Result.d.length; i++) {
                          if (Result.d[i].PackageID == 3) {


                              if (i == 3 || i == 6) {
                                  tablestring = tablestring + "</div> <div class='col-md-6'>"

                              }
                              tablestring = tablestring + "<input type='radio' class='rbd'  id='radio_" + Result.d[i].ID + "' onclick='Javascript: Package(" + Result.d[i].ID + "," + Result.d[i].Money + ")' name='group' value='" + Result.d[i].Money + "' rbdtext='" + Result.d[i].Text + "' rbdMainPack='" + Result.d[i].PackageID + "'><label for='" + Result.d[i].ID + "'> " + Result.d[i].Text + "Rs: " + Result.d[i].Money + " </label><br>";
                          }
                          if (Result.d[i].PackageID == 4) {


                              if (j == 3 || j == 6) {
                                  tablestring1 = tablestring1 + "</div> <div class='col-md-6'>"

                              }
                              tablestring1 = tablestring1 + "<input type='radio' class='rbd' id='radio_" + Result.d[i].ID + "' onclick='Javascript: Package(" + Result.d[i].ID + "," + Result.d[i].Money + ")' name='group1' value='" + Result.d[i].Money + "' rbdtext='" + Result.d[i].Text + "' rbdMainPack='" + Result.d[i].PackageID + "'><label for='" + Result.d[i].ID + "'> " + Result.d[i].Text + " Rs: " + Result.d[i].Money + " </label><br>";
                              j = j + 1;
                          }
                          if (Result.d[i].PackageID == 5) {



                              tablestring2 = tablestring2 + "<input type = 'radio' class='rbd' id = 'radio_" + Result.d[i].ID + "'  name = 'group2' value = '" + Result.d[i].Money + "' rbdtext = '" + Result.d[i].Text + "' rbdMainPack='" + Result.d[i].PackageID + "' > <label for='" + Result.d[i].ID + "'> " + Result.d[i].Text + " Amount </label><br><input type='text' id='txtOther' class='col-md-2 form - control other' value='500' /><br>";
                          }
                      }
                      tablestring = tablestring + "</fieldset></div>";
                      tablestring1 = tablestring1 + "</fieldset></div>";

                      $("#dvPackageschool").html(tablestring);
                      if (DCpage == "4") {

                          $("#dvPackageschool").hide();
                      }
                      if (DCpage == "3") {
                          $("#dvPackagestudent").hide();
                      }
                      $("#dvPackagestudent").html(tablestring1);
                      $("#dvPackagesother").html(tablestring2);
                      $("#<%=ddlcountry.ClientID%> option:selected").text('India');
                  },
                  error: function (result) {
                      alert("Error");
                  }

              });


          }
         

          function Package(id, Money) {



          }

          function SelectCountry(ID) {

              switch (ID) {
                  case 41:
                      // $(".package").hide();

                      $("#<%=ddlcountry.ClientID%> option:selected").text('India');
                      $("#<%=hfOutSideIndia.ClientID%>").val(ID);
                      $("#dvPAN").show();
                      break;
                  case 1:
                      $("#<%=ddlcountry.ClientID%> option:selected").text('United States');
                      $("#<%=hfOutSideIndia.ClientID%>").val(ID);
                      $("#dvPAN").hide();
                   //   $("#<%=ddlcountry.ClientID%>").val(ID);
                      break;


              }
          }

      </script>
</section>
 <asp:HiddenField ID="hfPackageTypeID" runat="server"  />
    <asp:HiddenField ID="hfPackageID" runat="server"/>
    <asp:HiddenField ID="hfPackageAmount" runat="server" />
    <asp:HiddenField ID="hfUserIDFinal" runat="server" Value="" />
       <asp:HiddenField ID="hfStatusID" runat="server" Value="1" />
         <asp:HiddenField ID="hfDCPage1" runat="server" Value="0" />
    <asp:HiddenField ID="hfOutSideIndia" runat="server" Value="1" />
     <asp:HiddenField ID="hfFlag" runat="server" Value="0" />
       <asp:HiddenField ID="hfDonarName" runat="server" Value="0" />
         <asp:HiddenField ID="hfEmail" runat="server" Value="0" />
           <asp:HiddenField ID="hfMobile" runat="server" Value="0" />
             <asp:HiddenField ID="hfAddress" runat="server" Value="0" />
             <asp:HiddenField ID="hfPIN" runat="server" Value="0" />
             <asp:HiddenField ID="hfLocation" runat="server" Value="0" />