<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="LaptopDonation.aspx.cs" Inherits="GrameenaVidya.Programs.LaptopDonation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container adopt-left-block">
<div class="col-md-12">
 <h1 class="page-heading">
Laptops / Tablets Donation
</h1>
 <p>
Laptop donations immensely help students succeed. Individuals, SMEs and Corporations can donate Laptops / Tablets that are in functional working condition and can have a long shelf life for its next user. We will distribute them to needful households and individuals. </p>
<p>Once we receive confirmation of your laptop(s) donation, we will provide instructions for you to transport the Laptops / Tablets to our computer diagnostics and refurbishment partner</p>
<p>After conducting hardware diagnostics, installing anti-virus software and Open Office, and verifying that the Laptops / Tablets are suitable for re-use, we will allocate the Laptops / Tablets to the targeted beneficiaries on a need basis or assigning the Laptops / Tablets for their own staff, interns, volunteers or programs use.</p>
<p>Thank you for joining us towards a more digitally inclusive society, one laptop at a time.</p>
</div>

  
      <div class="col-md-12">
        <h1>
FAQ's
</h1>
        <div class="panel-group" id="accordion">

       
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">WHAT ARE THE MINIMUM SPECIFICATIONS FOR THE LAPTOP DONATION?</a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
              <p class="panel-body"> We request that the Laptops / Tablets are in good working condition so that they will have a long shelf life for the next user. For PCs, preferably Intel Core i onwards with at least a Windows 7 license. We will carry out the diagnostics and can handle minor hardware repairs or parts replacement as needed. If we are unable to fix, we will strip the donated laptop for parts to be used to refurbish other donated Laptops / Tablets, and any e-waste will be responsibly disposed.

</p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">WHERE CAN I DONATE MY LAPTOPS / TABLETS?</a> </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
              <p class="panel-body">The donated Laptops / Tablets will first be sent to our laptop refurbishment partner, for diagnostics to determine functional working condition. Donated Laptops / Tablets drop boxes are available at the following locations. Alternatively, you can contact us at Laptops / Tablets@grameenavidya.org / Ph: ….. for delivery instructions</p>
            <p class="panel-body">If you have a bulk donation of multiple Laptops / Tablets, it is preferable to have your own transport arranged. Otherwise, we are happy to arrange pickup at your premises with delivery services that are available.</p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">WHAT IS INCLUDED IN THE PC DIAGNOSTICS THAT YOU WILL PERFORM ON THE DONATED LAPTOP? </a> </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
              <p class="panel-body"> As part of our diagnostics to check the donated Laptops / Tablets for functional working condition, our testing will include: Battery, WiFi, Webcam, DVD, Screen, USB, Touchpad, Keyboard, Sound, Physical Condition, Graphics Card, Charger/Adaptor, CPU, RAM and HDD/SSD/SSHD.  After diagnostics have been conducted, we can handle minor hardware repairs or parts substitution as needed. If we are unable to fix, we will strip the donated laptop for parts to be used to refurbish other donated Laptops / Tablets, and any e-waste will be responsibly disposed.</p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">HOW DO YOU HANDLE DATA SECURITY? </a> </h4>
            </div>
            <div id="collapseFour" class="panel-collapse collapse">
              <p class="panel-body">We ask that donors delete all personal data from the donated Laptops / Tablets. Our Refurbishment technology partners have a data erasure station and can handle data erasure. All Laptops / Tablets will be reformatted with operating system, anti-virus software and WPS Office installed. Our laptop refurbishment partner, is ISO 27001 certified. ISO 27001 is an information security standard. If a data erasure certificate is required for corporate donations, we can provide it for an admin fee of Rs 1000 per unit.</p>
             
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"> CAN I DONATE DEVICES/LAPTOPS / TABLETS WITHOUT A BATTERY?</a> </h4>
            </div>
            <div id="collapseFive" class="panel-collapse collapse">
              <p class="panel-body">Devices with batteries are preferred of course but if the battery is missing or damaged, we can still accept the donation and try to find a spare battery that matches. Depending on the make and model, we may be able to find a replacement battery. But if we are unable to find a matching battery, we will strip the no-battery laptop for parts that can be used to refurbish other Laptops / Tablets.</p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix"> CAN I DONATE DEVICES/LAPTOPS / TABLETS WITHOUT A CHARGER OR ADAPTOR?</a> </h4>
            </div>
            <div id="collapseSix" class="panel-collapse collapse">
              <p class="panel-body">Devices with chargers and adaptors are preferred of course but if the charger/adaptor is missing or damaged, we can still accept the laptop donation and try to find a spare one that matches. Depending on the make and model, we should be able to find a matching charger/adaptor. It is easier to find a matching charger/adaptor than a replacement battery.</p>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">HOW DO I KNOW WHO MY DEVICES/LAPTOPS / TABLETS GO TO?</a> </h4>
            </div>
            <div id="collapseSeven" class="panel-collapse collapse">
              <p class="panel-body"> The working condition Laptops / Tablets will be delivered to Government identified targeted beneficiaries. The donated Laptops / Tablets will be tracked by their brand and serial number up to the receiving beneficiary. Our team will also track thru bi-annual surveys how a laptop can make/made a difference to the people they help. </p>
            <p class="panel-body"> For confidentiality reasons, we do not disclose the personal information of the households and individuals that receive the donated Laptops / Tablets. However, we will share with the donors’ higher level information and any thank you notes or appreciation letters sent by the beneficiaries.</p>
            </div>
          </div>

          
        </div>
      </div>

       <div class="col-md-12 ">
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>LAPTOPS / TABLETS DONATION DETAILS</legend>



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
  <label class="col-md-6 control-label" for="Mother">Organization / Company </label>  
  <div class="col-md-6">
  <div class="input-group">
      
  <input id="Mother" name="Mother" type="text" placeholder="" class="form-control input-md">

      </div>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-6 control-label" for="Mother">Job Title</label>  
  <div class="col-md-6">
  <div class="input-group">
      
  <input id="Text1" name="Mother" type="text" placeholder="" class="form-control input-md">

      </div>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-6 control-label" for="Mother">Email * </label>  
  <div class="col-md-6">
  <div class="input-group">
      
  <input id="Text2" name="Mother" type="text" placeholder="" class="form-control input-md">

      </div>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-6 control-label" for="Mother">Contact Phone Number</label>  
  <div class="col-md-6">
  <div class="input-group">
      
  <input id="Text3" name="Mother" type="text" placeholder="" class="form-control input-md">

      </div>
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-6 control-label" for="Mother">Subject  *</label>  
  <div class="col-md-6">
  <div class="input-group">
      
  <input id="Text4" name="Mother" type="text" placeholder="" class="form-control input-md">

      </div>
    
  </div>
</div>


<!-- Textarea -->
<div class="form-group">
  <label class="col-md-6 control-label" for="Overview (max 200 words)">Message
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
