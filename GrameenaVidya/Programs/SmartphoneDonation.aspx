<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="SmartphoneDonation.aspx.cs" Inherits="GrameenaVidya.Programs.SmartphoneDonation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container adopt-left-block">
<div class="col-md-12">
 <h1 class="page-heading">
Smartphone Donation
</h1>
 <p>
Donate fully functional Smartphone that have decent battery life. Upon submitting the donation form, we will contact you with next steps for delivery options. After diagnostics, data erasure, and refurbishment has been completed by our technology repair partner, the Smartphone will be donated to screened beneficiaries based on their need. There is no third-party intermediary involved. Thank you for joining us towards a more digitally inclusive India. 
For additional questions regarding Smartphone donation, please review FAQs or contact us at <a href="mailTo:phones@grameenavidya.org">phones@grameenavidya.org</a></p>

</div>

  
      <div class="col-md-12">
        <h1>
FAQ's
</h1>
        <div class="panel-group" id="accordion">

       
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">WHERE CAN I DONATE MY SMARTPHONE?</a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
              <p class="panel-body"> Donated Smartphone drop boxes are available at the following locations. Alternatively, you can contact us at phones@grameenavidya.org / Ph: ….. for delivery instructions. 

</p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">WHAT ARE THE MINIMUM SPECIFICATIONS FOR THE SMARTPHONE DONATION?</a> </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
              <p class="panel-body"> Donated Smartphone must work with a SIM card and can connect to a mobile network and WiFi. The camera function has to be working in order to scan QR codes. All donated Smartphones need to be able to install the TraceTogether app. For Apple iPhone, minimum requirement is iOS 10.0, which starts from iPhone 5 up to the newer models. For Android phones, Android 5.1 and above is acceptable but Android 6.0 and above would be preferred for more reliable performance. </p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">HOW DO I PREPARE MY MOBILE PHONE FOR DONATION? </a> </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
              <p class="panel-body"> Remove password protection for your smartphone. For iOS phones, please sign out of iCloud and App Store and turn off “Find my iPhone”. For Android phones, please delete your Google account and select “Factory Data Reset”. All smartphones should be reset to original factory settings before donating.</p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">CAN I BE SURE THAT MY DATA IS SAFE AND MY PRIVACY IS SAFEGUARDED? </a> </h4>
            </div>
            <div id="collapseFour" class="panel-collapse collapse">
              <p class="panel-body">We request that before you donate your smartphone, you reset it to factory settings, which will erase all personal data. Additionally, our refurbishment partner are ISO 27001 certified. ISO 27001 is a data security standard. We will ensure any data from all smartphones will be securely erased before directing to the recipient. </p>
             
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"> CAN I DONATE A PRE-PAID TOP-UP CARD WITH MY PHONE?</a> </h4>
            </div>
            <div id="collapseFive" class="panel-collapse collapse">
              <p class="panel-body"> We can accept pre-paid top-up cards as donations. If you wish to make a monetary donation, you are most welcome to do so.  </p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix"> CAN I DONATE MY PHONE EVEN IF THE SCREEN HAS CRACKS BUT STILL FUNCTIONS?</a> </h4>
            </div>
            <div id="collapseSix" class="panel-collapse collapse">
              <p class="panel-body">We prefer not to receive donations of smartphones with screen cracks as cracked screens are expensive to repair and cracks may worsen. Cracked screens may also disable certain essential functions of the smartphone. We need working condition smartphones for the recipient to use it on a hassle-free basis for a reasonable amount of time.</p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">DOES MY PHONE NEED TO COME WITH A SIM CARD?</a> </h4>
            </div>
            <div id="collapseSeven" class="panel-collapse collapse">
              <p class="panel-body"> Please do not donate your SIM card. SIM cards are registered on your name and hence not suitable for donation.</p>
            </div>
          </div>

           <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight">I DO NOT HAVE A CHARGER TO GIVE WITH MY PHONE. CAN I STILL DONATE?</a> </h4>
            </div>
            <div id="collapseEight" class="panel-collapse collapse">
              <p class="panel-body"> Smartphone donations with chargers are preferred, of course. But yes, you can donate your smartphone without a charger. We will try to source for a matching charger to pair with each smartphone before it is donated to the recipient.</p>
            </div>
          </div>
       
        <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseNine">HOW DO YOU SELECT WHICH RECIPIENT MY PHONE WILL GO TO?</a> </h4>
            </div>
            <div id="collapseNine" class="panel-collapse collapse">
              <p class="panel-body"> Our recipients / beneficiaries are Government certified bottom of the pyramid school children attending rural or inner city Government schools. Recipients are usually below poverty line digitally deprived groups. In addition, Grameena Vidya screen’s them based on need and urgency.  There is no third-party intermediary involved. </p>
            </div>
          </div>
       
           <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTen">CAN I HEAR BACK WHEN AND TO WHOM MY PHONE HAS BEEN DONATED?</a> </h4>
            </div>
            <div id="collapseTen" class="panel-collapse collapse">
              <p class="panel-body"> Due to privacy concerns, we typically do not provide photos or contact details of the recipient. In the donation form, you can indicate you wish to hear from us as to where your smartphone is in the donation journey. We will do our best to accommodate with more details. Similarly, we do not provide any contact details about the donor to the smartphone recipient. However, we will provide you higher level information and forward to you thank you letters or letters of appreciation from the beneficiaries. </p>
            </div>
          </div>

           <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseEleven">I DO NOT HAVE A SPARE WORKING SMARTPHONE, BUT I WOULD STILL LIKE TO HELP. ?</a> </h4>
            </div>
            <div id="collapseEleven" class="panel-collapse collapse">
              <p class="panel-body">You can help by sharing this donation drive information with your family or friends as they may have a spare working smartphone to donate.
You can also donate thru our official fundraising page at DONATE
You can start your own campaign “Digital Inclusion Donation Campaign”. For more information about starting a campaign Know More</p>
            </div>
          </div>
        </div>
      </div>
      
  <div class="col-md-12 ">
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Smartphone Donation Details</legend>

<!-- Text input-->
<p>*All the information collected below will be kept confidential and will be strictly used for contacting purposes for collection of the phone and charger only.</p>
<p>Before donating, please ensure:</p>
<p>1. The smartphone works with a SIM card and can connect to a mobile network and WiFi (SIM    
    card not required for donation).</p>
<p>2. The phone can read QR codes and download the TraceTogether app</p>
<p>3. The phone is unlocked and reset to factory settings</p>
<hr />

<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-6 control-label" for="Gender">I am donating a *</label>
  <div class="col-md-6"> 
    <label class="radio-inline" for="Gender-0">
      <input type="radio" name="Gender" id="Gender-0" value="1" checked="checked">
        Both smartphone and charger
    </label> 
    <label class="radio-inline" for="Gender-1">
      <input type="radio" name="Gender" id="Gender-1" value="2">
      Smartphone only (no charger)
    </label> 
   
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-6 control-label" for="Date Of Birth">Please indicate number of Smartphones you are donating * </label>  
  <div class="col-md-6">

  <div class="input-group">
      
       <input id="Date Of Birth" name="Date Of Birth" type="text" class="form-control input-md">
      </div>
  
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-6 control-label" for="Father">Please indicate the model of the phone. eg. Samsung Galaxy S6, etc. *</label>  
  <div class="col-md-6">
  <div class="input-group">
      
      <input id="Father" name="Father" type="text" placeholder="" class="form-control input-md">

      </div>
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-6 control-label" for="Name (Full name)">Name (Full name)</label>  
  <div class="col-md-6">
 <div class="input-group">

       <input id="Name (Full name)" name="Name (Full name)" type="text" placeholder="" class="form-control input-md">
      </div>

    
  </div>

  
</div>




<!-- Text input-->
<div class="form-group">
  <label class="col-md-6 control-label" for="Mother">Email Address</label>  
  <div class="col-md-6">
  <div class="input-group">
      
  <input id="Mother" name="Mother" type="text" placeholder="" class="form-control input-md">

      </div>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-6 control-label" for="Mother">Phone Number</label>  
  <div class="col-md-6">
  <div class="input-group">
      
  <input id="Text1" name="Mother" type="text" placeholder="" class="form-control input-md">

      </div>
    
  </div>
</div>



<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-6 control-label" for="radios">Arrangement for donation of phone &/ charger Delivery * There are 2 ways you can donate your phone and/or charger safely and securely. Tell us which option works best for you:</label>
  <div class="col-md-6"> 
    <label class="radio-inline" for="radios-0">
      <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
      Option A: I can drop it off into a donation box (locations can be found under “Donate     
        Phones FAQ”)

    </label> 
    <label class="radio-inline" for="radios-1">
      <input type="radio" name="radios" id="radios-1" value="2">
        Option B: I can sponsor delivery of Rs 500 – Rs 1200 via delivery service providers of    
        your choice (we can help you with this!)

    </label>
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-6 control-label" for="Overview (max 200 words)">Please share with us your (optional) message you want us to pass on to the beneficiary student.

We will pass on your message along with your donation.
Overview (max 200 words)</label>
  <div class="col-md-6">                     
    <textarea class="form-control" rows="10"  id="Overview (max 200 words)" name="Overview (max 200 words)">Overview</textarea>
  </div>
</div>


<div class="form-group">
  <label class="col-md-6 control-label" ></label>  
  <div class="col-md-6">
  <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up"></span> Submit</a>
  <a href="#" class="btn btn-danger" value=""><span class="glyphicon glyphicon-remove-sign"></span> Clear</a>
    
  </div>
</div>

</fieldset>
</form>
</div>
</div>
</asp:Content>
