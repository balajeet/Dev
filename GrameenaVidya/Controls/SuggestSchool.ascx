<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SuggestSchool.ascx.cs" Inherits="GrameenaVidya.Controls.SuggestSchool" %>

<script type="text/javascript" language="javascript">
   
<%--PopuLatint Districts StateWise--%>
   var pageUrl = '<%=ResolveUrl("~/donate/schools-data.aspx")%>'
   function PopulateDistrict() {

            $("#<%=ddlSuggestDistricts.ClientID%>").attr("disabled", "disabled");
        
            if ($('#<%=ddlSuggestedStates.ClientID%>').val() == "0") {
                $('#<%=ddlSuggestDistricts.ClientID %>').empty().append('<option selected="selected" value="0">Please select</option>');
              
            }
            else {

                $('#<%=ddlSuggestDistricts.ClientID %>').empty().append('<option selected="selected" value="0">Loading...</option>');
                $.ajax({

                    type: "POST",
                    url: pageUrl + '/PopulateDistricts',
                    data: '{StateID: ' + $('#<%=ddlSuggestedStates.ClientID%>').val() + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnDistrictsPopulated,
                    failure: function (response) {
                        //alert(response.d);
                    }
                });
            }
        }

          function OnDistrictsPopulated(response)
           {

            PopulateControl(response.d, $("#<%=ddlSuggestDistricts.ClientID %>"));
            document.getElementById("hdStateID").value = $('#<%=ddlSuggestedStates.ClientID%>').val();            
             document.getElementById("hdstatename").value=$('#<%=ddlSuggestedStates.ClientID%>').text();
            
        }


         function PopulateControl(list, control)
          {
            if (list.length > 0) 
            {
                control.removeAttr("disabled");
                control.empty().append('<option selected="selected" value="0">Please select</option>');
                $.each(list, function () 
                {
                    control.append($("<option></option>").val(this['Value']).html(this['Text']));
                });
            }
            else 
            {
                control.empty().append('<option selected="selected" value="0">Not available<option>');
            }
        }    



        function PopulateDName()
        {
           document.getElementById("hdDistrictID").value = $('#<%=ddlSuggestDistricts.ClientID%>').val();            
             document.getElementById("hdDistrictName").value=$('#<%=ddlSuggestDistricts.ClientID%>').text();
        
        }

</script>


     <div class="form-horizontal donor-details" role="form">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">
                                School Name<b>*</b></label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-control" placeholder="Enter School Name"></asp:TextBox>
                            </div>
                            <label for="inputEmail3" class="col-sm-2 control-label">
                                Principal Name<b></b></label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="txtPrincipalName" runat="server" CssClass="form-control" placeholder="Enter Principal Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">
                                Mobile<b></b></label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="txtSchoolMobileNumber" runat="server" CssClass="form-control" placeholder="Enter Mobile Number"></asp:TextBox></div>
                            <label for="inputEmail3" class="col-sm-2 control-label">
                                State<b>*</b></label>
                            <div class="col-sm-4">
                                <asp:DropDownList ID="ddlSuggestedStates" runat="server" DataTextField="StateName"
                                    DataValueField="StateID" CssClass="form-control" onchange="PopulateDistrict();">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">
                                District<b>*</b></label>
                            <div class="col-sm-4">
                              <asp:DropDownList ID="ddlSuggestDistricts" runat="server" CssClass="form-control" DataTextField="DistrictName" 
                            DataValueField="DistrictID" onchange="PopulateDName();">
                        </asp:DropDownList>
                        <asp:Label ID="lblddlDistricts" runat="server" Text="Please select district" Style="display: none;
                            color: Red;"></asp:Label>
                            <label for="inputEmail3" class="col-sm-2 control-label">
                                City<b></b></label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="Enter City Name"></asp:TextBox></div>
                        </div>


                      <input type="button" value="save" title="save" />
                    </div>

                <input type="hidden" id="hdStateID" name="hdStateID" value="0"/> 
          <input type="hidden" id="hdstatename" name="hdstatename" value="0"/>   
           <input type="hidden" id="hdDistrictID" name="hdDistrictID" value="0"/> 
          <input type="hidden" id="hdDistrictName" name="hdDistrictName" value="0"/>    