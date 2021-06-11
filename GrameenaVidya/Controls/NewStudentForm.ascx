<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewStudentForm.ascx.cs" Inherits="GrameenaVidya.Controls.NewStudentForm" %>
<style>
    .error
    {
          color: red;
        
        }
        div.error {
  clear: left;
  margin-left: 0;
  color: red;
  padding-right: 1.3em;
  height: 100%;
  padding-bottom: 0.3em;
  line-height: 1.3;
}

.input-error {
  background: #ff9;
  border: 1px solid red;
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
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="../Css/donate.css" rel="stylesheet" type="text/css" />


    <div class="">
 
            <div class="col-md-12">
            <div class="sidebar-donate">
    <div class="row select-own-school mtb-20" id="dvNewSchool" >
 <form method="post" id="GVStudentform">
  <div class="row" style="text-align:center">
    <h2><u>Student Scholarship Form</u></h2>
  </div>
  <hr />
                       <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="textarea" class="control-label">Name of the Student</label><label class="error">**</label>
                                    <input id="txtname" type="text" class="form-control" cols="40" rows="5" placeholder="Enter School Name"/>
                                
                            </div></div>
                            <div class="col-md-6">
                           
                             <div style="text-align:center">
               <div class="image-upload">
  <label for="file-input">
  <img style="height:130px" src="https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0NjQzOTk4OTQ4OTkyMzQy/ansel-elgort-poses-for-a-portrait-during-the-baby-driver-premiere-2017-sxsw-conference-and-festivals-on-march-11-2017-in-austin-texas-photo-by-matt-winkelmeyer_getty-imagesfor-sxsw-square.jpg" alt="Rounded Image" class="rounded img-fluid" >
  </label>

  <input id="imageinput" type="file" />
</div>
            </div>
                            </div>
                             
                           </div>
                            
                            <div class="row">
                               <div class="col-md-6"> 
                               <div class="col-md-6"> 
                               <div class="form-group">
                                <label for="textarea2" class="control-label">Date Of Birth</label>
                                <input id="txtDob" type="text" class="form-control" />
                          
                            </div>
                            </div>
                            <div class="col-md-6">
                             <div class="form-group">
                                <label for="textarea2" class="control-label">Grade</label><label class="error">**</label>
                                <input id="txtGrade"  type="text" class="form-control" />
                          
                            </div>
                             </div>
                            </div>
                               <div class="col-md-6">

                               <div class="form-group">
                                <label for="text" class="control-label">Gender</label>
                                      <div>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox1" value="Male" checked/> Male </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox1" value="FeMale"/> Female </label>
                                </div>
                                </div></div>
                           </div>
                           
                              <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="text1" class="control-label">Caste</label>
                                     <input id="txtCaste"  type="text" class="form-control" />
                                 </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text2" class="control-label">Relegion</label>
                                     <input id="txtRelegion"  type="text" class="form-control" /> </div></div>
                           </div>  
                                                               
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text3" class="control-label">Mother Name</label>
                                     <input id="txtMName"  type="text" class="form-control" /> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text4" class="control-label">Occupation</label>
                                     <input id="txtMOccupation"  type="text" class="form-control" /> </div></div>
                           </div>
                                                      
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text5" class="control-label">Father Name/Guardian Name</label>
                                    <input id="txtFName"  type="text" class="form-control" /> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text6" class="control-label">Occupation</label>
                                     <input id="txtFOccupation"  type="text" class="form-control" /> </div></div>
                           </div>
                           
                      <div class="row">
                               <div class="col-md-6">  <div class="form-group">
                                <label for="text7" class="control-label">Monthly Income</label>
                                     <input id="txtMIncome"  type="text" class="form-control" /> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea3" class="control-label">Family Size</label>
                                    <input id="txtFSize"  type="text" class="form-control" />
                            </div></div>
                           </div>
                          
                           
                             <div class="row">
                               <div class="col-md-12"> <div class="form-group">
                                 <label for="textarea1" class="control-label">Address & Contact Info</label>
                               
                                <input id="txtAddress" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                            </div></div>
                               <div class="col-md-12"><div class="form-group">
                               <label for="textarea1" class="control-label">Name Of The School & Contact Info</label>
                               
                                <input id="txtschool" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                               </div></div>
                           </div>
                           
                                
                                 <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Name Of The H.M & Contact Info</label>
                               
                                <input id="txtHM" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                                </div></div>
                               
                           </div>
                            <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Reference Friends / Others (1)</label>
                               
                                <input id="txtRefer1" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                                </div></div>
                               
                           </div>
                            <div class="row">
                               <div class="col-md-12"><div class="form-group">
                                  <label for="textarea1" class="control-label">Reference Friends / Others (2)</label>
                               
                                <input id="txtRefer2" type="text" class="form-control"  cols="40" rows="5"  placeholder="Address "/>
                                </div></div>
                               
                           </div>
                           <div class="row">
                           <div class="col-md-4"><div class="form-group">
                                  <label for="textarea1" class="control-label">State</label><label class="error">**</label>
                               
                               <select id="ddlState" name="item" class="form-control" onchange="BindDistricts()"></select>
                               <label class="error" id="lblerrorstate" style="display:none">Please select state</label>
                                </div></div>
                                <div class="col-md-4"><div class="form-group">
                                  <label for="textarea1" class="control-label">District</label><label class="error">**</label>
                               
                                 <select id="ddlDistrict" name="item" class="form-control"  onchange="BindLocations()"></select>
                                 <label class="error" id="lblerrordistrict" style="display:none">Please select district</label>
                                </div></div>
                                <div class="col-md-4"><div class="form-group">
                                  <label for="textarea1" class="control-label">Location</label><label class="error">**</label>
                               
                                  <select id="ddlLocation" name="item" class="form-control" ></select>
                                  <label class="error" id="lblerrorlocation" style="display:none">Please select location</label>
                                </div></div>
                           
                           </div>
                           <div class="row">
                           <div class="col-md-6">
                           <div class="form-group">
                                  <label for="textarea1" class="control-label">Upload Hard Copy:</label>
                           
                         <input type="file" id="filestudentform" name="img"  />
 </div>
                      
                      </div>     </div>
                           
                         <input type="submit" value="Submit"/>
                         </form>
                      
                    </div>
<div id="dvsuccess" style="display:none">
<a href="#" id="ancview" onclick="View(this)">Upload successfully. View</a>
</div>
  <div class="row select-own-school mtb-20" id="dvsubmittedform" style="display:none" >

  <div class="row" style="text-align:center">
    <h2><u>Student Scholarship Form</u></h2>
 <div class="row" style="text-align:right;    padding-right: 30px;">
  
  </div>
  <hr />
    <table class="pull-left col-md-8 ">
                         <tbody>
                             <tr>
                                 <td class="h6"><strong>Name of the Student</strong></td>
                                 <td> </td>
                                 <td class="h5"> <label id="lblname"></label></td>
                             </tr>
                             
                             <tr>
                                 <td class="h6"><strong>Date Of Birth</strong></td>
                                 <td> </td>
                                 <td class="h5">  <label id="lblDob"></label></td>
                             </tr>
                             
                             <tr>
                                 <td class="h6"><strong>Grade</strong></td>
                                 <td> </td>
                                 <td class="h5"> <label id="lblGrade"></label>></td>
                             </tr>
                             
                             <tr>
                            
                                   
                                 <td class="h6"><strong>Gender</strong></td>
                                 <td> </td>
                                 <td class="h5"> <label id="lblGender"></label></td>
                             </tr>
                             
                             <tr>
                            
                                   
                                 <td class="h6"><strong>Caste</strong></td>
                                 <td> </td>
                                 <td class="h5">  <label id="lblCaste"></label></td>
                             </tr>
                             
                             <tr>
                             
                                   
                                 <td class="h6"><strong>Relegion</strong></td>
                                 <td> </td>
                                 <td class="h5">  <label id="lblRelegion"></label></td>
                             </tr>  

                             <tr>
                            
                                 
                                 <td class="h6"><strong>Mother Name</strong></td>
                                 <td> </td>
                                 <td class="h5"><label id="lblmname"></label></td>
                             </tr>                            

                             <tr>
                              
                                   
                                 <td class="h6"><strong>Occupation</strong></td>
                                 <td> </td>
                                 <td class="h5">   <label id="lblmoccupation"></label></td>
                             </tr>

                             <tr>
                                 <td class="h6"><strong>Father Name/Guardian Name</strong></td>
                                 <td> </td>
                                 <td class="h5"> <label id="lblfname"></label></td>
                             </tr> 
                              <tr>
                                 <td class="h6"><strong>Occupation</strong></td>
                                 <td> </td>
                                 <td class="h5">  <label id="lblfoccupation"></label></td>
                             </tr> 
                              <tr>
                                 <td class="h6"><strong>Monthly Income</strong></td>
                                 <td> </td>
                                 <td class="h5">   <label id="lblmincome"></label></td>
                             </tr> 
                              <tr>
                                 <td class="h6"><strong>Family Size</strong></td>
                                 <td> </td>
                                 <td class="h5"> <label id="lblfsize"></label></td>
                             </tr> 
                              <tr>
                                 <td class="h6"><strong>Address & Contact Info</strong></td>
                                 <td> </td>
                                 <td class="h5"> <label id="lbladdress"></label></td>
                             </tr> 
                              <tr>
                                 <td class="h6"><strong>Name Of The School & Contact Info</strong></td>
                                 <td> </td>
                                 <td class="h5"> <label id="lblschool"></label></td>
                             </tr> 
                              <tr>
                                 <td class="h6"><strong>Name Of The H.M & Contact Info</strong></td>
                                 <td> </td>
                                 <td class="h5"> <label id="lblhm"></label></td>
                             </tr> 
                             <tr>
                                 <td class="h6"><strong>Reference Friends / Others (1)</strong></td>
                                 <td> </td>
                                 <td class="h5">   <label id="lblrefer1"></label></td>
                             </tr> 
                             <tr>
                                 <td class="h6"><strong>Reference Friends / Others (2)</strong></td>
                                 <td> </td>
                                 <td class="h5">   <label id="lblrefer2"></label></td>
                             </tr> 
                            
                           

                         </tbody>
                    </table>
                    <div class="col-md-4"> 
                        <img id="profileimg" alt="teste" class="img-thumbnail"/>  
                    </div>
   
                   
                    <div class="clearfix"></div>
                   
                
                    
                  <div class="modal-footer">    
                            <div id="dvpdf"></div>
                            </div>
                          </div>
                           
                         
                           
                           
                    

                      
                    </div>
             
</div>
</div>

</div>
<asp:HiddenField ID="hdcountryID" runat="server" />
<asp:HiddenField ID="hdStateID" runat="server" />
<asp:HiddenField ID="hdDistrictID" runat="server" />
<script type="text/javascript">

    function BindDonarStates() {
        document.getElementById('<%= hdcountryID.ClientID %>').value = 2;
        var country = 41;
        $.ajax({
            type: "POST",
            url:'NewStudent.aspx/PopulateStates',
            data: '{CountryID: ' + country + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                if (response.d.length > 0) {

                    $('#ddlState').empty().append('<option selected="selected" value="0">Please select</option>');
                    $.each(response.d, function () {
                        $('#ddlState').append($("<option></option>").val(this['Value']).html(this['Text']));
                    });
                }
                else {
                    $('#ddlState').empty().append('<option selected="selected" value="0">Not available<option>');
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });

    }
   
    function BindDistricts() {

        $.ajax({
            type: "POST",
            url: 'NewStudent.aspx/PopulateDistricts',
            data: '{StateID: ' + $('#ddlState').val() + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                if (response.d.length > 0) {

                    $('#ddlDistrict').empty().append('<option selected="selected" value="0">Please select</option>');
                    $.each(response.d, function () {
                        $('#ddlDistrict').append($("<option></option>").val(this['Value']).html(this['Text']));
                    });
                }
                else {
                    $('#ddlDistrict').empty().append('<option selected="selected" value="0">Not available<option>');
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }

    function BindLocations() {

        $.ajax({
            type: "POST",
            url: 'NewStudent.aspx/PopulateLocations',
           
            data: '{DistrictID: ' + $('#ddlDistrict').val()+ '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
               
                if (result.d.length > 0) {

                    $('#ddlLocation').empty().append('<option selected="selected" value="0">Please select</option>');
                    $.each(result.d, function () {
                        $('#ddlLocation').append($("<option></option>").val(this['Value']).html(this['Text']));
                    });
                }
                else {
                    $('#ddlLocation').empty().append('<option selected="selected" value="0">Not available<option>');
                }
            },
            failure: function (result) {
                alert(result.d);
            }
        });
    }
    function View(obj) {
        debugger;
        var sid = obj.attr("sid").val();


    }

    $(document).ready(function () {

        BindDonarStates();
        $('form').submit(function () {
            this.form = $('#GVStudentform');
            debugger;
            
            var Elements = {
                name: {
                    selector: $('input[type=text]'),
                    reg: /^[a-zA-Z]{2,20}$/
                },
                message: {
                    selector: $('textarea'),
                    reg: /^\s+$/
                }

            };

            var handleError = function (element, message, v1) {
                if (v1.selector.length > 1) {
                    var ss = v1.selector;

                    $(ss).each(function (i, v) {
                        $(v).removeClass('input-error');
                        if ($("[id*=ddlState]").val() == 0 || $("[id*=ddlState]").val() == "") {
                            $("#lblerrorstate").show();

                        }
                        else {
                            $("#lblerrorstate").hide();
                        }
                        if ($("[id*=ddlDistrict]").val() == 0 || $("[id*=ddlDistrict]").val() == "") {
                            $("#lblerrordistrict").show();

                        }
                        else {
                            $("#lblerrordistrict").hide();

                        }
                        if ($("[id*=ddlLocation]").val() == 0 || $("[id*=ddlLocation]").val() == "") {

                            $("#lblerrorlocation").show();
                        }
                        else {
                            $("#lblerrorlocation").hide();
                        }


                        if ($(v).attr("id") == 'txtname' || $(v).attr("id") == 'txtGrade') {
                            if ($(v).val() == '') {
                                $(v).addClass('input-error');
                                var $err_msg = $(v).parent('div');
                                if ($(v).parent('div').find('.error').length == 0) {
                                    var error = $('<div class="error"></div>').text(message);
                                } else {
                                    $(v).parent('div').find('.error').text('');
                                    var error = $(v).parent('div').find('.error').text(message);
                                    $('.error').show();
                                }
                                error.appendTo($err_msg);
                            }
                            else {
                                $(v).siblings('.error').text('')
                            }
                            $(v).keyup(function () {
                                $(error).fadeOut(1000, function () {
                                    element.removeClass('input-error');
                                });
                            });
                        }
                    });
                } else {
                    element.addClass('input-error');
                    var $err_msg = element.parent('div');
                    if (element.parent('div').find('.error').length == 0) {
                        var error = $('<div class="error"></div>').text(message);
                    } else {
                        element.parent('div').find('.error').text('');
                        var error = element.parent('div').find('.error').text(message);
                        $('.error').show();
                    }
                    error.appendTo($err_msg);
                    element.keyup(function () {
                        $(error).fadeOut(1000, function () {
                            element.removeClass('input-error');
                        });
                    });
                }

            };
            for (var i in Elements) {
                var errors = 0;
                var type = i;
                var validation = Elements[i];

                switch (type) {
                    case 'name':
                        if (validation.reg.test(validation.selector.val()) || validation.selector.val() == '') {
                            handleError(validation.selector, 'field cannot be empty.', validation);
                            debugger;
                            errors = errors + 1;
                        }
                        break;

                    case 'message':
                        if (validation.reg.test(validation.selector.val()) || validation.selector.val() == '') {
                            handleError(validation.selector, 'Message field cannot be empty.', validation);
                            errors = errors + 1;
                        }
                        break;

                    default:
                        break;


                }

            }
            var checkbox = $('input[type="checkbox"]:checked');



            if (errors != 0)
            { return false; }

            // e.preventDefault();
            var data = new FormData;
            data.append("studentName", $("[id*=txtname]").val());
            data.append("dob", $("[id*=txtDob]").val());
            data.append("grade", $("[id*=txtGrade]").val());
            data.append("gender", checkbox.val());
            data.append("Caste", $("[id*=txtCaste]").val());
            data.append("Relegion", $("[id*=txtRelegion]").val());
            data.append("motherName", $("[id*=txtMName]").val());
            data.append("motheroccupation", $("[id*=txtMOccupation]").val());
            data.append("fatherName", $("[id*=txtFName]").val());
            data.append("fatheroccupation", $("[id*=txtFOccupation]").val());
            data.append("monthlyincome", $("[id*=txtMIncome]").val());
            data.append("familysize", $("[id*=txtFSize]").val());
            data.append("address", $("[id*=txtAddress]").val());
            data.append("school", $("[id*=txtschool]").val());
            data.append("hm", $("[id*=txtHM]").val());
            data.append("refer1", $("[id*=txtRefer1]").val());
            data.append("refer2", $("[id*=txtRefer2]").val());
            data.append("StateID", $("[id*=ddlState]").val());
            data.append("DistrictID", $("[id*=ddlDistrict]").val());
            data.append("LocationID", $("[id*=ddlLocation]").val());
            var file = $("#imageinput").get(0).files;
            if (file.length == 0) {
                // alert("Please Upload profile image")
                // return false;
                data.append("ImageFile", null);
            }
            else {
                data.append("ImageFile", file[0]);
            }

            var pdf = $("#filestudentform").get(0).files;
            if (pdf.length == 0) {
                // alert("Please Upload Pdf Document")
                // return false;
                data.append("PdfFile", null);
            }
            else {
                data.append("PdfFile", pdf[0]);
            }
            //  user.familysize = $("[id*=txtFSize]").val();
            // var serializedForm = $('form').serializeArray();
            debugger;
            $.ajax({
                url: "/Handlers/GVHandler.ashx",
                type: "post",

                contentType: false,

                processData: false,
                data: data,

                success: function (result) {
                    var vardata = JSON.parse(result);
                    var arrrayBuffer = base64ToArrayBuffer(vardata.PdfFile);
                    var blob = new Blob([arrrayBuffer], { type: "application/pdf" });
                    var link = window.URL.createObjectURL(blob);
                    //    window.open(link, '', 'height=650,width=840');
                    var img = "data:image/png;base64," + vardata.ImageFile;
                    //  $("#ancview").attr("sid", result);
                    // $("#dvsuccess").show();
                    $("#lblname").html(vardata.studentName);
                    $("#profileimg").attr("src", img);
                    $("#lblDob").html(vardata.dob);
                    $("#lblGrade").html(vardata.grade);
                    $("#lblGender").html(vardata.gender);
                    $("#lblCaste").html(vardata.Caste);
                    $("#lblRelegion").html(vardata.Relegion);
                    $("#lblmname").html(vardata.motherName);
                    $("#lblmoccupation").html(vardata.motheroccupation);
                    $("#lblfname").html(vardata.fatherName);
                    $("#lblfoccupation").html(vardata.fatheroccupation);
                    $("#lblmincome").html(vardata.monthlyincome);
                    $("#lblfsize").html(vardata.familysize);
                    $("#lbladdress").html(vardata.address);
                    $("#lblschool").html(vardata.school);
                    $("#lblhm").html(vardata.hm);
                    $("#lblrefer1").html(vardata.refer1);
                    $("#lblrefer2").html(vardata.refer2);
                    // $("#dvpdf").html(link);
                    var _iFrame = document.createElement('iframe');

                    _iFrame.setAttribute('src', link);
                    _iFrame.setAttribute('style', 'height:100%;width:100%');
                    $('#dvpdf').append(_iFrame)
                    $("#dvsubmittedform").show();
                    $("#dvNewSchool").hide();
                },
                error: function (result) {
                    alert("Failed");
                }

            });
            return false;
        });
    });
    //data is the base64 encoded string
    function base64ToArrayBuffer(base64) {
        var binaryString = window.atob(base64);
        var binaryLen = binaryString.length;
        var bytes = new Uint8Array(binaryLen);
        for (var i = 0; i < binaryLen; i++) {
            var ascii = binaryString.charCodeAt(i);
            bytes[i] = ascii;
        }
        return bytes;
    }
  
</script>
