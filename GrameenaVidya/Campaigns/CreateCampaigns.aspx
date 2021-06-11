<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="CreateCampaigns.aspx.cs" Inherits="GVSchools.Campaigns.CreateCampaigns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbBenfits").addClass("activelink");


      });
    </script>
    <script>

    function autoResize(id) {
       
        var newheight;
        //var newwidth;

        if (document.getElementById) {
            newheight = document.getElementById(id).contentWindow.document.body.scrollHeight;
            //newwidth = document.getElementById(id).contentWindow.document.body.scrollWidth;
        }
      
        document.getElementById(id).height = (newheight) + "px";
        //document.getElementById(id).width = (newwidth) + "px";
    }
</script>
 <%-- <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css" />
--%>
  
 
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




<asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <div class="main-container campaign">
        <!-- main-container start -->
        <div class="container">
            <!-- container start -->
            <div class="row">
                <div class="col-md-12 ">
                    <div class="donate">
                        <div class="col-md-12 campaign-list">
                            <h2>
                                Start a Fundraising Campaign</h2>
                            <h5 class="note">
                                Create your own fundraising page in support of food for education</h5>
                            <div class="col-md-12">
                           

                              

                               <br />
                                   <div id="divDonateDetails" runat="server">
                            <div class="row">
                                <div class="col-md-offset-1 col-md-3">
                                </div>
                                <div class="col-md-5">
                                </div>
                            </div>
                           
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        
                                        
<div class="campaign-intro">
<h4><b>To create your campaign</b></h4>
<ul>
<li>1. For new user, please register first</li>
<li>2. For Existing user, please start your campaign</li>
</ul>
</div>
                             
                             
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
                                   
                               
                                <br />
                      <div id="divNewUser" runat="server" >
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Donor Name</label>
                                            <asp:TextBox ID="txtDonarName" runat="server" CssClass="form-control" placeholder="Donar Name"></asp:TextBox>
                                             <asp:Label ID="lblErrorName" runat="server" ForeColor="Red" Font-Size="Small" Style="display: none;"></asp:Label>
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
                                            <asp:Label ID="lblErrorMobile" runat="server" ForeColor="Red" Font-Size="Small" Style="display: none;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="lname">
                                                Address 1</label>
                                            <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" placeholder="Address1"></asp:TextBox>
                                              <asp:Label ID="lblErrorAddress" runat="server" ForeColor="Red" Font-Size="Small"
                                        Style="display: none;"></asp:Label>
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
                                               <asp:Label ID="lblCountry" runat="server" ForeColor="Red" Font-Size="Small"
                                        Style="display: none;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="name">
                                                Select State:</label>
                                            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" DataTextField="StateName" onchange="GetStateID();"
                                                DataValueField="StateID">
                                            </asp:DropDownList>
                                               <asp:Label ID="lblState" runat="server" ForeColor="Red" Font-Size="Small"
                                        Style="display: none;"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-5">
                                        <div class="form-group">
                                            <label for="fname">
                                                Pincode</label>
                                                <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control" placeholder="Zip Code"></asp:TextBox>
                                              <asp:Label ID="lblErrorZipcode" runat="server" ForeColor="Red" Font-Size="Small"
                                        Style="display: none;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                        </div>
                                    </div>
                                </div>
                                </div>
                              
                                <br />
                                <br />
                                <div class="row">
                                      <div class="col-md-offset-1 col-md-10 ">
                                    <h2 class="btn-yellow btn-block text-left ">
                                            Campaign Details</h2>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-4">
                                        <div class="form-group">
                                            <label for="fname">
                                                Campaign Name</label>
                                            <asp:TextBox ID="txtCampaignName" runat="server" CssClass="form-control" placeholder="Campaign Name"></asp:TextBox>
                                              <asp:Label ID="lblCampaignName" runat="server" ForeColor="Red" Font-Size="Small"
                                        Style="display: none;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="fname">
                                                Start Date</label>
                                            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" placeholder="Start Date"></asp:TextBox>                                             
                                              <asp:Label ID="lblStartDate" runat="server" ForeColor="Red" Font-Size="Small" Style="display:none;"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                                <label for="fname">
                                                    Campaign Image
                                                </label>
                                                <asp:FileUpload ID="fuload1" runat="server" CssClass="form-control" />
                                       </div>
                                    </div>
                                    </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        <div class="form-group">
                                            <label for="fname">Campaign Overview</label>
                                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control textarea"></asp:TextBox>
                                              <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Font-Size="Small" Style="display:none;"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                
          
                                <br />
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10 text-center">
                                        <div class="form-group">
                                        <asp:Button ID="btncreate" runat="server"  OnClientClick="return Validations();" Text="Create Campaign"   CssClass="btn btn-default btn-yellow" 
                                                onclick="btncreate_Click"  />
                                     <%--   <asp:LinkButton ID="lnkCreate" runat="server"   
                                                CssClass="btn btn-default btn-yellow" Text="Create Campaign" 
                                                onclick="lnkCreate_Click" OnClientClick="Validations();" ></asp:LinkButton>--%>
                                           <%-- <button class="btn btn-default btn-yellow" type="submit">
                                                Create Campaign</button>--%>
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







         <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
         <asp:HiddenField ID="hdschoolID" runat="server" />
<asp:HiddenField ID="hdStatename" runat="server" />
<asp:HiddenField ID="hdstateID" runat="server" />
<asp:HiddenField ID="hddistrictName" runat="server" />
<asp:HiddenField ID="hddistrictID" runat="server" />
 <asp:HiddenField ID="hdtotalAmount" runat="server"/>
  <asp:HiddenField ID="hdyears" runat="server"/>
  <asp:HiddenField ID="hdsession" runat="server" />
  
    <asp:HiddenField ID="hdDonarUserType" runat="server" Value="1" />
  

   <script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>  
</asp:Content>
