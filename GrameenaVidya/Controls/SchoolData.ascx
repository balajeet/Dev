<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SchoolData.ascx.cs" Inherits="GrameenaVidya.Controls.SchoolData" %>

 <script src="../scripts/jquery-1.4.1.min.js" type="text/javascript"></script>

<script src="../js/ASPSnippets_Pager.min.js" type="text/javascript"></script>

<style type="text/css">
    body
    {
        font-family: Arial;
        font-size: 10pt;
    }
    .Pager span
    {
        text-align: center;
        color: #999;
        display: inline-block;
        width: 20px;
        background-color: #A1DCF2;
        margin-right: 3px;
        line-height: 150%;
        border: 1px solid #3AC0F2;
    }
    .Pager a
    {
        text-align: center;
        display: inline-block;
        width: 20px;
        background-color: #3AC0F2;
        color: #fff;
        border: 1px solid #3AC0F2;
        margin-right: 3px;
        line-height: 150%;
        text-decoration: none;
    }
</style>


<script type="text/javascript" language="javascript">
   
<%--PopuLatint Districts StateWise--%>
   var pageUrl = '<%=ResolveUrl("~/donate/schools-data.aspx")%>'
   function PopulateDistrict() {

            $("#<%=ddlDistricts.ClientID%>").attr("disabled", "disabled");
        
            if ($('#<%=ddlStates.ClientID%>').val() == "0") {
                $('#<%=ddlDistricts.ClientID %>').empty().append('<option selected="selected" value="0">Please select</option>');
              
            }
            else {

                $('#<%=ddlDistricts.ClientID %>').empty().append('<option selected="selected" value="0">Loading...</option>');
                $.ajax({

                    type: "POST",
                    url: pageUrl + '/PopulateDistricts',
                    data: '{StateID: ' + $('#<%=ddlStates.ClientID%>').val() + '}',
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

            PopulateControl(response.d, $("#<%=ddlDistricts.ClientID %>"));
            document.getElementById("hdStateID").value = $('#<%=ddlStates.ClientID%>').val();   
            alert(  document.getElementById("hdStateID").value);     
            alert($("#<%=ddlDistricts.ClientID %>"));    
             document.getElementById("hdstatename").value=$('#<%=ddlStates.ClientID%>').text();
            
        }


         function PopulateControl(list, control)
          {
          alert("wwwww");
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



      

</script>



<script type="text/javascript">

    //    $(function () {
    //        GetCustomers(1);
    //    });
    $(".Pager .page").live("click", function () {
        GetCustomers(parseInt($(this).attr('page')));
    });
    var pageUrl = '<%=ResolveUrl("~/donate/schools-data.aspx")%>'
    function GetCustomers(pageIndex) {
        //alert(pageIndex);
        document.getElementById("hdDistrictID").value = $('#<%=ddlDistricts.ClientID%>').val();
        document.getElementById("hddistrictName").value = $('#<%=ddlDistricts.ClientID%>').text();
        alert(document.getElementById("hddistrictName").value);
        $.ajax({

            type: "POST",
            url: pageUrl + '/GetCustomers',
            data: '{pageIndex: ' + pageIndex + ',StateID: ' + $('#<%=ddlStates.ClientID%>').val() + ', DistrictID: ' + $('#<%=ddlDistricts.ClientID%>').val() + ' }',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                //alert(response.d);
            },
            error: function (response) {
                //alert(response.d);
            }
        });
    }

    function OnSuccess(response) {
        var xmlDoc = $.parseXML(response.d);
        var xml = $(xmlDoc);
        var customers = xml.find("Customers");
        var row = $("[id*=gvSchools] tr:last-child").clone(true);
        $("[id*=gvSchools] tr").not($("[id*=gvSchools] tr:first-child")).remove();
        $.each(customers, function () {
            var customer = $(this);
            $("td", row).eq(0).html($(this).find("SchoolName").text());
            $("td", row).eq(1).html($(this).find("Address").text());
            $("td", row).eq(2).html($(this).find("Details").text());
            $("[id*=gvSchools]").append(row);
            row = $("[id*=gvSchools] tr:last-child").clone(true);
        });

        var totalRows = $("#<%=gvSchools.ClientID %> tr").length;
        if (totalRows > 1) {
            document.getElementById('<%= gvSchools.ClientID %>').style.display = 'block';
            document.getElementById('divfooter').style.display = 'block';
            
            document.getElementById('diverror').style.display = 'none';
            var pager = xml.find("Pager");
            $(".Pager").ASPSnippets_Pager({
                ActiveCssClass: "current",
                PagerCssClass: "pager",
                PageIndex: parseInt(pager.find("PageIndex").text()),
                PageSize: parseInt(pager.find("PageSize").text()),
                RecordCount: parseInt(pager.find("RecordCount").text())

            });
        }
        else {
            document.getElementById('<%= gvSchools.ClientID %>').style.display = 'none';
            document.getElementById('diverror').style.display = 'block';


        }


    };



    function ShowAnswer(id) {
        var type = id.value;
    
        var s = type.split(",");
        var a = s[0].split("(");
        var b = s[1].split(")");
        var Label = document.getElementById("l" + a[1]).innerHTML;

        document.getElementById("hdschoolName").value = Label;
        document.getElementById("hdSchoolID").value = a[1];  
        document.getElementById('<%= hdPkgID.ClientID %>').value = b[0];
        $("#btnsave").attr("data-dismiss", "modal");


    }


    function test(id) {
        var mystring = id.id;
        var newchar = ' ';
        var mystring1 = mystring.split('_').join(newchar);

        var s = mystring1.split(":");
        document.getElementById("hdschoolName").value = s[1].split(')').join(' ');
        var simg = '../SchoolImages/' + mystring1[1].split(":") + 'school.png';
        document.getElementById("imgSchool").src = simg;


    }
    function ViewSchoolDetails() {

//        alert("doggy");
//        //        window.location.href = "../schools/default.aspx";
//        if (hdSchllotype == 1)
//         {
             window.open("../schools/SchoolDetails.aspx", "_blank", "toolbar=no, menubar=no, scrollbars=yes, resizable=yes, top=500, left=500, width=1300, height=700");
        //}

       
    }

  

 

    </script>


   <div id="divSchoollist">
        <h4 class="donor-sub-heading">
            Select School</h4>
        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane active" id="home">
              
                <div class="row form-group">
                    <label for="ddlStates" class="col-lg-offset-1 col-sm-1 control-label">
                        State</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlStates" runat="server" CssClass="form-control" DataTextField="StateName"
                            DataValueField="StateID" AppendDataBoundItems="true" onchange="PopulateDistrict();">
                        </asp:DropDownList>
                        <asp:Label ID="lblddlStates" runat="server" Text="Please select a State" Style="display: none;
                            color: Red;"></asp:Label>
                    </div>
                    <label for="ddlDistricts" class="col-lg-offset-1 col-sm-1 control-label">
                        District</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlDistricts" runat="server" CssClass="form-control" DataTextField="DistrictName" 
                            DataValueField="DistrictID" onchange="GetCustomers(1);">
                        </asp:DropDownList>
                        <asp:Label ID="lblddlDistricts" runat="server" Text="Please select district" Style="display: none;
                            color: Red;"></asp:Label>
                    </div>
                </div>
                <div class=" row form-group" style="display: none;">
                    <label for="ddllocation" class="col-lg-offset-1 col-sm-1 control-label">
                        Location</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddllocation" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                    <label for="ddlVillages" class="col-lg-offset-1 col-sm-1 control-label">
                        Village</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlVillages" runat="server" CssClass="form-control" Enabled="false">
                        </asp:DropDownList>
                    </div>
                </div>
                
                <span id="lblSchoolError" style="display:none;">Select atleast one School</span>
                
                <asp:GridView ID="gvSchools" runat="server" AutoGenerateColumns="false"   CssClass="table table-bordered school-list"  Style="display: none;">
                    <Columns>
                        <asp:BoundField ItemStyle-Width="440px" DataField="SchoolName" HeaderText="School Name">
                            <ItemStyle Width="440px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField ItemStyle-Width="250px" DataField="Address" HeaderText="Address">
                            <ItemStyle Width="250px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField ItemStyle-Width="50px" DataField="Details" HeaderText="View">
                            <ItemStyle Width="50px"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            
                <div class="Pager">
                </div>

                <div id="diverror" style="display: none;">
                    <b>No Records Found</b>
                </div>
            </div>
            
        </div>
    </div>

 
    
    
    
<%-- 
 <input type="button" value="save" id="testt"  data-dismiss="modal" style="display:none;"/>--%>

  <div class="modal-footer" id="divfooter" style="display:none;">
 <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> 

  <input type="button" class="btn btn-primary" value="save" id="btnsave" onclick="javascript:check();"/>

  </div>
  

  
         <asp:HiddenField ID="hdPkgID" runat="server" Value="1" />
   <input type="hidden" id="hdSchoolID" name="hdSchoolID" value="0"/>   
     <input type="hidden" id="name" name="hdname" value="hell"/>   
     <input type="hidden" id="hdschoolName" name="hdschoolName"/>   
        <input type="hidden" id="hdStateID" name="hdStateID" value="0"/> 
          <input type="hidden" id="hdstatename" name="hdstatename" value="0"/>   
           <input type="hidden" id="hdDistrictID" name="hdDistrictID" value="0"/> 
              <input type="hidden" id="hddistrictName" name="hddistrictName" value="0"/>     
     
  